package com.internshipElves.util;

import com.internshipElves.entity.Resume;
import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

public class DataBaseUtil {

    static String uri = "jdbc:mysql://localhost:3306/internship_elves?characterEncoding=UTF-8";
    static String root="uroot";
    static String password="123456";

    public DataBaseUtil(){
        try { Class.forName("com.mysql.jdbc.Driver"); }
        catch(ClassNotFoundException e){}

    }

    public static int getMaxId(){

        Connection con;
        Statement sql;
        ResultSet rs;
        try{
            con = DriverManager.getConnection(uri,root,password);
            sql = con.createStatement();
            String doSql = "SELECT max(com_id) FROM company";
            rs = sql.executeQuery(doSql);
            rs.next();
            int c = rs.getInt(1);
            doSql = "SELECT max(stu_id) FROM student";
            rs = sql.executeQuery(doSql);
            rs.next();
            int s = rs.getInt(1);
            int max = Math.max(c, s);
            con.close();
            return max;
        }
        catch (Exception e){
            System.out.println("getMax失败");
            return -1;
        }
    }

    public static int getCurrentProExpId(){
        Connection con;
        Statement sql;
        ResultSet rs;
        try{
            con = DriverManager.getConnection(uri,root,password);
            sql = con.createStatement();
            String doSql = "SELECT max(pro_exp_id) FROM pro_exp";
            rs = sql.executeQuery(doSql);
            rs.next();
            int p = rs.getInt(1);
            con.close();
            return p;
        }
        catch(Exception e){
            System.out.println("getCurrentProExpId失败");
            return -1;
        }
    }

}
