/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.controller;

import com.poly.bean.Customer;
import com.poly.bean.Departs;
import com.poly.bean.Staffs;
import com.poly.dao.CustomerDAO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import sun.security.util.Password;

/**
 *
 * @author phong
 */
@Controller
@RequestMapping("changepass")
public class ChangeController {

    @Autowired
    private CustomerDAO dao;

    @RequestMapping()
    public String initiate4(HttpSession session, ModelMap model) {
        session.getAttribute("username");
        model.addAttribute("userr", new Customer());
        model.addAttribute("userss", dao.getPass());
        return "changepass";
    }

    @RequestMapping(params = "btnUpdatepass", method = RequestMethod.POST)
    public String updateDP(@ModelAttribute("userr") Customer id, HttpSession session, ModelMap model) {
        try {
            Customer custt = dao.getById(id.getUsername());
            if (custt.getPassword().equals(id.getPassword())) {
                model.addAttribute("message", "Mật khẩu đã sử dụng !");
                return initiate4(session, model);
            } else {
                dao.change(id);
                model.addAttribute("message", "Đã đổi thành công !");
                model.addAttribute("userss", dao.getPass());
                return "login";
            }
        } catch (Exception e) {
            model.addAttribute("message", "Xảy ra lỗi khi update");
            return initiate4(session, model);
        }
    }
}
