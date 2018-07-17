package com.Javaweb.Dao;

import java.sql.*;
import java.util.List;

public class baseDao {
    protected String driver="com.mysql.cj.jdbc.Driver";
    protected String url="jdbc:mysql://localhost:3306/ertdatabase?useSSL=false&serverTimezone=GMT&characterEncoding=UTF-8";
    protected String user="test";
    protected String passwd="root";
    protected Connection conn=null;
    protected PreparedStatement pstat=null;
    baseDao(){
        try{
            Class.forName(driver);
            conn=DriverManager.getConnection(url, user, passwd);
        }
        catch(ClassNotFoundException e)
        {
            System.out.println("驱动加载异常");
            e.printStackTrace();
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
    }
    public boolean sqlInsertUtil(String sql, List<Object> params){
        try{
            pstat=conn.prepareStatement(sql);
            setParams(params);
            pstat.executeUpdate();
            return true;
        }catch (SQLException e){
            e.printStackTrace();
            return false;
        }
    }

    /**
     * @param sql
     * @param params
     * @return 查询结果集
     */
    public ResultSet sqlSelectUtil(String sql, List<Object> params){
        try{
            pstat=conn.prepareStatement(sql);
            setParams(params);
            return pstat.executeQuery();
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }
    }

    private void setParams(List<Object> params) throws SQLException {
        for(int i=0;i<params.size();i++){
            Object p = params.get(i);
            if(p instanceof Integer){
                pstat.setInt(i+1, (Integer)p);
            }
            else if (p instanceof String){
                pstat.setString(i+1,(String)p);
            }
            else if (p instanceof Double){
                pstat.setDouble(i+1,(double)p);
            }
            else if (p instanceof Date){
                pstat.setDate(i+1,(Date)p);
            }
            else if (p instanceof Boolean){
                pstat.setBoolean(i+1,(Boolean)p);
            }
        }
    }

    @Override
    protected void finalize() throws Throwable {
        super.finalize();
        pstat.close();
        conn.close();
    }
}
