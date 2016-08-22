<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User</title>

  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <style type="text/css">
  
  .contentArea {
    display: block;
    position:absolute;
    height:auto;
    bottom:0;
    top:0;
    left:0;
    right:0;
    margin-top:80px;
    margin-bottom:40px;
    margin-right:0px;
    margin-left:200px;
    background-color: white;
}

#optionList {
    list-style-type: none;
    margin: 0;
	margin-top:80px;
    padding: 0;
    width: 180px;
    height: 87%;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 8px 0 8px 16px;
    text-decoration: none;
}

/* Change the link color on hover */
li a:hover {
    background-color: GREEN;
    color: white;
}
</style>
   
</head>
<body>

<div class="contentArea">
<h3>Client Management</h3>
<c:url var="addAction" value="/client/add" ></c:url>

<form:form action="${addAction}" commandName="client">
<table class="table table-condensed">
	<c:if test="${!empty client.clientName}">
	<tr>
		<td>
			Client ID:
		</td>
		<td>
			<form:input path="clientId" readonly="true" size="8"  disabled="true" />
			<form:hidden path="clientId" />
		</td> 
	</tr>
	</c:if>
	
	<tr>
		<td>
			Guid:
		</td>
		<td>
			<form:input path="guid" />
		</td>
	</tr>
	
	<tr >
		<td>
			Client Name:
		</td>
		<td>
			<form:input path="clientName" />
		</td>		
	</tr>
	
	<tr>
		<td>
			Client URL:
		</td>
		<td>
			<form:input path="clientUrl" />
		</td>
	</tr>
	
	<tr>
		<td>
			Email ID:
		</td>
		<td>
			<form:input path="emailId" />
		</td>
	</tr>
	
	<tr>
		<td>
			Phone Number:
		</td>
		<td>
			<form:input path="phoneNumber" />
		</td>
	</tr>
	
	<tr>
		<td colspan="2">
			<c:if test="${!empty client.clientName}">
				<input type="submit"
					value="<spring:message text="Edit Client"/>" />
			</c:if>
		</td>
	</tr>
	
</table>
	
</form:form>
</div>	
<ul id="optionList">
  <li><a href="<c:url value='/'/>">Home</a></li>
  <li><a href="<c:url value='/users'/>">Use Management</a></li>
  <li><a href="<c:url value='/projects'/>">Project Management</a></li>
  <li><a href="<c:url value='/clients'/>">Client Management</a></li>
</ul>

</body>
</html>