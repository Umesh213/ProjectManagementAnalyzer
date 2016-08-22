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
  <h3>Project Management</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#addProject">Add Project</a></li>
    <li><a data-toggle="tab" href="#listProject">List Projects</a></li>
  </ul>

  <div class="tab-content">
    
    <div id="addProject" class="tab-pane fade in active">
      <h3>Add Project</h3>     
	  <c:url var="addAction" value="/project/add" ></c:url>

<form:form action="${addAction}" commandName="project">

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
			Project Name:
		</td>
		<td>
			<form:input path="projectName" />
		</td>
	</tr>
	
	<tr>
		<td>
			Description:
		</td>
		<td>
			<form:input path="description" />
		</td>
	</tr>
	
	<tr>
		<td>
			Short Name:
		</td>
		<td>
			<form:input path="shortName" />
		</td>
	</tr>
	
	
	<tr>
		<td colspan="2">
			<c:if test="${empty project.shortName}">
				<input type="submit"
					value="<spring:message text="Add Project"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
    </div>
    
    
    <div id="listProject" class="tab-pane fade">
      <h3>Project List</h3>
	<c:if test="${!empty listProject}">
	<table class="tg">
	<tr>
		<th width="80">Project ID</th>
		<th width="120">Project Guid</th>
		<th width="120">Project Name</th>
		<th width="120">Description</th>
		<th width="120">Short Name</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
		<th width="60">Detail</th>
	</tr>
	<c:forEach items="${listProject}" var="project">
		<tr>
			<td>${project.pid}</td>
			<td>${project.guid}</td>
			<td>${project.projectName}</td>
			<td>${project.description}</td>
			<td>${project.shortName}</td>

			<td><a href="<c:url value='/project/edit/${project.pid}' />" >Edit</a></td>
			<td><a href="<c:url value='/project/remove/${project.pid}' />" >Delete</a></td>
			<td><a href="<c:url value='/project/view/${project.pid}' />" >View</a></td>
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
