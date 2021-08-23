<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
if(session.getAttribute("userid")==null || session.getAttribute("role")==null)
{
	response.sendRedirect(request.getContextPath() + "/index.jsp");
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Edit Employee Details</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="styles.css" rel="stylesheet" type="text/css">
		<script>
			//if ( window.history.replaceState )
			if(<%request.getSession().getAttribute("role");%> == null)
			{
				//window.history.replaceState( null, null, window.location.href );
				window.history.replaceState( null, null, "${pageContext.request.contextPath}/index.jsp" );
			}
		</script>
	</head>
	<body>
		
				<div class="container">
			<ul class="nav">
				<li class="nav-item">
					<a class="nav-link" href="adminDashboard.spring">Back</a>
				</li>
			</ul>
		</div>
		
<div class="container">
  <form action="submitEmployeeId.spring" method="post">
    <div class="form-group">
      <label for="empid">Enter Employee ID</label>
      <div class="col-sm-10">
			<input name="empid" type="text" class="form-control" id="empid" maxlength="10" required>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" style="background-color:#000;color:#fff">Edit info</button>
      </div>
    </div>
    </form>
    </div>
    	
		
	</body>
</html>