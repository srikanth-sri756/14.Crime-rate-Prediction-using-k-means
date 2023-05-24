<%-- 
    Document   : EmployeeLoginAction
    Created on : Feb 27, 2020, 5:49:40 PM
    Author     : Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.DBCon" %>
<%@page import="java.sql.*" %>
<%
    String t1=request.getParameter("t1");
    String t2=request.getParameter("t2");
    try
    {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from user where t1='"+t1+"' and t2='"+t2+"'");
        if(rs.next())
        {
            response.sendRedirect("UserHome.jsp?msg=Login Sucess");
            session.setAttribute("t1", t1);
        }
        else
        {
          response.sendRedirect("UserHome.jsp?msg=Login Fail");  
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>
