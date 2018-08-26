<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
			<!-- custom -->
			
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css_files/messaging.css" type="text/css">
			<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">
			
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Messaging</title>
	</head>
	<body>
	
		<jsp:include page="Header.jsp" /> 
		
		<% if ( request.getAttribute( "redirect" ) == null ) { %>
			<jsp:forward page="/Messaging?action=getMessages" />
		<% } %>
		
		<div class="main">
			<div class="container">
				<div class="myContainer">
					<h3 class=" text-center">Messaging</h3>
					<br>
					<div class="row">
				        <div class="card col-xs-4 col-sm-4 col-md-4 col-lg-4 otherPeopleMessages" style="overflow:auto;">
				          <ul class="list-group list-group-flush">
				            <li class="list-group-item">
				            	
				            	 <div class="row">
				            		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						              <img  class="img-circle profileImage" src="${pageContext.request.contextPath}/images/randomProfileImage.jpeg">
						            </div>
						            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						              <div class="d-flex w-100 justify-content-between">
						                    <h5 class="mb-1">Name Surname</h5>
						                </div>
						            </div>
						          </div>
				            	<br>
				                <p class="lastMsg" >Person: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</p>
				                
				            </li>
				            <li class="list-group-item">
				            
				                 <div class="row">
				            		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						              <img  class="img-circle profileImage" src="${pageContext.request.contextPath}/images/randomProfileImage.jpeg">
						            </div>
						            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						              <div class="d-flex w-100 justify-content-between">
						                    <h5 class="mb-1">Name Surname</h5>
						                </div>
						            </div>
						          </div>
						        <br>
				                <p class="lastMsg">Person: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</p>
				                
				            </li>
				            <li class="list-group-item">
				            
				                 <div class="row">
				            		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						              <img  class="img-circle profileImage" src="${pageContext.request.contextPath}/images/randomProfileImage.jpeg">
						            </div>
						            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						              <div class="d-flex w-100 justify-content-between">
						                    <h5 class="mb-1">Name Surname</h5>
						                </div>
						            </div>
						          </div>
						        <br>
				                <p class="lastMsg">Person: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</p>
				                
				            </li> 
				            
				            <li class="list-group-item">
				            
				                 <div class="row">
				            		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						              <img  class="img-circle profileImage" src="${pageContext.request.contextPath}/images/randomProfileImage.jpeg">
						            </div>
						            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
						              <div class="d-flex w-100 justify-content-between">
						                    <h5 class="mb-1">Name Surname</h5>
						                </div>
						            </div>
						          </div>
						        <br>
				                <p class="lastMsg">Person: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod</p>
				                
				            </li>
				          </ul>
			        	</div>
			
			        
				        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
				        
				          <div class="row chatbody">
				    
				            <ul class="messageList col-xs-12 col-sm-12 col-md-12 col-lg-12">
								 
								 <c:forEach items="${messages}" var="message">
								 	<c:choose>
								 		<c:when test="${message.from_user==sessionScope.id}">
							    			<li class="me messageListItem"><c:out value="${message.text}"/></li>
							    		</c:when>
							    		<c:otherwise>
							    			<li class="him messageListItem"><c:out value="${message.text}"/></li>
							    		</c:otherwise>
							    	</c:choose>
								 </c:forEach>
							</ul>
				    
				          </div>
				
				          <div class="row send">
				          	<form action="${pageContext.request.contextPath}/Messaging" method="POST">
					            <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
					              <input type="text" placeholder="Message..." class="form-control" />
					            </div>
					            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
					              <button class="btn btn-info btn-block">Send</button>
					            </div>
				            </form>
				          </div>
				
				        </div>
				      </div>
					
					</div>

			</div>
		</div>
		
		
		
		<jsp:include page="Footer.jsp" /> 
	
	</body>
</html>