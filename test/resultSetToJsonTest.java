import org.junit.Test;

import java.sql.SQLException;

import static org.junit.Assert.*;

public class resultSetToJsonTest {

    @Test
    public void resultSetToJsonForString() throws SQLException {
        employeeDao ea = new employeeDao();
        String JSON = resultSetToJson.resultSetToJsonForString(ea.getAllEmployeesResults());
        System.out.println(JSON);
    }
}