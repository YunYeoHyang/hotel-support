package com.czxy.hotel.domain;


public class User {
  private String userId;
  private String userName;
  private String password;
  private String nickname;
  private String orderId;
  private Orders orders;
  private Integer userStatus;
  private String collectId;
  private String stockId;
  private String capitalId;
  private String contractId;
  private String entrustId;

  public String getUserId() {
    return userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }


  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }


  public String getOrderId() {
    return orderId;
  }

  public void setOrderId(String orderId) {
    this.orderId = orderId;
  }


  public Integer getUserStatus() {
    return userStatus;
  }

  public void setUserStatus(Integer userStatus) {
    this.userStatus = userStatus;
  }


  public String getCollectId() {
    return collectId;
  }

  public void setCollectId(String collectId) {
    this.collectId = collectId;
  }


  public String getStockId() {
    return stockId;
  }

  public void setStockId(String stockId) {
    this.stockId = stockId;
  }


  public String getCapitalId() {
    return capitalId;
  }

  public void setCapitalId(String capitalId) {
    this.capitalId = capitalId;
  }


  public String getContractId() {
    return contractId;
  }

  public void setContractId(String contractId) {
    this.contractId = contractId;
  }


  public String getEntrustId() {
    return entrustId;
  }

  public void setEntrustId(String entrustId) {
    this.entrustId = entrustId;
  }

}
