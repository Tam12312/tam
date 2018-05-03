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
import com.poly.bean.TTdepart;
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
public class StudentDao {

    @Autowired
    protected JdbcTemplate jdbc;

    public void insert(Staffs staffs) {
        String sql = "insert into Staffs(name,gender,birthday,photo,email,phone,salary,notes,departId,capdo) values(?,?,?,?,?,?,?,?,?,?)";
        jdbc.update(sql, staffs.getName(), staffs.getGender(), staffs.getBirthday(), staffs.getPhoto(), staffs.getEmail(), staffs.getPhone(), staffs.getSalary(), staffs.getNotes(), staffs.getDepartId(), staffs.getCapdo());
    }

    public void insertRC(Records records) {
        String sql = "insert into Records(type,reason,date,staffId) values(?,?,?,?)";
        jdbc.update(sql, records.getType(), records.getReason(), records.getDate(), records.getStaffId());
    }

    public void insertDP(Departs departs) {
        String sql = "insert into Departs(id, name) values(?,?)";
        jdbc.update(sql, departs.getId(), departs.getName());
    }

    public void update(Staffs staffs) {
        String sql = "update Staffs set name=?,gender=?,birthday=?,photo=?,email=?,phone=?,salary=?,notes=?,departId=?,capdo=? where id=?";
        jdbc.update(sql, staffs.getName(), staffs.getGender(), staffs.getBirthday(), staffs.getPhoto(), staffs.getEmail(), staffs.getPhone(), staffs.getSalary(), staffs.getNotes(), staffs.getDepartId(), staffs.getCapdo(), staffs.getId());
    }
    
    
    
    public void updateDP(Departs departs) {
        String sql = "update Departs set name=? where id=?";
        jdbc.update(sql, departs.getName(), departs.getId());
    }

    public void delete(Serializable id) {
        String sql = "delete from Records where staffId=" + "'" + id + "'" + "delete from Staffs where id=" + "'" + id + "'";
        jdbc.update(sql);
    }

    public void deleteDP(Serializable id) {
        String sql = "delete from Departs where id=" + "'" + id + "'" + "delete from Records where staffId=" + "'" + id + "'";
        jdbc.update(sql, id);
    }

    public Staffs getID(Serializable id) {
        String sql = "select * from Staffs where id=?";
        return jdbc.queryForObject(sql, getRowMapper(), id);
    }

    public Records getIDRC(Serializable id) {
        String sql = "select * from Staffs where id=?";
        return jdbc.queryForObject(sql, getRowMapperRC(), id);
    }

    public Departs getIDDP(Serializable id) {
        String sql = "select * from Departs where id=?";
        return jdbc.queryForObject(sql, getRowMapperDP(), id);
    }
    
    
    ////////////////////////////
    private RowMapper<Staffs> getRowMapper() {
        return new BeanPropertyRowMapper<Staffs>(Staffs.class);
    }

    private RowMapper<Records> getRowMapperRC() {
        return new BeanPropertyRowMapper<Records>(Records.class);
    }

    private RowMapper<Departs> getRowMapperDP() {
        return new BeanPropertyRowMapper<Departs>(Departs.class);
    }
    
    private RowMapper<TTT> getRowMapperTTT() {
        return new BeanPropertyRowMapper<TTT>(TTT.class);
    }
    
    private RowMapper<TTdepart> getRowMapperTTdepart() {
        return new BeanPropertyRowMapper<TTdepart>(TTdepart.class);
    }
    //////////////////////////

    protected List<Staffs> getBySQL(String sql) {
        return jdbc.query(sql, getRowMapper());
    }

    protected List<Records> getBySQL4(String sql) {
        return jdbc.query(sql, getRowMapperRC());
    }
    
    protected List<TTT> getBySQL10(String sql) {
        return jdbc.query(sql, getRowMapperTTT());
    }

    protected List<Departs> getBySQL3(String sql) {
        return jdbc.query(sql, getRowMapperDP());
    }
    
    protected List<TTdepart> getBySQL13(String sql) {
        return jdbc.query(sql, getRowMapperTTdepart());
    }
    ///////////////////////////

    public List<Staffs> getAll() {
        String sql = "select * from Staffs";
        return getBySQL(sql);
    }
    

    public List<Records> getRecords() {
        String sql = "select * from Records";
        return getBySQL4(sql);
    }

    public List<Departs> getDeparts() {
        String sql = "select * from Departs";
        return getBySQL3(sql);
    }
    
    public List<TTT> getTTT() {
        String sql = "Select maso,  name, photo, thanhtich, kyluat, diemtongket from Thanhtich, Staffs where Thanhtich.maso = Staffs.id";
        return getBySQL10(sql);
    }
    
    public List<TTdepart> getTTdepart() {
        String sql = "select ThanhTichCaNhan.departId,Departs.name, sum(TongThanhTich) AS tongthanhtich,sum(TongKyLuat) AS tongkyluat, sum(TongThanhTich - TongKyLuat) AS tongket from ThanhTichCaNhan,Departs where ThanhTichCaNhan.departId = Departs.id group by ThanhTichCaNhan.departId,Departs.name";
        return getBySQL13(sql);
    }
}
