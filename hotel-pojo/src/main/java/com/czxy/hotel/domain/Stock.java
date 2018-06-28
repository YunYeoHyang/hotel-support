package com.czxy.hotel.domain;


public class Stock {

  private String stockId;
  private double price;
  private String describe;
  private String stockType;
  private String modelId;
  private Integer stockStatus;
  private String infoId;
  private String configureId;


  public String getStockId() {
    return stockId;
  }

  public void setStockId(String stockId) {
    this.stockId = stockId;
  }


  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }


  public String getDescribe() {
    return describe;
  }

  public void setDescribe(String describe) {
    this.describe = describe;
  }


  public String getStockType() {
    return stockType;
  }

  public void setStockType(String stockType) {
    this.stockType = stockType;
  }


  public String getModelId() {
    return modelId;
  }

  public void setModelId(String modelId) {
    this.modelId = modelId;
  }


  public Integer getStockStatus() {
    return stockStatus;
  }

  public void setStockStatus(Integer stockStatus) {
    this.stockStatus = stockStatus;
  }


  public String getInfoId() {
    return infoId;
  }

  public void setInfoId(String infoId) {
    this.infoId = infoId;
  }


  public String getConfigureId() {
    return configureId;
  }

  public void setConfigureId(String configureId) {
    this.configureId = configureId;
  }

}
