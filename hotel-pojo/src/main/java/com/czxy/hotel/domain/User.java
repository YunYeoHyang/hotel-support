package com.czxy.hotel.domain;


public class User {

  private Integer uid;
  private String uname;
  private String upwd;
  private String uimg;
  private String uphone;
  private String umail;
  private String uaddress;
  private String account;
  private Integer integration;


  public Integer getUid() {
    return uid;
  }

  public void setUid(Integer uid) {
    this.uid = uid;
  }


  public String getUname() {
    return uname;
  }

  public void setUname(String uname) {
    this.uname = uname;
  }


  public String getUpwd() {
    return upwd;
  }

  public void setUpwd(String upwd) {
    this.upwd = upwd;
  }


  public String getUimg() {
    return uimg;
  }

  public void setUimg(String uimg) {
    this.uimg = uimg;
  }


  public String getUphone() {
    return uphone;
  }

  public void setUphone(String uphone) {
    this.uphone = uphone;
  }


  public String getUmail() {
    return umail;
  }

  public void setUmail(String umail) {
    this.umail = umail;
  }


  public String getUaddress() {
    return uaddress;
  }

  public void setUaddress(String uaddress) {
    this.uaddress = uaddress;
  }


  public String getAccount() {
    return account;
  }

  public void setAccount(String account) {
    this.account = account;
  }


  public Integer getIntegration() {
    return integration;
  }

  public void setIntegration(Integer integration) {
    this.integration = integration;
  }

  @Override
  public String toString() {
    return "User{" +
            "uid=" + uid +
            ", uname='" + uname + '\'' +
            ", upwd='" + upwd + '\'' +
            ", uimg='" + uimg + '\'' +
            ", uphone='" + uphone + '\'' +
            ", umail='" + umail + '\'' +
            ", uaddress='" + uaddress + '\'' +
            ", account='" + account + '\'' +
            ", integration=" + integration +
            '}';
  }
}
