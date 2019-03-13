package com.example.demo.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    String getName(Integer id);
}
