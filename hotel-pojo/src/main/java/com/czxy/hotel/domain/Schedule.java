package com.czxy.hotel.domain;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Schedule {

  private Integer hid;
  private House house;
  private Integer uid;
  private User user;
  @DateTimeFormat(pattern ="yyyy-MM-dd")
  @JsonFormat(pattern = "yyyy-MM-dd")
  private Date scheduleDate;
  private Integer viewStatus;
  private Integer scheduleStatus;

  public Schedule() {
  }

  public Schedule(Integer hid, House house, Integer uid, User user, Date scheduleDate, Integer viewStatus, Integer scheduleStatus) {
    this.hid = hid;
    this.house = house;
    this.uid = uid;
    this.user = user;
    this.scheduleDate = scheduleDate;
    this.viewStatus = viewStatus;
    this.scheduleStatus = scheduleStatus;
  }

  @Override
  public String toString() {
    return "Schedule{" +
            "hid=" + hid +
            ", house=" + house +
            ", uid=" + uid +
            ", user=" + user +
            ", scheduleDate=" + scheduleDate +
            ", viewStatus=" + viewStatus +
            ", scheduleStatus=" + scheduleStatus +
            '}';
  }

  public House getHouse() {
    return house;
  }

  public Schedule setHouse(House house) {
    this.house = house;
    return this;
  }

  public User getUser() {
    return user;
  }

  public Schedule setUser(User user) {
    this.user = user;
    return this;
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
