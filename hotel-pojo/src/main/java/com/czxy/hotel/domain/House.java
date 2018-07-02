package com.czxy.hotel.domain;


import javax.persistence.Table;
import java.util.Date;
public class House {

  private Integer hid;
  private Integer uid;
  private Date startdate;
  private String houseType;
  private String regionName;
  private String apartment;
  private Integer rentIntention;
  private Integer status;
  private Integer isNew;
  private String houseAddress;
  private String houseImg;


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


  public Date getStartdate() {
    return startdate;
  }

  public void setStartdate(Date startdate) {
    this.startdate = startdate;
  }


  public String getHouseType() {
    return houseType;
  }

  public void setHouseType(String houseType) {
    this.houseType = houseType;
  }


  public String getRegionName() {
    return regionName;
  }

  public void setRegionName(String regionName) {
    this.regionName = regionName;
  }


  public String getApartment() {
    return apartment;
  }

  public void setApartment(String apartment) {
    this.apartment = apartment;
  }


  public Integer getRentIntention() {
    return rentIntention;
  }

  public void setRentIntention(Integer rentIntention) {
    this.rentIntention = rentIntention;
  }


  public Integer getStatus() {
    return status;
  }

  public void setStatus(Integer status) {
    this.status = status;
  }


  public Integer getIsNew() {
    return isNew;
  }

  public void setIsNew(Integer isNew) {
    this.isNew = isNew;
  }


  public String getHouseAddress() {
    return houseAddress;
  }

  public void setHouseAddress(String houseAddress) {
    this.houseAddress = houseAddress;
  }


  public String getHouseImg() {
    return houseImg;
  }

  public void setHouseImg(String houseImg) {
    this.houseImg = houseImg;
  }

}
