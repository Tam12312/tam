/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.controller;

import com.poly.bean.Records;
import com.poly.bean.Staffs;
import com.poly.dao.StudentDao;
import java.util.List;
import javax.management.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
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

@RequestMapping(value = "tableRecord")
public class TBRCController {

    @Autowired
    private StudentDao dao;

    @RequestMapping()
    public String initiate3(HttpSession session, ModelMap model) {
        model.addAttribute("recordsins", dao.getRecords());
        model.addAttribute("staffs", dao.getAll());
        model.addAttribute("ttt", dao.getTTT());
        model.addAttribute("ttdepart",dao.getTTdepart());
        session.getAttribute("username");
        return "tableRecord";
    }
}   
    

