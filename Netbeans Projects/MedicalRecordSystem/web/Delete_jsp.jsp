<%-- 
    Document   : Delete_jsp
    Created on : Dec 3, 2018, 5:51:43 PM
    Author     : bodig
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="db.connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            DbConnection db = new DbConnection();
            boolean insert = db.deleteUser(Integer.parseInt(id));
            if(insert) {
                JOptionPane.showMessageDialog(null, "User Delete");
                request.getRequestDispatcher("/AdminLogin.jsp").forward(request, response);
            }
            else {
                JOptionPane.showMessageDialog(null, "User Not found");
            }
        %>
    </body>
</html>
