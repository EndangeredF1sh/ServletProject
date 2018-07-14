package com.Javaweb.Object;

import com.Javaweb.Utils.md5Utils;

public class employee {
    private int id;
    private String first_name;
    private String last_name;
    private String gender;
    private String address;
    private String birthday;
    private String education_level;
    private int department_id;
    private int position_id;
    private String email;
    private String phone_number;
    private String hire_date;
    private double salary;
    private String password_hash;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setLast_name(String last_name){
        this.last_name = last_name;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public void setPassword(String source){
        this.password_hash = md5Utils.encrypt32(source);
    }

    public void setPassword_hash(String password_hash) {
        this.password_hash = password_hash;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public void setGender(String gender){ this.gender = gender;}

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDepartment_id(int department_id) {
        this.department_id = department_id;
    }

    public void setEducation_level(String education_level) {
        this.education_level = education_level;
    }

    public void setHire_date(String hire_date) {
        this.hire_date = hire_date;
    }

    public void setPosition_id(int position_id) {
        this.position_id = position_id;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getEmail() {
        return email;
    }

    public String getFirst_name() {
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public String getPassword_hash() {
        return password_hash;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public double getSalary() {
        return salary;
    }

    public String getAddress() {
        return address;
    }

    public int getDepartment_id() {
        return department_id;
    }

    public String getEducation_level() {
        return education_level;
    }

    public String getGender() {
        return gender;
    }

    public String getHire_date() {
        return hire_date;
    }

    public int getPosition_id() {
        return position_id;
    }
}
