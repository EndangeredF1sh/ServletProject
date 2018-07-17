package com.Javaweb.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;

public class chartDao extends baseDao{
    public String season() throws SQLException {
        String day_in ="";
        String day_out="";
        String day_change="";
        String sql = "SELECT COUNT(*) FROM dept_change where DATE_SUB(CURDATE(), INTERVAL 90 DAY) <= ch_date  and ch_pos_source = '入职' ";
        pstat = conn.prepareStatement(sql);
        ResultSet rs = pstat.executeQuery();
        if(rs.next()){
            day_in = rs.getString(1);
        }
        sql = "SELECT COUNT(*) FROM dept_change where DATE_SUB(CURDATE(), INTERVAL 90 DAY) <= ch_date  and ch_pos_destination = '离职' ";
        pstat = conn.prepareStatement(sql);
        rs = pstat.executeQuery();
        if(rs.next()){
            day_out = rs.getString(1);
        }
        sql = "SELECT COUNT(*) FROM dept_change where DATE_SUB(CURDATE(), INTERVAL 90 DAY) <= ch_date  and ch_pos_destination <> '离职' and ch_pos_source <> '入职'";
        pstat = conn.prepareStatement(sql);
        rs = pstat.executeQuery();
        if(rs.next()){
            day_change = rs.getString(1);
        }
        return day_in + "-" + day_out + "-" + day_change;
    }
    public String year() throws SQLException{
        String day_in ="";
        String day_out="";
        String day_change="";
        String sql = "SELECT COUNT(*) FROM dept_change where DATE_SUB(CURDATE(), INTERVAL 365 DAY) <= ch_date  and ch_pos_source = '入职' ";
        pstat = conn.prepareStatement(sql);
        ResultSet rs = pstat.executeQuery();
        if(rs.next()){
            day_in = rs.getString(1);
        }
        sql = "SELECT COUNT(*) FROM dept_change where DATE_SUB(CURDATE(), INTERVAL 365 DAY) <= ch_date  and ch_pos_destination = '离职' ";
        pstat = conn.prepareStatement(sql);
        rs = pstat.executeQuery();
        if(rs.next()){
            day_out = rs.getString(1);
        }
        sql = "SELECT COUNT(*) FROM dept_change where DATE_SUB(CURDATE(), INTERVAL 365 DAY) <= ch_date  and ch_pos_destination <> '离职' and ch_pos_source <> '入职'";
        pstat = conn.prepareStatement(sql);
        rs = pstat.executeQuery();
        if(rs.next()){
            day_change = rs.getString(1);
        }
        return day_in + "-" + day_out + "-" + day_change;
    }
    public String month() throws SQLException{
        String day_in ="";
        String day_out="";
        String day_change="";
        String sql = "SELECT COUNT(*) FROM dept_change where DATE_SUB(CURDATE(), INTERVAL 30 DAY) <= ch_date  and ch_pos_source = '入职' ";
        pstat = conn.prepareStatement(sql);
        ResultSet rs = pstat.executeQuery();
        if(rs.next()){
            day_in = rs.getString(1);
        }
        sql = "SELECT COUNT(*) FROM dept_change where DATE_SUB(CURDATE(), INTERVAL 30 DAY) <= ch_date  and ch_pos_destination = '离职' ";
        pstat = conn.prepareStatement(sql);
        rs = pstat.executeQuery();
        if(rs.next()){
            day_out = rs.getString(1);
        }
        sql = "SELECT COUNT(*) FROM dept_change where DATE_SUB(CURDATE(), INTERVAL 30 DAY) <= ch_date  and ch_pos_destination <> '离职' and ch_pos_source <> '入职'";
        pstat = conn.prepareStatement(sql);
        rs = pstat.executeQuery();
        if(rs.next()){
            day_change = rs.getString(1);
        }
        return day_in + "-" + day_out + "-" + day_change;
    }
}
