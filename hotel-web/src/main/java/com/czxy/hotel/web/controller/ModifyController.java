package com.czxy.hotel.web.controller;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.czxy.hotel.service.ModifyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class ModifyController {


    //产品名称:云通信短信API产品,开发者无需替换
    static final String product = "Dysmsapi";
    //产品域名,开发者无需替换
    static final String domain = "dysmsapi.aliyuncs.com";

    // TODO 此处需要替换成开发者自己的AK(在阿里云访问控制台寻找)
    static final String accessKeyId = "LTAIZD6S3Md8NnIc";
    static final String accessKeySecret = "XauAPqz1l4omWcpFKd5wSxDqbZppT6";

    @Resource
    private ModifyService modifyService;

    /**
     * 验证手机短信是否发送成功
     *
     * @throws Exception
     */
    @RequestMapping("modify.action")
    public SendSmsResponse sms(HttpServletRequest request) throws Exception {

        /** 手机号码 */
        String uphone = request.getParameter("phone");
        String code = request.getParameter("code");

        //可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        //组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest re = new SendSmsRequest();
        //必填:待发送手机号
        re.setPhoneNumbers(uphone);
        //必填:短信签名-可在短信控制台中找到
        re.setSignName("sunvuan科技");
        //必填:短信模板-可在短信控制台中找到
        re.setTemplateCode("SMS_138074143");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        re.setTemplateParam("{\"code\":code}");

        //选填-上行短信扩展码(无特殊需求用户请忽略此字段)
        //request.setSmsUpExtendCode("90997");

        //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
        re.setOutId("yourOutId");

        //hint 此处可能会抛出异常，注意catch
        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(re);

        return sendSmsResponse;
    }
}
