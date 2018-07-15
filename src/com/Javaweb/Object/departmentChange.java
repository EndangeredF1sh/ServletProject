package com.Javaweb.Object;

public class departmentChange {
    private int ch_employee_id;
    private String ch_dept_source;
    private String ch_dept_destination;
    private String ch_pos_source;
    private String ch_pos_destination;
    private String ch_date;

    public String getCh_dept_destination() {
        return ch_dept_destination;
    }

    public String getCh_dept_source() {
        return ch_dept_source;
    }

    public int getCh_employee_id() {
        return ch_employee_id;
    }

    public String getCh_pos_destination() {
        return ch_pos_destination;
    }

    public String getCh_pos_source() {
        return ch_pos_source;
    }

    public String getCh_date() {
        return ch_date;
    }

    public void setCh_date(String ch_date) {
        this.ch_date = ch_date;
    }

    public void setCh_dept_destination(String ch_dept_destination) {
        this.ch_dept_destination = ch_dept_destination;
    }

    public void setCh_dept_source(String ch_dept_source) {
        this.ch_dept_source = ch_dept_source;
    }

    public void setCh_employee_id(int ch_employee_id) {
        this.ch_employee_id = ch_employee_id;
    }

    public void setCh_pos_destination(String ch_pos_destination) {
        this.ch_pos_destination = ch_pos_destination;
    }

    public void setCh_pos_source(String ch_pos_source) {
        this.ch_pos_source = ch_pos_source;
    }
}
