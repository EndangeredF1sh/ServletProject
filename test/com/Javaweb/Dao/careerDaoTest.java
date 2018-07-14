package com.Javaweb.Dao;

import com.Javaweb.Object.career;
import com.Javaweb.Utils.resultSetToJson;
import org.junit.Test;

import java.sql.SQLException;

public class careerDaoTest {

    @Test
    public void addCareer() {
        career c = new career();
        c.setCompany("中国石油大学行政");
        c.setEmployee_id(10008);
        c.setStart_time("2000-5-10");
        c.setEnd_Time("2005-1-1");
        new careerDao(c);
        System.out.println("Test Success!");
    }

    @Test
    public void getCareerByID() throws SQLException {
        careerDao c = new careerDao();
        System.out.println(resultSetToJson.resultSetToJsonForString(c.getCareerByID(10008)));
    }
}