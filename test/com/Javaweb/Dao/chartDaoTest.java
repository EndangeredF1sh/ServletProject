package com.Javaweb.Dao;

import org.junit.Test;

import java.sql.SQLException;

import static org.junit.Assert.*;

public class chartDaoTest {

    @Test
    public void season() throws SQLException {
        chartDao c = new chartDao();
        System.out.println(c.season());
    }
}