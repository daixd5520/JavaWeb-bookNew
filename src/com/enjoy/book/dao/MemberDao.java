package com.enjoy.book.dao;

import com.enjoy.book.bean.Member;
import com.enjoy.book.util.DBHelper;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class MemberDao {
    QueryRunner runner = new QueryRunner();

    /**
     * 添加会员
     * @param name
     * @param pwd
     * @param typeId
     * @param balance
     * @param tel
     * @param idNumber
     * @return
     * @throws SQLException
     */
    public int add(String name,String pwd,long typeId,double balance,String tel,String idNumber) throws SQLException {
        Connection conn = DBHelper.getConnection();
        String sql="insert into member(`name`,pwd,typeId,balance,regdate,tel,idNumber) " +
                " values(?,?,?,?,CURRENT_DATE,?,?)";
        int count = runner.update(conn,sql,name,pwd,typeId,balance,tel,idNumber);
        DBHelper.close(conn);
        return count;
    }
    public int modify(long id,String name,String pwd,long typeId,double balance,String tel,String idNumber) throws SQLException {
        Connection conn = DBHelper.getConnection();
        String sql="update member set `name` = ?, pwd=?,typeId=?,balance = ?,tel=?,idNumber = ? " +
                "where id=?";
        int count = runner.update(conn,sql,name,pwd,typeId,balance,tel,idNumber,id);
        DBHelper.close(conn);
        return count;
    }
    public int remove(long id) throws SQLException {
        Connection conn = DBHelper.getConnection();
        String sql="delete from member where id=?";
        int count = runner.update(conn,sql,id);
        DBHelper.close(conn);
        return count;
    }

    /**
     * 会员的身份证号码
     * @param idNumber
     * @param amount
     * @return
     * @throws SQLException
     */
    public int modifyBalance(String idNumber,double amount) throws SQLException {
        Connection conn = DBHelper.getConnection();
        String sql="update member set balance = balance + ? where idNumber = ?";
        int count = runner.update(conn,sql,amount,idNumber);
        DBHelper.close(conn);
        return count;
    }

    public Member getMember(String name2, String pwd2) throws SQLException {

        // 1.调用DBHelper获取连接对象
        Connection  conn2 = DBHelper.getConnection();
        // 2.准备执行的sql语句
        String sql2="select * from member where name=? and pwd=? ";
        // 3.调用查询方法,将查询的数据封装成Member
        Member member = runner.query(conn2,sql2,new BeanHandler<Member>(Member.class),name2,pwd2);

        // 4.关闭连接对象
        DBHelper.close(conn2);

        // 5.返回user
        return member;
    }
    /**
     * 修改押金
     * @param id
     * @param amount >0: 归还+   <0:借书-押金
     * @return
     * @throws SQLException
     */
    public int modifyBalance(long id,double amount) throws SQLException {
        Connection conn = DBHelper.getConnection();
        String sql="update member set balance = balance + ? where id = ?";
        int count = runner.update(conn,sql,amount,id);
        DBHelper.close(conn);
        return count;
    }

    public List<Member> getAll() throws SQLException {
        Connection conn = DBHelper.getConnection();
        String sql="select id,`name`,pwd,typeId,balance,regdate,tel,idNumber from  member";
        List<Member> members = runner.query(conn,sql,new BeanListHandler<Member>(Member.class));
        DBHelper.close(conn);
        return  members;
    }

    /**
     * 根据会员编号查会员信息
     * @param id
     * @return
     * @throws SQLException
     */
    public Member getById(long id) throws SQLException {
        Connection conn = DBHelper.getConnection();
        String sql="select id,`name`,pwd,typeId,balance,regdate,tel,idNumber from  member where id=?";
        Member member = runner.query(conn,sql,new BeanHandler<Member>(Member.class),id);
        DBHelper.close(conn);
        return  member;
    }

    /**
     * 根据会员身份证查会员信息
     * @paramidNumber
     * @return
     * @throws SQLException
     */
    public Member getByIdNumber(String idNumber) throws SQLException {
        Connection conn = DBHelper.getConnection();
        String sql="select id,`name`,pwd,typeId,balance,regdate,tel,idNumber from  member where idNumber=?";
        Member member = runner.query(conn,sql,new BeanHandler<Member>(Member.class),idNumber);
        DBHelper.close(conn);
        return  member;
    }


    /**
     * 判断会员编号是否存在Record中(作为外键 ）
     * @param id
     * @return
     */
    public boolean exits(long id) throws SQLException {
        Connection conn = DBHelper.getConnection();
        String sql="select count(id) from record where memberId = ?";
        Number number= runner.query(conn,sql,new ScalarHandler<>(),id);
        DBHelper.close(conn);
        return number.intValue()>0?true:false;
    }

    public static void main(String[] args) {
//        MemberDao dao  = new MemberDao();
        Member memberDao = null;

        try {
            memberDao = new MemberDao().getMember("super","123");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        System.out.println(memberDao);
    }

}
