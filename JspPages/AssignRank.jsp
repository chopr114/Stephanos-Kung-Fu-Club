<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Stephanos Kung Fu Club | New Student</title>
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
      <h1><a href="../index.html">Stephanos Kung Fu Club</a></h1>
    </div>
    <div id="topnav">
      <ul>
      <li><a href="../index.html">HOME</a></li>
					 <li ><a href="newstudent.jsp">REGISTRATION</a></li>
                                        <li ><a href="StudentInfo.jsp">STUDENT DETAILS</a></li>
                                        <li ><a href="Attendance.jsp">ATTENDANCE</a></li>
                                        <li ><a href="Fees.jsp">FEES</a></li>
                                        <!-- <li><a href="JspPages/PurposeOfFees.jsp">Purpose Of Fees</a></li> -->
                                      <li class="active"><a href="a.jsp">ASSIGN RANK</a></li>
                                        <li ><a href="ab.jsp">RANK</a></li>
                                        <li class="active"><a href="reports.jsp">REPORTS</a></li>
        
      </ul>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="container" class="clear" style="height:400px;"> 
    <!-- ####################################################################################################### -->
    <div id="content">
     <%String message =  (String)request.getAttribute("message");%>
   
      <h2>Please complete below form and Submit to assign rank to student</h2>
      <div id="studentdiv">
     <div id="result" style="color:green"><% if(message != null){%> <%=message%> <%}%></div>
        <form id="studentForm" action="AssignRank" method="POST">
        <input type="hidden" id="countOfRequirements" name="countOfRequirements"></input>
        <input type="hidden" id="isAddClicked" value="true"></input>
        <div id= "studentInfo">
        <table>
         <tr>
         	<td ><label for="studentID"><small>Student ID</small></label></td>
            <td ><input type="text" name="studentID" id="studentID" value="" size="22" required/></td>
          </tr>
       
          <tr>
          <td ><label for="Rank"><small>Upgraded To Rank</small></label></td>
          <td>
          <select name="rank" required >
                <c:forEach var="rank" items="${ranks}">
           	         <option value="${rank}"><c:out value="${rank}"/></option>
                </c:forEach>           
		</select>
</td>
          </tr>
           <tr>
            <td><label for="dateOfUpgrade"><small>Date</small></label></td>
            <td><input type="text" name="dateOfUpgrade" id="dateOfUpgrade" value="" size="22" required/></td>
          </tr>
           
         <tr>
         
         </tr>
          <tr>
          
          </tr>
           <tr >
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
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear" style="background-color:white;" >
      <p class="fl_left"> <font color="black">Copyright &copy; 2018 - All Rights Reserved - Stephanos Kung Fu Club</font></p>
    
  </div>
</div>

<script>




$(function () {	
	 $('#dateOfUpgrade').datepicker(); 
});


</script>



</body>

</html>