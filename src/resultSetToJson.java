import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

//import org.json.JSONArray;
//import org.json.JSONException;
//import org.json.simple.JSONArray;
//import org.json.simple.JSONObject;
//
//import java.sql.ResultSet;
//import java.sql.ResultSetMetaData;
//import java.sql.SQLException;
//
//
//
//
//
////import com.google.gson.*;
//
//
//public class resultSetToJson {
//  public JSONArray resultSetToJson(ResultSet rs) throws SQLException,JSONException
//
//  {
//
//    // json数组
//
//    JSONArray array = new JSONArray();
//
//    // 获取列数
//
//    ResultSetMetaData metaData = rs.getMetaData();
//
//    int columnCount = metaData.getColumnCount();
//
//    // 遍历ResultSet中的每条数据
//
//    while (rs.next()) {
//
//      JSONObject jsonObj = new JSONObject();
//
//      // 遍历每一列
//
//      for (int i = 1; i <= columnCount; i++) {
//
//        String columnName =metaData.getColumnLabel(i);
//
//        String value = rs.getString(columnName);
//
//        jsonObj.put(columnName, value);
//
//      }
//
//      array.put(jsonObj);
//
//    }
//
//    return array;
//
//  }
//
//
//      }
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
        if(arr.isEmpty() || arr == null) return null;
        return arr.toJSONString();
    }
}