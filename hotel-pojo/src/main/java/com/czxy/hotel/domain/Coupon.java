package com.czxy.hotel.domain;


import java.util.Date;

public class Coupon {

  private Integer cid;
  private Integer couponValue;
  private Date couponStartdate;
  private Date couponEnddata;
  private Integer uid;
  private Integer couponCondition;
  private Integer couponStatus;


  public Integer getCid() {
    return cid;
  }

  public void setCid(Integer cid) {
    this.cid = cid;
  }


  public Integer getCouponValue() {
    return couponValue;
  }

  public void setCouponValue(Integer couponValue) {
    this.couponValue = couponValue;
  }


  public Date getCouponStartdate() {
    return couponStartdate;
  }

  public void setCouponStartdate(Date couponStartdate) {
    this.couponStartdate = couponStartdate;
  }


  public Date getCouponEnddata() {
    return couponEnddata;
  }

  public void setCouponEnddata(Date couponEnddata) {
    this.couponEnddata = couponEnddata;
  }


  public Integer getUid() {
    return uid;
  }

  public void setUid(Integer uid) {
    this.uid = uid;
  }


  public Integer getCouponCondition() {
    return couponCondition;
  }

  public void setCouponCondition(Integer couponCondition) {
    this.couponCondition = couponCondition;
  }


  public Integer getCouponStatus() {
    return couponStatus;
  }

  public void setCouponStatus(Integer couponStatus) {
    this.couponStatus = couponStatus;
  }

}
