/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Ngo Tung Son
 */
public class Account {
    private String username;
    private String password;
    private String displayName;
    private int student;
    private int lecture;
    private ArrayList<Role> roles = new ArrayList<>();

    public Account(String username, String password, String displayName, int student, int lecture) {
        this.username = username;
        this.password = password;
        this.displayName = displayName;
        this.student = student;
        this.lecture = lecture;
    }

    public Account() {
    }
    
    

    public ArrayList<Role> getRoles() {
        return roles;
    }

    public void setRoles(ArrayList<Role> roles) {
        this.roles = roles;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public int getStudent() {
        return student;
    }

    public void setStudent(int student) {
        this.student = student;
    }

    public int getLecture() {
        return lecture;
    }

    public void setLecture(int lecture) {
        this.lecture = lecture;
    }

   
    
}
