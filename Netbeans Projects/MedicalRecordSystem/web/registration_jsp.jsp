<%-- 
    Document   : registration_jsp
    Created on : Oct 30, 2018, 11:29:00 PM
    Author     : bodige
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="db.connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <%
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String type = request.getParameter("type");
            System.out.println(firstname);
            System.out.println(lastname);
            System.out.println(password);
            System.out.println(type);
            DbConnection db = new DbConnection();
            if(db.insertIntoDb(firstname, lastname, email, password,type )){
                JOptionPane.showMessageDialog(null, "Registered successfully");
                response.sendRedirect("index.html");
            }
            else{
                JOptionPane.showMessageDialog(null, "Error");
                response.sendRedirect("index.html");
            }
         %>
    </body>
</html>
