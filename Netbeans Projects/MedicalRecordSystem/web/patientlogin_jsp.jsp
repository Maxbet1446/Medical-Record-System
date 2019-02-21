<%-- 
    Document   : patientlogin_jsp
    Created on : Oct 30, 2018, 11:21:06 PM
    Author     : castiel
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
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String pageName = request.getParameter("pageName");
            DbConnection db = new DbConnection();
            String temp = db.selectFromDb(username,password,pageName);
            if(!temp.isEmpty()){
                response.setContentType("text/html");
                request.setAttribute("firstName", temp);
                request.getRequestDispatcher("/patientdashboard.jsp").forward(request, response);
            }
            else{
                JOptionPane.showMessageDialog(null, "Incorrect Credentials");
                response.sendRedirect("patientlogin.jsp");
            }
        %>
    </body>
</html>
