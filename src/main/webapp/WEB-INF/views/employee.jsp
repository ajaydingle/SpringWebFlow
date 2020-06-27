<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/mywebsite.css">
	<link rel="stylesheet" type="text/css" href="css/navigationbar.css">
	<link rel="stylesheet" type="text/css" href="css/mytable.css">
</head>

<body>
<%@ include file="header.jsp"%>

<div style="padding-top: 20px;">

		<form method="post" action="${flowExecutionUrl}">
			<table class="blueTable">
				<thead>
					<tr>
						<th colspan="8" style="text-align: left;">Add employee details</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<td colspan="8">
							<div class="links">
								<input type="submit" name="_eventId_submitemployee" value="Submit" id="submitButton" />
							</div>
						</td>
					</tr>
				</tfoot>
				<tbody>
					<tr>
						<td><label> Name:</label></td>
						<td><input type="text" name="firstname" placeholder="Name" required="required" autofocus="autofocus" /></td>
						<td><label> Age:</label></td>
						<td><input type="text" name="age" placeholder="Age" style="width: 40px;" required="required" maxlength="3" /></td>
						<td><label> Date of Birth: </label></td>
						<td><input type="date" name="dob" placeholder="DOB" required="required" /></td>
					</tr>
					<tr>

					<c:if test="${ not empty genderList }">
						<td><label> Gender: </label></td>
						<td><select name="gender" required="required">
								<c:forEach items="${genderList}" var="gender">
									<option>${gender}</option>
								</c:forEach>
						</select></td>
					</c:if>
						<td><label> City:</label></td>
						<td><input type="text" name="city" placeholder="City" style="width: 60px;" required="required"/></td>
						<td><label> Email:</label></td>
						<td><input type="email" name="email" placeholder="Email Id" required="required"/></td>
					<tr>
						<td colspan="8">&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</form>

		<c:if test="${ not empty employeeList }">
			<div style="border: 1px solid red; width: 50%;">
				You entered :
				<c:forEach items="${employeeList}" var="employee">
					<c:out value="${employee.name}"></c:out>
					<c:out value="${employee.age}"></c:out>
					<c:out value="${employee.dob}"></c:out>
					<c:out value="${employee.gender}"></c:out>
					<c:out value="${employee.city}"></c:out>
					<c:out value="${employee.email}"></c:out>
				</c:forEach>
			</div>
		</c:if>
</div>

<%@ include file="footer.jsp"%>
</body>
</html>
