<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>User Management</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="resources/css/alignment.css">

</head>
<body>
<div class="contentArea">
<div class="container" align="left">
  <h3>User Management</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#addUser">Add Users</a></li>
    <li><a data-toggle="tab" href="#listUser">List User</a></li>
  </ul>

  <div class="tab-content">
    
    <div id="addUser" class="tab-pane fade in active">
      <h3>Add User</h3>     
	  <c:url var="addAction" value="/user/add" ></c:url>

<form:form action="${addAction}" commandName="user">

<table class="table table-condensed">
	<tr>
		<td>
			Guid:
		</td>
		<td>
			<form:input path="guid" />
		</td>		
	</tr>
	
	<tr>
		<td>
			User Name:
		</td>
		<td>
			<form:input path="userName" />
		</td>
	</tr>
	
	<tr>
		<td>
			User Full Name:
		</td>
		<td>
			<form:input path="userFullName" />
		</td>
	</tr>
	
	<tr>
		<td>
			Password:
		</td>
		<td>
			<form:password path="password" />
		</td>
	</tr>
	
	<tr>
		<td>
			Email:
		</td>
		<td>
			<form:input path="emailID" />
		</td>
	</tr>
	
	<tr>
		<td>
			Employee ID:
		</td>
		<td>
			<form:input path="employeeID" />
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
			<c:if test="${empty user.userName}">
				<input type="submit"
					value="<spring:message text="Add User"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
    </div>
    
    
    <div id="listUser" class="tab-pane fade">
      <h3>Users List</h3>
	<c:if test="${!empty listUsers}">
	<table class="tg">
	<tr>
		<th width="80">User ID</th>
		<th width="120">User Guid</th>
		<th width="120">User Name</th>
		<th width="120">User Full Name</th>
		<th width="120">Email</th>
		<th width="120">Employee ID</th>
		<th width="120">Phone Number</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
		<th width="60">Detail</th>
	</tr>
	<c:forEach items="${listUsers}" var="user">
		<tr>
			<td>${user.userId}</td>
			<td>${user.guid}</td>
			<td>${user.userName}</td>
			<td>${user.userFullName}</td>
			<td>${user.emailID}</td>
			<td>${user.employeeID}</td>
			<td>${user.phoneNumber}</td>
			<td><a href="<c:url value='/user/edit/${user.userId}' />" >Edit</a></td>
			<td><a href="<c:url value='/user/remove/${user.userId}' />" >Delete</a></td>
			<td><a href="<c:url value='user/view/${user.userId}' />" >View</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
    </div>
    
  </div>
</div>
</div>

<ul id="optionList">
  <li><a href="<c:url value='/'/>">Home</a></li>
  <li><a href="<c:url value='/users'/>">Use Management</a></li>
  <li><a href="<c:url value='/projects'/>">Project Management</a></li>
  <li><a href="<c:url value='/clients'/>">Client Management</a></li>
</ul>

</body>
</html>
