<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Crime Rate Prediction Using K Means</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />


</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h3><font size="" color="white">Crime Rate Prediction Using K Means</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="AddCrime.jsp">Add Crime Details</a></li>
			<li><a href="ViewCrimeDetails.jsp">View Crime Details</a></li>
			<li><a href="PredictCrime.jsp">Predict Crime</a></li>
                        <li><a href="ViewUsers.jsp">View User</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
		</ul>					<br class="clearfix" />
				</div>
			
	<div id="splash">
		<img class="pic" src="images/crime.png" width="870" height="230" alt="" />
	</div>	
			<center>

   <h2><b>Select To Predict The Crime</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
        <%
        String predict=request.getParameter("predict");
        System.out.println(predict);
       if(predict.equals("Age_wise")){
        %>
        <form action="age.jsp" method="post">
						<table align="center" width="100" style="margin-bottom:100px;">
                                                    <tr><td>Select Age:</td><td><select name="age"> 
                                                                <option>--select--</option>
                <%
                try{
                    Connection con=DBCon.getCon();
                    
                    Statement st=con.createStatement();
                    ResultSet r=st.executeQuery("select distinct age from crime");
                   while(r.next()){
                      %>
                      
                      <option value="<%=r.getString("age")%>"><%=r.getString("age")%></option>     
                              
                          
                      <%
                   } 
                  %>
                  
                                                            </select></td></tr> 
                  <%
                    
                }catch(Exception e){
                   out.println(e); 
                }
                %>
                          <tr><td><input type="submit" value="submit"></td></tr>
                                                </table></form>
                <%
                
                }else if(predict.equals("Gender_wise")){
%>

       <form action="gender.jsp" method="post">
						<table align="center" width="100" style="margin-bottom:100px;">
                                                    <tr><td>Select Gender</td><td><select name="gender"> 
                                                                <option>--select--</option>
                <%
                try{
                    Connection con=DBCon.getCon();
                    
                    Statement st=con.createStatement();
                    ResultSet r=st.executeQuery("select distinct gender from crime");
                   while(r.next()){
                      %>
                      
                      <option value="<%=r.getString("gender")%>"><%=r.getString("gender")%></option>     
                              
                          
                      <%
                   } 
                  %>
                  
                                                            </select></td></tr> 
                  <%
                    
                }catch(Exception e){
                   out.println(e); 
                }
                %>
                          <tr><td><input type="submit" value="submit"></td></tr>
                                                </table></form>
                <%
}else{

%>

       <form action="place.jsp" method="post">
						<table align="center" width="100" style="margin-bottom:100px;">
                                                    <tr><td>Select Place</td><td><select name="place"> 
                                                                <option>--select--</option>
                <%
                try{
                    Connection con=DBCon.getCon();
                    
                    Statement st=con.createStatement();
                    ResultSet r=st.executeQuery("select distinct place from crime");
                   while(r.next()){
                      %>
                      
                      <option value="<%=r.getString("place")%>"><%=r.getString("place")%></option>     
                              
                          
                      <%
                   } 
                  %>
                  
                                                            </select></td></tr> 
                  <%
                    
                }catch(Exception e){
                   out.println(e); 
                }
                %>
                <tr><td><input type="submit" value="submit"></td></tr>
                                                </table></form>
                <%
}
            

                %>                                   
         
			
				</div>	
					
				</div>
				
	</body>
</html>