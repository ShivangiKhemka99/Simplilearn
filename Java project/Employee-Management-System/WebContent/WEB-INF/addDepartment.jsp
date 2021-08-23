<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<title>Create Department</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="styles.css" rel="stylesheet" type="text/css">
		<script>
			//if ( window.history.replaceState )
			if(<%request.getSession().getAttribute("role");%> == null)
			{
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
  <form action="addDepartmentDetails.spring" method="post">
    <div class="form-group">
      <label for="department_nm">Enter Department Name</label>
      <div class="col-sm-10">
			<input name="department_nm" type="text" class="form-control" id="department_nm" maxlength="25" required>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" style="background-color:#000;color:#fff">Submit</button>
      </div>
    </div>
    </form>
    </div>
    	
		
	</body>
</html>