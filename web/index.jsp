<%@ page import="Demo.Convertor"%>
<%@ page import="Demo.Basado"%>
<%@ page import="java.sql.*"%>
<html>
    <body>
        <h1> Convertor de mayusculas pitero </h1>
        <form method="GET" action="">
            <input type="text" name="texto"/>
            <input type="submit" name="enviar"/>
        </form>
        <% 
        String texto=request.getParameter("texto");  
        if (texto != null) {
            Convertor c = new Convertor();
            out.println(c.minusculaAMayuscula(texto));  
        }
        %>

        <table border=2>
        <%
        Connection con;
        Statement stm;
        ResultSet res = null;
        try {
            con = DriverManager
                    .getConnection("jdbc:mariadb://localhost:3306/Pagina", "nimu", "NimuVT");
            stm = con.createStatement();
            res = stm.executeQuery("select * from Personas");

        while (res.next()) {
            out.print("<tr>");
            out.print("<td>" + res.getString("ID") + "</td>");
            out.print("<td>" + res.getString("Nombres") + "</td>");
            out.print("<td>" + res.getString("Apellidos") + "</td>");
            out.print("</tr>");
        }
        }catch (Exception e) {
            out.print("Error: " + e);
        }
        %>
        </table>
    </body>
</html>
