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
<form name="f1" method="post" action="PredictAction.jsp" onsubmit="return validate(this);"><br/>
   <h2><b>Select To Predict The Crime</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="100" >
                                                    <tr><td><b>Select Here:</b></td>
                             <td><select name="predict">
                                 <option>--select--</option>
                             <option value="Age_wise">Age wise</option>
                             <option value="Gender_wise">Gender wise</option>
                              <option value="Place_wise">Place wise</option>
                               
                               </select>
                             </td></tr>
		
         
			<tr><td></td><td><input type="submit" value="submit"></td>
			</table>
				</div>	
					
				</div>
				
	</body>
</html>