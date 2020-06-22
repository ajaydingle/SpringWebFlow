<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>
	<h2>Employee Management</h2>

	<form method="post" action="${flowExecutionUrl}">
        <input type="text" name="firstname" />
		<input type="submit" name="_eventId_submitemployee" value="Submit" />
	</form>
	
	<c:if test="${ not empty name }">
		<div style="border: 1px solid red; width: 200px;">
	    	You entered : <c:out value="${name}"></c:out>
		</div>
	</c:if>
	
</body>
</html>
