<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<!-- custom -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css_files/profile.css" type="text/css">
			
		<link href="${pageContext.request.contextPath}/bootstrap-formhelpers/bootstrap-formhelpers.min.css" rel="stylesheet" />
		<script src="${pageContext.request.contextPath}/bootstrap-formhelpers/bootstrap-formhelpers.min.js"></script>				

		<script src="${pageContext.request.contextPath}/js_files/handleImage.js"></script>

		<title>Profile</title>
		
		
	</head>
	<body>
	
	
	
		<jsp:include page="Header.jsp" /> 
		
		<div class="main">
			<div class="container">	
					<table class="table">
						<tbody>
					    	<tr>
						    	<td rowspan="6" class="imageTd" >
							        <div id="uploadedImageDiv">
							         	<img id="uploadedImage" class="profileImage"/>
							        </div>
						    	</td>
						    	<td ><label>Ονοματεπώνυμο:</label> Name Surname</td>
						    </tr>
						    <tr>
						    	<td><label>Email:</label> email</td>
						    </tr>
						    <tr>
						    	<td><label>Τηλέφωνο:</label> Τηλέφωνο</td>
						    </tr>
						    <tr>
						    	<td><label>Ημερομηνία γέννησης:</label> Ημερομηνία γέννησης</td>
						    </tr>
						    <tr>
						    	<td>
						    		<label>Φύλο:</label> φυλο
								</td>
						    </tr>
						    <tr>
						    	<td>
						    		<div class="row">
							    		<div class="col-xs-6 col-md-6 col-lg-6 col-sm-6 ">
							    			<label>Χώρα κατοικίας:</label> Χώρα
										</div>
												
										
										<div class="col-xs-6 col-md-6 col-lg-6 col-sm-6">
							    			<label>Πόλη κατοικίας:</label> Πόλη
										</div>
									</div>
									
									
								</td>
						    </tr>
					    </tbody>
					 </table>
					 <div class="info">
						 <div class="row">
							 <div class="col-xs-12 col-md-12 col-lg-12 col-sm-12">
							  <label>Επαγγελματική εμπειρία:</label>
							  <p>Επαγγελματική εμπειρία</p>
							</div>
						 </div>
						 <div class="row">
							 <div class="col-xs-12 col-md-12 col-lg-12 col-sm-12">
							  <label>Εκπαίδευση:</label>
							  <p>Εκπαίδευση</p>
							</div>
						 </div>
						  <div class="row">
							 <div class="col-xs-12 col-md-12 col-lg-12 col-sm-12">
							  <label>Δεξιότητες:</label>
							  <p>Δεξιότητες</p>
							</div>
						 </div>
						
					</div>
					
					<div class="choosePrivate">
						<label>Δημόσιες και ιδιωτικές πληροφορίες:</label>
						<br><br>
						<p><span class="glyphicon glyphicon-ok"></span> Ονοματεπώνυμο</p>
						<p><span class="glyphicon glyphicon-ok"></span> Ηλεκτρονική διέυθυνση/Email</p>
						<p><span class="glyphicon glyphicon-remove"></span> Τηλέφωνο</p>
						<p><span class="glyphicon glyphicon-ok"></span> Ημερομηνία γέννηση</p>
						<p><span class="glyphicon glyphicon-remove"></span> Φύλο</p>
						<p><span class="glyphicon glyphicon-ok"></span> Χώρα κατοικίας</p>
						<p><span class="glyphicon glyphicon-remove"></span> Πόλη/Περιοχή κατοικίας</p>
						<p><span class="glyphicon glyphicon-ok"></span> Επαγγελματική Εμπειρία</p>
						<p><span class="glyphicon glyphicon-ok"></span> Εκπαίδευση</p>
						<p><span class="glyphicon glyphicon-ok"></span> Δεξιότητες</p>
					</div>
					
					<form role="Form" method="POST" action="${pageContext.request.contextPath}/Profile" accept-charset="UTF-8">
						<div class="editDiv row">
							<div class="col-xs-12 col-md-12 col-lg-12 col-sm-12 ">
						 		<button type="submit" class="btn btn-primary editButton">Επεξεργασία</button>
						 	</div>
						</div>
					</form>
				
			</div>
		</div>		
		
		<jsp:include page="Footer.jsp" /> 
	
	</body>
</html>