/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.bean;

/**
 *
 * @author phong
 */
public class Customer {

    private String Username;
    private String Password;
    private String Fullname;

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

   

    

    

    @Override
    public String toString() {
        return "Customer{" + "Username=" + Username + ", Password=" + Password + ", Fullname=" + Fullname + '}';
    }

}
