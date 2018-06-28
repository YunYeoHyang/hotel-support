package com.czxy.hotel.domain;


import java.util.Date;

public class Team {

  private Integer joinId;
  private Integer hid;
  private Date joinDate;
  private Integer consumptionStatus;


  public Integer getJoinId() {
    return joinId;
  }

  public void setJoinId(Integer joinId) {
    this.joinId = joinId;
  }


  public Integer getHid() {
    return hid;
  }

  public void setHid(Integer hid) {
    this.hid = hid;
  }


  public Date getJoinDate() {
    return joinDate;
  }

  public void setJoinDate(Date joinDate) {
    this.joinDate = joinDate;
  }


  public Integer getConsumptionStatus() {
    return consumptionStatus;
  }

  public void setConsumptionStatus(Integer consumptionStatus) {
    this.consumptionStatus = consumptionStatus;
  }

}
