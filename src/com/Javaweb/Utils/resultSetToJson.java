package com.Javaweb.Utils;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
public class resultSetToJson {
    public static JSONArray resultSetToJson(ResultSet rs) throws SQLException{

        JSONArray arr = new JSONArray();
        ResultSetMetaData rsmd = rs.getMetaData();
        while(rs.next()){
            JSONObject outObj = new JSONObject();
            JSONObject inObj = new JSONObject();
            String columnName = rsmd.getColumnName(1);
            String columnValue = rs.getString(1);
            outObj.put(columnName,columnValue);
            for(int i=2;i<=rsmd.getColumnCount();i++){
                columnName = rsmd.getColumnName(i);
                columnValue = rs.getString(i);
                inObj.put(columnName,columnValue);
                outObj.put("info",inObj);
            }
            arr.add(outObj);
        }
        if(arr.isEmpty()) return null;
        else return arr;
    }
    public static String resultSetToJsonForString(ResultSet rs) throws SQLException, NullPointerException{
        JSONArray arr = resultSetToJson(rs);
        try{
            if(arr.isEmpty()) return "{}";
        }catch (NullPointerException e){
            return "{}";
        }
        return arr.toJSONString();
    }
}