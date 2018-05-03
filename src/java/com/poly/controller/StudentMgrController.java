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

@RequestMapping(value = "student-mgr")
public class StudentMgrController {

    @Autowired
    private StudentDao dao;

    @RequestMapping()
    public String initiate(HttpSession session, ModelMap model) {
        model.addAttribute("staff", new Staffs());
        model.addAttribute("staffs", dao.getAll());
        model.addAttribute("departsins", dao.getDeparts());
        session.getAttribute("username");
        return "student-mgr";
    }

    @RequestMapping(params = "btnUpdate", method = RequestMethod.POST)
    public String update(@ModelAttribute("staff") Staffs staff,HttpSession session, ModelMap model) {
        try {
            if (staff.getId().equals("")) {
                model.addAttribute("message", "Bạn chưa chọn nhân viên để cập nhật thông tin !");
                return initiate(session, model);
            }
            dao.update(staff);
            model.addAttribute("message", "Thành công");
            model.addAttribute("staffs", dao.getAll());
            model.addAttribute("departsins", dao.getDeparts());
            return "student-mgr";
        } catch (Exception e) {
            model.addAttribute("message", "Xảy ra lỗi khi update");
            return initiate(session, model);
        }
    }

    @RequestMapping(params = "lnkDelete")
    public String delete(@ModelAttribute("id") Integer id,HttpSession session, ModelMap model) {
        try {
            dao.delete(id);
            model.addAttribute("message", "Xóa thành công");
            return initiate(session, model);
        } catch (Exception e) {
            model.addAttribute("message", "Xảy ra lỗi khi delete");
            return initiate(session, model);
        }
    }

    @RequestMapping(params = "lnkEdit", method = RequestMethod.GET)
    public String edit(@ModelAttribute("id") Integer id,HttpSession session, ModelMap model) {
        try {
            Staffs staff = dao.getID(id);
            model.addAttribute("staff", staff);
            model.addAttribute("staffs", dao.getAll());
            model.addAttribute("departsins", dao.getDeparts());
            return "student-mgr";
        } catch (Exception e) {
            model.addAttribute("message", "Xảy ra lỗi khi edit");
            return initiate(session, model);
        }
    }
}
