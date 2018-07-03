package com.czxy.hotel.domain;

public class HouseInfo {
   /* `info_id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '房屋id',
            `orientation` INT(11) DEFAULT NULL COMMENT '房间朝向',
            `level` VARCHAR(32) DEFAULT NULL COMMENT '楼层',
            `square` VARCHAR(32) DEFAULT NULL COMMENT '平米',
            `house_type` VARCHAR(32) DEFAULT NULL COMMENT '房屋类型',
            `actuality` INT(11) DEFAULT NULL COMMENT '现状',
            `house_time` DATETIME DEFAULT NULL COMMENT '建造年代',
            `fitment` INT(11) DEFAULT NULL COMMENT '装修类型',
            `check_time` DATETIME DEFAULT NULL COMMENT '可入住时间',
            `see_time` DATETIME DEFAULT NULL COMMENT '可看房时间',
            `traffic*/
    private Integer infoId;
    private String orientation;
    private String level;
    private String houseType;
    private String actuality;
    private String houseTime;
    private String fitment;
    private String checkTime;
    private String seeTime;
    private String traffic;
    private Integer hid;

    public HouseInfo() {
    }

    public Integer getInfoId() {
        return infoId;
    }

    public void setInfoId(Integer infoId) {
        this.infoId = infoId;
    }

    public String getOrientation() {
        return orientation;
    }

    public void setOrientation(String orientation) {
        this.orientation = orientation;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getHouseType() {
        return houseType;
    }

    public void setHouseType(String houseType) {
        this.houseType = houseType;
    }

    public String getActuality() {
        return actuality;
    }

    public void setActuality(String actuality) {
        this.actuality = actuality;
    }

    public String getHouseTime() {
        return houseTime;
    }

    public void setHouseTime(String houseTime) {
        this.houseTime = houseTime;
    }

    public String getFitment() {
        return fitment;
    }

    public void setFitment(String fitment) {
        this.fitment = fitment;
    }

    public String getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(String checkTime) {
        this.checkTime = checkTime;
    }

    public String getSeeTime() {
        return seeTime;
    }

    public void setSeeTime(String seeTime) {
        this.seeTime = seeTime;
    }

    public String getTraffic() {
        return traffic;
    }

    public void setTraffic(String traffic) {
        this.traffic = traffic;
    }

    public void setHid(Integer hid) {
        this.hid = hid;
    }

    public Integer getHid() {
        return hid;
    }
}
