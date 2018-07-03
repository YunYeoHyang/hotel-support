package com.czxy.hotel.domain;


import java.util.Date;

public class Contract {

  private Integer uid;
  private Integer hid;
  private Integer contractId;
  private Date contractStartdate;
  private Date contractEnddate;
  private double deposit;
  private double monthlyRent;
  private double payment;
  private double otherfee;
  private double platformCommission;
  private double rental;


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


  public Integer getContractId() {
    return contractId;
  }

  public void setContractId(Integer contractId) {
    this.contractId = contractId;
  }


  public Date getContractStartdate() {
    return contractStartdate;
  }

  public void setContractStartdate(Date contractStartdate) {
    this.contractStartdate = contractStartdate;
  }


  public Date getContractEnddate() {
    return contractEnddate;
  }

  public void setContractEnddate(Date contractEnddate) {
    this.contractEnddate = contractEnddate;
  }


  public double getDeposit() {
    return deposit;
  }

  public void setDeposit(double deposit) {
    this.deposit = deposit;
  }


  public double getMonthlyRent() {
    return monthlyRent;
  }

  public void setMonthlyRent(double monthlyRent) {
    this.monthlyRent = monthlyRent;
  }


  public double getPayment() {
    return payment;
  }

  public void setPayment(double payment) {
    this.payment = payment;
  }


  public double getOtherfee() {
    return otherfee;
  }

  public void setOtherfee(double otherfee) {
    this.otherfee = otherfee;
  }


  public double getPlatformCommission() {
    return platformCommission;
  }

  public void setPlatformCommission(double platformCommission) {
    this.platformCommission = platformCommission;
  }


  public double getRental() {
    return rental;
  }

  public void setRental(double rental) {
    this.rental = rental;
  }

}
