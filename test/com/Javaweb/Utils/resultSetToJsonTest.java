package com.Javaweb.Utils;

import com.Javaweb.Dao.employeeDao;
import com.Javaweb.Utils.resultSetToJson;
import org.junit.Test;

import java.sql.SQLException;

public class resultSetToJsonTest {

    @Test
    public void resultSetToJsonForString() throws SQLException {
        employeeDao ea = new employeeDao();
        String JSON = resultSetToJson.resultSetToJsonForString(ea.getAllEmployeesResults());
        System.out.println(JSON);
    }
}