package com.czxy.hotel.domain;


import java.util.Date;

public class Schedule {

  private Integer hid;
  private Integer uid;
  private Date scheduleDate;
  private Integer viewStatus;
  private Integer scheduleStatus;


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


  public Date getScheduleDate() {
    return scheduleDate;
  }

  public void setScheduleDate(Date scheduleDate) {
    this.scheduleDate = scheduleDate;
  }


  public Integer getViewStatus() {
    return viewStatus;
  }

  public void setViewStatus(Integer viewStatus) {
    this.viewStatus = viewStatus;
  }


  public Integer getScheduleStatus() {
    return scheduleStatus;
  }

  public void setScheduleStatus(Integer scheduleStatus) {
    this.scheduleStatus = scheduleStatus;
  }

}
