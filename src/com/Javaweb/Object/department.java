package com.Javaweb.Object;

public class department {
    private int department_id;
    private String department_name;
    private int superior_department_id;
    public department(String department_name, int superior_department_id){
        setDepartment_name(department_name);
        setSuperior_department_id(superior_department_id);
    }
    public department(int department_id, String department_name, int superior_department_id){
        this.department_id = department_id;
        setDepartment_name(department_name);
        setSuperior_department_id(superior_department_id);
    }
    public void setDepartment_name(String department_name) {
        this.department_name = department_name;
    }

    public void setSuperior_department_id(int superior_department_id) {
        this.superior_department_id = superior_department_id;
    }

    public int getDepartment_id() {
        return department_id;
    }

    public int getSuperior_department_id() {
        return superior_department_id;
    }

    public String getDepartment_name() {
        return department_name;
    }
}
