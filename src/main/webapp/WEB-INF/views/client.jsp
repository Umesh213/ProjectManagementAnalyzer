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
<div class="container">
  <h3>Client Management</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#addClient">Add Client</a></li>
    <li><a data-toggle="tab" href="#listClient">List Clients</a></li>
  </ul>

  <div class="tab-content">
    
    <div id="addClient" class="tab-pane fade in active">
      <h3>Add Client</h3>     
	  <c:url var="addAction" value="/client/add" ></c:url>

<form:form action="${addAction}" commandName="client">

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
			<c:if test="${empty client.clientName}">
				<input type="submit"
					value="<spring:message text="Add Client"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
    </div>
    
    
    <div id="listClient" class="tab-pane fade">
      <h3>Client List</h3>
	<c:if test="${!empty listClient}">
	<table class="tg">
	<tr>
		<th width="80">Client ID</th>
		<th width="120">Client Guid</th>
		<th width="120">Client Name</th>
		<th width="120">Client Url</th>
		<th width="120">Email Id</th>
		<th width="120">Phone Number</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
		<th width="60">Detail</th>
	</tr>
	<c:forEach items="${listClient}" var="client">
		<tr>
			<td>${client.clientId}</td>
			<td>${client.guid}</td>
			<td>${client.clientName}</td>
			<td>${client.clientUrl}</td>
			<td>${client.emailId}</td>
			<td>${client.phoneNumber}</td>
			<td><a href="<c:url value='/client/edit/${client.clientId}' />" >Edit</a></td>
			<td><a href="<c:url value='/client/remove/${client.clientId}' />" >Delete</a></td>
			<td><a href="<c:url value='/client/view/${client.clientId}' />" >View</a></td>
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
