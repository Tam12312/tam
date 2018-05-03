/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.controller;

import com.poly.bean.Departs;
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

@RequestMapping(value = "departs")
public class DepartsController {

    @Autowired
    private StudentDao dao;

    @RequestMapping()
    public String initiate3(HttpSession session, ModelMap model) {
        model.addAttribute("departins", new Departs());
        model.addAttribute("departsins", dao.getDeparts());
        session.getAttribute("username");
        return "departs";
    }

    @RequestMapping(params = "btnInsertDP", method = RequestMethod.POST)
    public String insertRC(@ModelAttribute("departsins") Departs departsins, HttpSession session, ModelMap model1, HttpServletRequest request) {
        try {
            if (departsins.getId().equals("")) {
                model1.addAttribute("message", "Bạn chưa nhập mã phòng ban !");
                return initiate3(session,model1);
            }
            if (departsins.getName().equals("")) {
                model1.addAttribute("message", "Bạn chưa nhập tên phòng ban !");
                return initiate3(session, model1);
            }
            dao.insertDP(departsins);
             model1.addAttribute("message", "Thêm thành công !");
            return initiate3(session, model1);
        } catch (Exception e) {
            model1.addAttribute("message", "Thất bại !");
            return initiate3(session, model1);
        }
    }
    
    @RequestMapping(params = "lnkDeleteDP")
    public String deleteDP(@ModelAttribute("id") String id, HttpSession session, ModelMap model1) {
        try {
            dao.deleteDP(id);
            return initiate3(session, model1);
        } catch (Exception e) {
            model1.addAttribute("message", "Xảy ra lỗi khi delete");
            return initiate3(session, model1);
        }
    }
}
