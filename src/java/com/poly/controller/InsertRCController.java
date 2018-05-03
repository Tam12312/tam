/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.controller;

import com.poly.bean.Email;
import com.poly.bean.Records;
import com.poly.bean.Staffs;
import com.poly.dao.StudentDao;
import java.io.File;
import java.time.Instant;
import java.util.Date;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author phong
 */
@Controller

@RequestMapping(value = "records")
public class InsertRCController {

    @Autowired
    private StudentDao dao;

    @Autowired
    ServletContext context;

    @Autowired
    JavaMailSender mailSender;

    @RequestMapping()
    public String initiate3(HttpSession session, ModelMap model) {
        model.addAttribute("recordins", new Records());
        model.addAttribute("recordsins", dao.getRecords());
        model.addAttribute("staffs", dao.getAll());
        session.getAttribute("username");
        return "records";
    }

    @RequestMapping(params = "btnInsertRC", method = RequestMethod.POST)
    public String insertRC(@ModelAttribute("recordsins") Records recordsins, HttpSession session, ModelMap model1) {
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true);
            helper.setFrom(recordsins.getFrom());
            helper.setTo(recordsins.getTo());
            helper.setReplyTo(recordsins.getFrom());
            helper.setSubject("Cty Power Revention( Khen thưởng)");
            helper.setText("Cty Power Revention xin thông báo nhân viên "+"<u>"+recordsins.getName()+"</u>"+" đã được ghi nhận: <br>"+"Thành tích loại: "+recordsins.getType()+"<br>"+" Nội dung thành tích: "+recordsins.getReason()+"<br>"+"Đã đạt thành tích vào: "+recordsins.getDate()+"<br>"+"Đây là email tự động được gửi bởi tài khoản: "+recordsins.getFrom()+"<h1>"+"Mọi chi tiết xin nhân viên vui lòng liên hệ về công ty."+"</h1>", true);
            
            if (recordsins.getReason().equals("")) {
                model1.addAttribute("message", "Bạn chưa nhập lý do !");
                return initiate3(session, model1);
            }
            if (recordsins.getDate().equals("")) {
                model1.addAttribute("message", "Bạn chưa nhập ngày !");
                return initiate3(session, model1);
            }
            if (recordsins.getStaffId().equals("")) {
                model1.addAttribute("message", "Bạn chưa nhập mã nhân viên !");
                return initiate3(session, model1);
            }
            mailSender.send(message);
            dao.insertRC(recordsins);
            model1.addAttribute("message", "Ghi nhận thành công ! Email xác nhận đã gửi cho nhân viên.");
            return initiate3(session, model1);
        } catch (Exception e) {
            model1.addAttribute("message", "Thất bại !");
            return initiate3(session, model1);
        }
    }

    @RequestMapping(params = "lnkEditRC", method = RequestMethod.GET)
    public String edit(@ModelAttribute("id") Integer id, HttpSession session, ModelMap model1) {
        try {
            Staffs staff = dao.getID(id);
            model1.addAttribute("staff", staff);
            model1.addAttribute("staffs", dao.getAll());
            model1.addAttribute("departsins", dao.getDeparts());
            return "records";
        } catch (Exception e) {
            model1.addAttribute("message", "Xảy ra lỗi khi edit");
            return initiate3(session, model1);
        }
    }
}
