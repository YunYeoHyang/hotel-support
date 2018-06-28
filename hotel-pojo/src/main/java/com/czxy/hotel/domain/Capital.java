package com.czxy.hotel.domain;

import javax.persistence.Id;

public class Capital {

  @Id
  private String capitalId;
  private String userId;
  private double remainder;
  private Integer integral;
  private String couponId;


  public String getCapitalId() {
    return capitalId;
  }

  public void setCapitalId(String capitalId) {
    this.capitalId = capitalId;
  }


  public String getUserId() {
    return userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }


  public double getRemainder() {
    return remainder;
  }

  public void setRemainder(double remainder) {
    this.remainder = remainder;
  }


  public Integer getIntegral() {
    return integral;
  }

  public void setIntegral(Integer integral) {
    this.integral = integral;
  }


  public String getCouponId() {
    return couponId;
  }

  public void setCouponId(String couponId) {
    this.couponId = couponId;
  }

}
