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

@RequestMapping(value = "editDP")
public class editDP {

    @Autowired
    private StudentDao dao;

    @RequestMapping()
    public String initiate3(HttpSession session,ModelMap model4) {
        model4.addAttribute("depart", new Departs());
        model4.addAttribute("departs", dao.getDeparts());
        session.getAttribute("username");
        return "editDP";
    }

    @RequestMapping(params = "btnUpdateDP", method = RequestMethod.POST)
    public String updateDP(@ModelAttribute("depart") Departs departs, HttpSession session, ModelMap model) {
        try {
            if (departs.getId().equals("")) {
                model.addAttribute("message", "Bạn chưa chọn phòng ban để cập nhật thông tin !");
                return initiate3(session, model);
            }
            dao.updateDP(departs);
            model.addAttribute("message", "Đã thành công !");
            model.addAttribute("departs", dao.getDeparts());
            return "editDP";
        } catch (Exception e) {
            model.addAttribute("message", "Xảy ra lỗi khi update");
            return initiate3(session, model);
        }
    }

    @RequestMapping(params = "lnkDeleteDP")
    public String deleteDP(@ModelAttribute("id") String id, HttpSession session, ModelMap model) {
        try {
            dao.deleteDP(id);
            return initiate3(session, model);
        } catch (Exception e) {
            model.addAttribute("message", "Xảy ra lỗi khi delete");
            return initiate3(session, model);
        }
    }

    @RequestMapping(params = "lnkEditDP", method = RequestMethod.GET)
    public String editDP(@ModelAttribute("id") String id, HttpSession session, ModelMap model) {
        try {
            Departs departs = dao.getIDDP(id);
            model.addAttribute("depart", departs);
            model.addAttribute("departs", dao.getDeparts());
            return "editDP";
        } catch (Exception e) {
            model.addAttribute("message", "Xảy ra lỗi khi edit");
            return initiate3(session, model);
        }
    }
}
