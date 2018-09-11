<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.util.List" %>
    <%@ page import="VOLayers.ClassSessionVO" %>
  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<title>Stephanos Kung FU Club</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="../layout/styles/jquery-ui.css" type="text/css" />
<script type="text/javascript" src="../layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="../layout/scripts/jquery.ui.min.js"></script>
</head>
<body id="top">
<div class="wrapper row1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="../index.html">Stephanos KungFu Club</a></h1>
      
    </div>
    <div id="topnav">
      <ul>
                                          <li><a href="../index.html">HOME</a></li>
					 <li ><a href="newstudent.jsp">REGISTRATION</a></li>
                                        <li ><a href="StudentInfo.jsp">STUDENT DETAILS</a></li>
                                        <li class="active"><a href="Attendance.jsp">ATTENDANCE</a></li>
                                        <li ><a href="Fees.jsp">FEES</a></li>
                                        <!-- <li><a href="JspPages/PurposeOfFees.jsp">Purpose Of Fees</a></li> -->
                                      <li ><a href="a.jsp">ASSIGN RANK</a></li>
                                        <li ><a href="ab.jsp">RANK</a></li>
                                        <li ><a href="reports.jsp">REPORTS</a></li>
      </ul>
    </div>
  </div>
</div>
 <%String message =  (String)request.getAttribute("message");
 String message1 =  (String)request.getAttribute("message1");

 %> 

<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
  
 
  
    <div id="content">
   
    <h2>Please enter below details to add new Level</h2>
      
      <div id="studentdiv">
      <div id="result" style="color:green"><% if(message1 != null){%> <%=message1%> <%}%></div>
        <form id="levelForm" action="addlevel" method="GET">
        <div id= "addLevel">
        <table>
        <tr>
         	<td ><label for="levelname"><small>Level Name</small></label></td>
            <td ><input type="text" name="levelname" id="levelname" value="" size="22" required/></td>
          </tr>
          <tr>
            <td><label for="classStarttime"><small>Class Start Time</small></label></td>
            <td ><input type="text" name="classStarttime" id="classStarttime" value="" size="22" required/></td>
          </tr>
          <tr>
            <td><label for="classEndtime"><small>Class End Time</small></label></td>
            <td ><input type="text" name="classEndtime" id="classEndtime" value="" size="22" required/></td>
          </tr>
          <tr>
          <td></td>
           
            <td><input name="submit" type="submit" id="submit" value="Submit" /></td>
          </tr>
          </table>
          </div>
        </form>
      </div>


    
      <h2>Please enter below details to keep the attendance record</h2>
       
      <div id="studentdiv">
      <div id="result" style="color:green"><% if(message != null){%> <%=message%> <%}%></div>
        <form id="studentForm" action="ADDAttendance" method="GET">
        <div id= "studentInfo">
        <table>
        <tr>
         	<td ><label for="studentID"><small>Student ID</small></label></td>
            <td ><input type="text" name="studentID" id="studentID" value="" size="22" required/></td>
          </tr>
          <tr>
            <td><label for="classLevel"><small>Class Level</small></label></td>
            <td>
            
             	<select name="classSession" id="classSession"> <!-- data-rule-required="true" -->
				<c:forEach items="${levelList}" var="list1">
					<option value="${list1.level_Name}">${list1.level_Name}: Time -> ${list1.start_at} to ${list1.end_at}</option>
					</c:forEach>
				</select>
				<c:remove var="list1" scope="session"/>
            	
            </td>
          </tr>
<!--          <tr>
            <td><label for="classTime"><small>Class Time</small></label></td>
            <td><select name="classTime" id="classTime" value="10AM-11AM" required>
            		<option value = "10AM-11AM">10AM-11AM</option>
            		<option value="11AM-12PM">11AM-12PM</option>
            		<option value="12PM-1PM">12PM-1PM</option>
            	</select>
            </td>
          </tr> -->
          <tr>
            <td><label for="attendanceDate"><small>Attendance Date</small></label></td>
			<td><input type="text" name="attendanceDate" id="attendanceDate" value="" required/></td>
         </tr>
          <tr>
          <td></td>
           
            <td><input name="submit" type="submit" id="submit" value="Submit Form" /></td>
          </tr>
          </table>
          </div>
        </form>
      </div>
    </div>

    <!-- ####################################################################################################### --> 
  </div>
</div>

                                <div class="wrapper">
  <div id="copyright" class="clear" style="background-color:white;" >
      <p class="fl_left"> <font color="black">Copyright &copy; 2018 - All Rights Reserved - Stephanos Kung Fu Club</font></p>
    
  </div>
</div>

<script>
$(function () {
	
	 $('#attendanceDate').datepicker();
	
	 
   
});
// Attach a submit handler to the form
/* $("#classLevel" ).change(function( event ) {
	if($("#classLevel").val() == 'Beginner' ){
		$("#classTime option:first-child").text("10AM-11AM").val("10AM-11AM");
		$("#classTime option:nth-child(2)").text("11AM-12PM").val("11AM-12PM");
		$("#classTime option:nth-child(3)").text("12PM-1PM").val("12PM-1PM");
	}else if($("#classLevel").val() == 'Intermediate'){
		$("#classTime option:first-child").text("2PM-3PM").val("2PM-3PM");
		$("#classTime option:nth-child(2)").text("3PM-4PM").val("3PM-4PM");
		$("#classTime option:nth-child(3)").text("4PM-5PM").val("4PM-5PM");
	}else if($("#classLevel").val() == 'Advanced'){
		$("#classTime option:first-child").text("5PM-6PM").val("5PM-6PM");
		$("#classTime option:nth-child(2)").text("6PM-7PM").val("6PM-7PM");
		$("#classTime option:nth-child(3)").text("7PM-8PM").val("7PM-8PM");
	}
}); */


</script>

</body>
</html>