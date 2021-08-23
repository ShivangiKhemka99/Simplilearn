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
		<title>Add Regualtions</title>
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
  <form class="form-horizontal" action="storeComplianceInformation.spring" method="post">
  
    <div class="form-group">
      <label class="control-label col-sm-2"  for="rltype">RL Type</label>
      
      <div class="col-sm-10">
			<input name="rltype" type="text" class="form-control" id="rltype" maxlength="15" required>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="details">Details</label>
      <div class="col-sm-10">          
        <input name="details" type="text" class="form-control" id="details" maxlength="250" required>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2"  for="createdate">Create Date</label>
      <div class="col-sm-10">          
        <input name="dob" type="date" class="form-control" id="dob" required>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2"  for="department_id">Department ID</label>
      <div class="col-sm-10">          
        <select name="department_id" class="form-control" id="department_id" required>
						<option disabled selected value> select department</option>
						<core:forEach items="${sessionScope.allDepartmentsDetails}" var="department">
							<option value=${department.department_id}>${department.department_nm}</option>
						</core:forEach>
					</select>
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