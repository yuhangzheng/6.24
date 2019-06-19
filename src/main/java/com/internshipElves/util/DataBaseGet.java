package com.internshipElves.util;

import com.internshipElves.entity.User;
import org.junit.Test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

public class DataBaseGet {

    static String uri = "jdbc:mysql://localhost:3306/job_center?characterEncoding=UTF-8";
    static String root="root";
    static String password="root";

    public static User getUser(HttpServletRequest request, HttpSession session){
        try { Class.forName("com.mysql.jdbc.Driver"); }
        catch(ClassNotFoundException e){}
        Connection con;
        Statement sql;
        ResultSet rs;

        try{
            Integer uid=(Integer) session.getAttribute("userId");
            con = DriverManager.getConnection(uri,root,password);
            sql = con.createStatement();
            String doSql = "SELECT * from user where id = "+uid;
            rs = sql.executeQuery(doSql);
            rs.next();
            int c = rs.getInt(1);
            String name = rs.getString(2);
            String email = rs.getString(4);
            String phone_num = rs.getString(5);
            int credit = rs.getInt(8);
            String avatar = rs.getString(9);
            User user = new User();
            user.setAvatar(avatar);
            user.setCredit(credit);
            user.setEmail(email);
            user.setId(uid);
            user.setPhoneNum(phone_num);
            user.setUsername(name);
            con.close();
            return user;
        }
        catch (Exception e){
            System.out.println("getUser失败");
            return null;
        }


    }
}