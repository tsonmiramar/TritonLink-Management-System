<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<jsp:include page="common_headers.jsp">
	<jsp:param name="title" value="Enrollment Entry"/>
	<jsp:param name="mainJsFile" value="enrollment_entry.js"/>	
</jsp:include>
<body class="container-fluid">
	<jsp:include page="entry_header.jsp">
        <jsp:param name="entry_name" value="Enrollment Entry"/>
    </jsp:include>
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<form method="POST" action="${pageContext.request.contextPath}/class/enrollment/add" id="enrollment_entryForm">
				<div class="form-group row">
					<c:forTokens var="identity" items="student" delims=",">
						<div class="col-md-6">
							<label style="text-transform:capitalize">${identity }</label>
							<select class="form-control" id="${identity}">
								<c:forEach var="student" items="${studentList}">
									<option value="${student.id}">${student.firstname} ${student.lastname} ${student.middlename}</option>
								</c:forEach>
							</select>
						</div>
					</c:forTokens>
					
					<div class="col-md-6">
						<label>Quarter:</label>
						<h4>Spring 2017</h4>
					</div>
				</div>
				
				<div class="form-group row">	
					<div class="col-md-3">
						<label style="text-transform:capitalize">class</label>
						<select class="form-control" id="class">
							<c:forEach items="${courseClassList}" var="courseClass">
								<option value="${courseClass.id}">${courseClass.course.courseSubject.symbol} ${courseClass.course.courseUnitNumber.currNum}</option>
							</c:forEach>
						</select>
					</div>
					
					<div class="col-md-3">
						<label style="text-transform:capitalize">section</label>
						<select class="form-control" id="section">
							<c:forEach var="section" items="${courseClassList[0].sectionList}">
								<option value="${section.id}">${section.id}</option>
							</c:forEach>
						</select>
					</div>
					
					<div class="col-md-3" id="unitDiv">
						<label>Unit</label>
						<input type="text" class="form-control" id="unit" placeholder="Enter unit taken"/>
					</div>
					
					<div class="col-md-3" id="GradeOptionDiv">
						<c:if test="${courseClassList[0].course.courseOption.letter_option && courseClassList[0].course.courseOption.su_option}">
							<label>Grade Option</label>
							<select class="form-control" id="gradeOption">
								<option>letter only</option>
								<option>SU only</option>
							</select>
						</c:if>
					</div>
				</div>
				
				<jsp:include page="submitBtn.jsp"></jsp:include>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
	var courseClassJSON = ${courseClassJSON}; 
	var key = Object.keys(courseClassJSON)[0];
	displayUnitInput(courseClassJSON[key]);
</script>
</html>