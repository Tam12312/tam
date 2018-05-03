/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.dao;

import com.poly.bean.Customer;
import com.poly.bean.Departs;
import com.poly.bean.Records;
import com.poly.bean.Staffs;
import com.poly.bean.TTT;
import com.poly.bean.tongnhanvien;
import java.io.Serializable;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author phong
 */
@Repository
public class CustomerDAO {

    /**
     * Inject từ <bean class="...JdbcTemplate>
     */
    @Autowired
    protected JdbcTemplate jdbc;

    /**
     * Truy vấn 1 thực thể theo mã
     *
     * @param id mã thực thể cần truy vấn
     * @return thực thể truy vấn được
     */
    public Customer getById(Serializable id) {
        String sql = "SELECT * FROM Users WHERE Username=?";
        return jdbc.queryForObject(sql, getRowMapper(), id);
    }

    /**
     * Truy vấn tất cả các thực thể
     *
     * @return danh sách thực thể truy vấn được
     */
    public List<Customer> getAll() {
        String sql = "SELECT * FROM Users";
        return getBySql(sql);
    }

    public List<Staffs> getSL() {
        String sql = "SELECT COUNT(id) from Staffs";
        return getBySQL1(sql);
    }
    
    public List<Staffs> getTT() {
        String sql = "select top 5 * from Staffs";
        return getBySQL1(sql);
    }
    
    public List<Staffs> getAllindex() {
        String sql = "SELECT * FROM Staffs";
        return getBySQL1(sql);
    }

    public List<Staffs> getBoss() {
        String sql = "select * from Staffs where departId like N'1'";
        return getBySQL1(sql);
    }

    public List<Staffs> getPhoto() {
        String sql = "select photo,name from Staffs where capdo like N'%Chủ tịch'";
        return getBySQL1(sql);
    }

    public List<TTT> getTOP() {
        String sql = "select top 9 diemtongket, maso, name, photo from Thanhtich, Staffs where Thanhtich.maso = Staffs.id order by diemtongket desc";
        return getBySQLTOP(sql);
    }
    
    public List<tongnhanvien> getTNV() {
        String sql = "select * from tongnhanvien";
        return getBySQLTNV(sql);
    }
    
    public List<tongnhanvien> getTPB() {
        String sql = "select * from tongsopb";
        return getBySQLTNV(sql);
    }
    
    public List<tongnhanvien> getTKT() {
        String sql = "select * from tongkhenthuong";
        return getBySQLTNV(sql);
    }
    
    public List<Departs> getAlldeparts() {
        String sql = "SELECT * FROM Departs";
        return getBySQL5(sql);
    }
    
    public List<Customer> getPass() {
        String sql = "select * from Users";
        return getBySQL6(sql);
    }
    
    public void change(Customer customer) {
        String sql = "update Users set Password=? where Username=?";
        jdbc.update(sql, customer.getPassword(), customer.getUsername());
    }
    /**
     * Truy vấn các thực thể theo câu lệnh sql
     *
     * @param sql câu lệnh truy vấn
     * @return danh sách thực thể truy vấn được
     */
    protected List<Customer> getBySql(String sql) {
        return jdbc.query(sql, getRowMapper());
    }

    protected List<Staffs> getBySQL1(String sql) {
        return jdbc.query(sql, getRowMapperindex());
    }

    protected List<Records> getBySQL2(String sql) {
        return jdbc.query(sql, getRowMapperrecords());
    }

    protected List<Departs> getBySQL5(String sql) {
        return jdbc.query(sql, getRowMapperalldeparts());
    }
    
    protected List<Customer> getBySQL6(String sql) {
        return jdbc.query(sql, getRowMapperUS());
    }
    
    protected List<TTT> getBySQLTOP(String sql) {
        return jdbc.query(sql, getRowMapperTOP());
    }
    
    protected List<tongnhanvien> getBySQLTNV(String sql) {
        return jdbc.query(sql, getRowMapperTNV());
    }
    /**
     * Ánh xạ cấu trúc bản ghi theo thuộc tính của bean
     *
     * @return ánh xạ bản ghi theo thuộc tính bean
     */
    private RowMapper<Customer> getRowMapper() {
        return new BeanPropertyRowMapper<Customer>(Customer.class);
    }

    private RowMapper<Staffs> getRowMapperindex() {
        return new BeanPropertyRowMapper<Staffs>(Staffs.class);
    }

    private RowMapper<Records> getRowMapperrecords() {
        return new BeanPropertyRowMapper<Records>(Records.class);
    }

    private RowMapper<Departs> getRowMapperalldeparts() {
        return new BeanPropertyRowMapper<Departs>(Departs.class);
    }
    
    private RowMapper<Customer> getRowMapperUS() {
        return new BeanPropertyRowMapper<Customer>(Customer.class);
    }
    
    private RowMapper<TTT> getRowMapperTOP() {
        return new BeanPropertyRowMapper<TTT>(TTT.class);
    }
    
    private RowMapper<tongnhanvien> getRowMapperTNV() {
        return new BeanPropertyRowMapper<tongnhanvien>(tongnhanvien.class);
    }
}
