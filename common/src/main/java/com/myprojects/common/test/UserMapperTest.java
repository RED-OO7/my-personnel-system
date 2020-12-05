package com.myprojects.common.test;


import com.myprojects.common.dao.UserMapper;
import com.myprojects.common.pojo.User;
import com.myprojects.common.pojo.UserExample;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
//@MapperScan(basePackages = "com.myprojects.spring_test.dao")
public class UserMapperTest {

    @Autowired
    SqlSession sqlSession;//该sqlSession用于一次之内获取插入多条数据

    @Autowired
    UserMapper userMapper;

    @Test
    public void selectUserTest(){
        User user= userMapper.selectByPrimaryKey(1);
        System.out.println(user);
    }

    @Test
    public void selectUserListTest(){
        UserExample example = new UserExample();
        example.createCriteria().andIdEqualTo(1);
        List<User> userList= userMapper.selectByExample(null);
        for (User user : userList){
            System.out.println(user);
        }
    }

    @Test
    public void insertUserTest(){
        User user= new User();
        user.setUsername("test111");
        user.setNickname("测试员1");
        user.setPassword("111111");
        user.setEmail("test1@163.com");
        userMapper.insertSelective(user);
        System.out.println("插入["+User.class+"]对象操作运行完成，具体结果请查看数据库");
    }

//    @Test
//    public void insertLotsOfUserTest(){
//        List<User> userList = new ArrayList<>();
//
//        for (int i = 0; i < 10000; i++) {
//            User user= new User();
//            user.setUsername("test100"+(i+1));
//            user.setPassword(""+(i+1));
//            user.setEmail("test100"+(i+1)+"@163.com");
//
//            userList.add(user);
//        }
//
//        long beginTime = System.currentTimeMillis();
//        UserMapper newUserMapper = sqlSession.getMapper(UserMapper.class);
//        int num = userList.size();
////        for (int i = 0; i < num; i++) {
//////            int iResult = newUserMapper.insertSelective(userList.get(i));
////            int iResult = userMapper.insertSelective(userList.get(i));
////        }
//
//        userMapper.insertList(userList);
//
//        System.out.println("插入["+User.class+"]对象操作运行完成，返回结果未知");
//        long endTime = System.currentTimeMillis();
//        long persistTime = endTime - beginTime;
//        System.out.println("共花费时间:"+persistTime+"ms");
//    }

    @Test
    public void createLotsOfUserTest(){
        List<User> userList = new ArrayList<>();

        for (int i = 0; i < 1000; i++) {
            User user= new User();
            user.setUsername("test100"+(i+1));
            user.setPassword(""+(i+1));
            user.setEmail("test100"+(i+1)+"@163.com");

            userList.add(user);
        }

        long beginTime = System.currentTimeMillis();
        UserMapper newUserMapper = sqlSession.getMapper(UserMapper.class);
        int num = userList.size();
        for (int i = 0; i < num; i++) {
//            int iResult = newUserMapper.insertSelective(userList.get(i));
            User user = userList.get(i);
        }
        System.out.println("创建["+User.class+"]对象操作运行完成");
        long endTime = System.currentTimeMillis();
        long persistTime = endTime - beginTime;
        System.out.println("共花费时间:"+persistTime+"ms");
    }


    @Test
    public void deleteUserTest(){
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUsernameLike("test100%");//设置要被删除的用户的username的限定条件
        int i = userMapper.deleteByExample(userExample);//返回的是成功执行删除的条数

        System.out.println("删除["+User.class+"]对象操作运行完成，具体结果删除返回结果："+i);
    }

    @Test
    public void updateUserTest(){
        User user = new User();
        user.setPassword("change");

        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUsernameLike("test1");//设置要被更新的用户的username的限定条件
        int i = userMapper.updateByExampleSelective(user,userExample);//返回的是成功执行更新的条数

        System.out.println("更新["+User.class+"]对象操作运行完成，具体结果删除返回结果："+i);
    }
}
