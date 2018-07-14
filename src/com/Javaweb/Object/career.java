package com.Javaweb.Object;

public class career {
    private int employee_id;
    private String start_time;
    private String end_Time;
    private String company;

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public void setEnd_Time(String end_Time) {
        this.end_Time = end_Time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getEnd_Time() {
        return end_Time;
    }

    public String getStart_time() {
        return start_time;
    }

    public int getEmployee_id() {
        return employee_id;
    }
}
