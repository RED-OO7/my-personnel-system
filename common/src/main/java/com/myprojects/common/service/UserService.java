package com.myprojects.common.service;

import com.myprojects.common.dao.UserMapper;
import com.myprojects.common.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    UserMapper userMapper;

    /**
     * 该方法会获取到所有的User数据
     * @return List<User>类的User对象队列
     */
    public List<User> getAllUser(){
        return userMapper.selectByExample(null);//查询样例为null可查询出全部User
    }

}
