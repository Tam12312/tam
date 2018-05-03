/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.controller;

import com.poly.dao.CustomerDAO;
import com.poly.bean.Customer;
import com.poly.dao.StudentDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author phong
 */
@Controller
 @RequestMapping(value = "index")
@SessionAttributes(value = "username")
public class AccountController {

    /**
     * Inject từ @Repository CustomerDAO
     */
    @Autowired
    private CustomerDAO dao;

    /**
     * GET: login.html
     */
    @RequestMapping()
    public String home(ModelMap model) {
        model.addAttribute("staffs", dao.getAllindex());
        model.addAttribute("tt", dao.getTT());
        model.addAttribute("photo", dao.getPhoto());
        model.addAttribute("top", dao.getTOP());
        model.addAttribute("boss", dao.getBoss());
        model.addAttribute("tnv", dao.getTNV());
        model.addAttribute("tpb", dao.getTPB());
        model.addAttribute("tkt", dao.getTKT());
        model.addAttribute("departs", dao.getAlldeparts());
        return "index";
    }

    /**
     * GET: login.html
     */
    @RequestMapping(params = "btnLogin", method = RequestMethod.POST)
    public String login(ModelMap model, @ModelAttribute("user") Customer user) {
        try {
            Customer cust = dao.getById(user.getUsername());
            model.addAttribute("username", dao.getById(user.getUsername()).getUsername());
            if (cust.getPassword().equals(user.getPassword())) {
                model.addAttribute("errors", "Đăng nhập thành công !");
                return home(model);
            } else {
                model.addAttribute("errors", "Sai mật khẩu !");
                return "login";
            }
        } catch (Exception e) {
            model.addAttribute("errors", "Sai tài khoản !");
            return "login";
        }
    }
}
