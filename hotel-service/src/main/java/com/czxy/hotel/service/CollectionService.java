package com.czxy.hotel.service;

import com.czxy.hotel.domain.Collection;

import java.util.List;

public interface CollectionService {
    List<Collection> findAll(Collection collection);
}
