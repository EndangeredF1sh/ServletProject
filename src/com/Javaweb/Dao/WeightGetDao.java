package com.Javaweb.Dao;

import com.Javaweb.Object.departmentWeight;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class WeightGetDao {
    public static ArrayList<departmentWeight> GetWight() throws SQLException {
        departmentDao dao=new departmentDao();
        ResultSet rs=dao.getAllDepartmentInfo();
        int i;
        rs.last();
        i=rs.getRow();
        rs.first();
        departmentWeight[] depw=new departmentWeight[i];
        int j=0;
        departmentDao dao2=new departmentDao();
        ResultSet rh=dao2.getAllDepartmentInfo();
        while(rh.next()) {
            depw[j]=new departmentWeight();
            int id=1001;
            id=rh.getInt("department_id");
            String name=rh.getString("department_name");
            depw[j].setId(id);
            depw[j].setName(name);
            int relate=rh.getInt("superior_department_id");
            depw[j].setRelate(relate);
            depw[j].setWeight(0);
            j++;
        }
        for(j=0;j<i;j++) {
            if(depw[j].getRelate()==0)
                depw[j].setWeight(i);
        }
        for(j=i;j>=0;j--) {
            //System.out.println(j);
            for(int l=0;l<i;l++) {
                for(int s=0;s<i;s++) {
                    if(depw[l].getRelate()==depw[s].getId()) {
                        if(depw[s].getWeight()==j) {
                //            System.out.println(s);
                  //          System.out.println(l);
                            int weight;
                            weight = depw[s].getWeight();
                            weight--;
                            depw[l].setWeight(weight);
                        }
                    }
                }
            }
        }
        ArrayList<departmentWeight> list = new ArrayList<departmentWeight>();
        for(j=0;j<i;j++) {
            list.add(depw[j]);
        }
        return list;
    }
//    public static String getEChartJson() throws SQLException {
//        ArrayList<departmentWeight> res = WeightGetDao.GetWight();
//        Map<Integer,JSONObject> map = new HashMap<Integer, JSONObject>();
//        for (departmentWeight v:res) {
//            String name = v.getName();
//            JSONObject o = new JSONObject();
//            o.put("name",name);
//
//        }
//    }
}
