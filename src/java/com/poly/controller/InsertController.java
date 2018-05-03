/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.controller;

import com.poly.bean.Staffs;
import com.poly.dao.StudentDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author phong
 */
@Controller

@RequestMapping(value = "insertpage")
public class InsertController {

    @Autowired
    private StudentDao dao;

    @RequestMapping()
    public String initiate2(HttpSession session, ModelMap model) {
        model.addAttribute("staffins", new Staffs());
        model.addAttribute("staffsins", dao.getAll());
        model.addAttribute("departsins", dao.getDeparts());
        session.getAttribute("username");
        return "insertpage";
    }

    @RequestMapping(params = "btnInsert", method = RequestMethod.POST)
    public String insert(@ModelAttribute("staffsins") Staffs staffsins, HttpSession session, ModelMap model1, HttpServletRequest request) {
        try {
            if (staffsins.getName().equals("")) {
                model1.addAttribute("message", "Bạn chưa nhập tên");
                return initiate2(session, model1);
            }
            if (staffsins.getGender() == null) {
                model1.addAttribute("message", "Bạn chưa nhập giới tính");
                return initiate2(session, model1);
            }
            if (staffsins.getBirthday().equals("")) {
                model1.addAttribute("message", "Bạn chưa nhập ngày sinh");
                return initiate2(session, model1);
            }
            dao.insert(staffsins);
            model1.addAttribute("message", "Thêm thành công");
            model1.addAttribute("departsins", dao.getDeparts());
            return initiate2(session, model1);
        } catch (Exception e) {
            model1.addAttribute("message", "Thất bại");
            return initiate2(session, model1);
        }
    }
}
