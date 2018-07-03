package com.czxy.hotel.domain;


import java.util.Date;

public class Collection {

  private Integer uid;
  private Integer hid;
  private Date collectDate;
  private House house;


  public Integer getUid() {
    return uid;
  }

  public void setUid(Integer uid) {
    this.uid = uid;
  }


  public Integer getHid() {
    return hid;
  }

  public void setHid(Integer hid) {
    this.hid = hid;
  }


  public Date getCollectDate() {
    return collectDate;
  }

  public void setCollectDate(Date collectDate) {
    this.collectDate = collectDate;
  }


  public void setHouse(House house) {
    this.house = house;
  }

  public House getHouse() {
    return house;
  }
}
