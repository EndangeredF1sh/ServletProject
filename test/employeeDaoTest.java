import org.junit.Test;

import java.sql.SQLException;

public class employeeDaoTest {

    @Test
    public void addStudent() {
        employee employee = new employee();
        employee.setFirst_name("敏");
        employee.setLast_name("张");
        employee.setBirthday("1900-1-1");
        employee.setEmail("z112@z.com");
        employee.setPhone_number("13000000003");
        employee.setPassword("1234");
        employeeDao ea = new employeeDao(employee);
    }

    @Test
    public void getEmployeeResults() throws SQLException {
        employeeDao eao = new employeeDao();
        String JSON = resultSetToJson.resultSetToJsonForString(eao.getEmployeeResults("10004"));
        System.out.println(JSON);
    }
}