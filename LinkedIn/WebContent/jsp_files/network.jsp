<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<!-- custom -->
		<link rel="stylesheet" href="../css_files/main_css.css" type="text/css">
		<link rel="stylesheet" href="../css_files/user_network.css" type="text/css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Network</title>
	</head>
	<body>
	
	
	<% if ( request.getAttribute( "redirect" ) == null ) { %>
		<jsp:forward page="/Network?action=getUsers" />
	<% } %>
	
	
		<jsp:include page="Header.jsp" /> 
		
		<div class="main">
			<div class="container">
				<div class="searchContainer" >
			        
			        <br>
			        <form  class="form-inline md-form mr-auto mb-4" method="POST" action="./Network" accept-charset="UTF-8">
			             <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
    					 <button class="btn btn-outline-warning btn-rounded btn-sm my-0" type="submit">Search</button>
			         </form>     
				</div>
				
				<div class="myContainer">
				
					<h2 style="font-family:sansserif;font-weight: bold;">Άτομα που μπορεί να γνωρίζετε...</h2>
				
				
					<c:set var="count" value="0"/>
					<c:forEach items="${users}" var="user">
					
						<c:if test="${count==3}">
							</div>						<!-- close row div -->
						   <c:set var="count" value="0"/>
						</c:if>
						<c:if test="${count==0}">
						   <div class="row">
						</c:if>
						
						<!-- create column -->
						<a href="./UserNetworkInfo.jsp">
				    		<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12" >
							    <table class="myTable">
							    	<tr>
								    	<td rowspan="3"><img  class="img-circle profileImage" src="../images/randomProfileImage.jpeg"></td>
								    	<td><c:out value="${user.name}" /> <c:out value="${user.surname}" /></td>
								    </tr>
								    <tr>
								    	<td><c:out value="${user.email}" /></td>
								    </tr>
								    <tr>
								    	<td><button type="button" class="btn btn-primary">Σύνδεση</button></td>
								    </tr>
							    </table>  
						    </div>
					    </a>
						
				
						

				    	<c:set var="count" value="${count+1}"/>            
				    </c:forEach>
				
				
				</div> <!-- myContainer -->
				
		    </div> <!-- container -->
		</div>	<!-- main -->
		
		
		<jsp:include page="Footer.jsp" /> 
	
	</body>
</html>