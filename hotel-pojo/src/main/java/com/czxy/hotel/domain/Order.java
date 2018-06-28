package com.czxy.hotel.domain;


import java.util.Date;

public class Order {

  private Integer oid;
  private Integer hid;
  private Integer uid;
  private Date viewdate;
  private Integer ostatue;
  private double ototal;
  private double odiscount;
  private Integer integral;


  public Integer getOid() {
    return oid;
  }

  public void setOid(Integer oid) {
    this.oid = oid;
  }


  public Integer getHid() {
    return hid;
  }

  public void setHid(Integer hid) {
    this.hid = hid;
  }


  public Integer getUid() {
    return uid;
  }

  public void setUid(Integer uid) {
    this.uid = uid;
  }


  public Date getViewdate() {
    return viewdate;
  }

  public void setViewdate(Date viewdate) {
    this.viewdate = viewdate;
  }


  public Integer getOstatue() {
    return ostatue;
  }

  public void setOstatue(Integer ostatue) {
    this.ostatue = ostatue;
  }


  public double getOtotal() {
    return ototal;
  }

  public void setOtotal(double ototal) {
    this.ototal = ototal;
  }


  public double getOdiscount() {
    return odiscount;
  }

  public void setOdiscount(double odiscount) {
    this.odiscount = odiscount;
  }


  public Integer getIntegral() {
    return integral;
  }

  public void setIntegral(Integer integral) {
    this.integral = integral;
  }

}
