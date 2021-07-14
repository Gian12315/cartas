package Demo;

import java.sql.*;

public class Basado {
    public ResultSet prueba() {
        Connection con;
        Statement stm;
        ResultSet res = null;
        try {
            con = DriverManager
                    .getConnection("jdbc:mariadb://localhost:3306/ESCOLAR?user=giancarlo&password=gian302014");
            stm = con.createStatement();
            res = stm.executeQuery("select * from ESCOLAR.Libro");
        } catch (Exception e) {
            System.out.print("Error: " + e);
        }
        return res;
    }
}
