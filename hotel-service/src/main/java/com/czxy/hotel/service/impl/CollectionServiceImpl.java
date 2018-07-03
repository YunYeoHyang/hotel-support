package com.czxy.hotel.service.impl;

import com.czxy.hotel.dao.CollectionMapper;
import com.czxy.hotel.domain.Collection;
import com.czxy.hotel.service.CollectionService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


@Service
@Transactional
public class CollectionServiceImpl implements CollectionService {


    @Resource
    private CollectionMapper collectionMapper;

    @Override
    public List<Collection> findAll(Collection collection) {
        return collectionMapper.findAll(collection);
    }
}
