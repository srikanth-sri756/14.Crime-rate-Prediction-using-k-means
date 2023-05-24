<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="com.DBCon" %>
<%
    String filename=request.getParameter("filename");
    String owner=request.getParameter("owner");
    try
     {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
        ResultSet r=st.executeQuery("select count(*) from files where status='VM1'");
        int count=0;
         while(r.next()){
           count=r.getInt(1); 
         }
         System.out.println(count);
     if(count==0||count<=4){
       int i=st.executeUpdate("update files set status='VM1' where keyword='"+filename+"' and owner='"+owner+"'" );
                       if(i>0)
                       {
                         %>
                 <script type="text/javascript">
                     window.alert("JOB Assigned To VM1 Successfully");
                     window.location="ViewFileDetails.jsp";
                     </script>
                 <% 
                       }
else
{
%>
                 <script type="text/javascript">
                     window.alert("JOB Server Allocation Fial");
                     window.location="ViewUserRequests.jsp";
                     </script>
                 <%
}  
     }else if(count>4){
Statement st11=con.createStatement();
     ResultSet r1=st11.executeQuery("select count(*) from files where status='VM2'");
        int count1=0;
         while(r1.next()){
           count1=r1.getInt(1); 
         }
     if(count1==0||count1<=4){
       int i=st.executeUpdate("update files set status='VM2'where keyword='"+filename+"' and owner='"+owner+"'" );
                       if(i>0)
                       {
                         %>
                 <script type="text/javascript">
                     window.alert("Job Assigned To VM2 Successfully");
                     window.location="ViewFileDetails.jsp";
                     </script>
                 <% 
                       }
else
{
%>
                 <script type="text/javascript">
                     window.alert("JOB Server Allocation Fial");
                     window.location="ViewFileDetails.jsp";
                     </script>
                 <%
}  
     
}else if(count1>4){
Statement st111=con.createStatement();
     ResultSet r11=st111.executeQuery("select count(*) from files where status='VM3'");
        int count11=0;
         while(r11.next()){
           count11=r11.getInt(1); 
         }
     if(count11==0||count11<=4){
       int i=st.executeUpdate("update files set status='VM3'where keyword='"+filename+"' and owner='"+owner+"'" );
                       if(i>0)
                       {
                         %>
                 <script type="text/javascript">
                     window.alert("JOB User Assigned To VM3 Successfully");
                     window.location="ViewFileDetails.jsp";
                     </script>
                 <% 
                       }
else
{
%>
                 <script type="text/javascript">
                     window.alert("JOB Server Allocation Fial");
                     window.location="ViewUserRequests.jsp";
                     </script>
                 <%
}  
     }
}
        

}
}

    catch(Exception e)
    {
        out.println(e);
    }
%>