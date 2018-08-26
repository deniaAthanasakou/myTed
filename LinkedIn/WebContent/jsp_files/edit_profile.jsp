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

		<title>Edit Profile</title>
		
		
	</head>
	<body>
	
	
	
		<jsp:include page="Header.jsp" /> 
		
		<div class="main">
			<div class="container">	
				<form role="Form" method="POST" action="${pageContext.request.contextPath}/RegisterUser" accept-charset="UTF-8">
					<table class="table">
						<tbody>
					    	<tr>
						    	<td rowspan="6" class="imageTd" >
						    	
						    		 <div class="form-group">
								        <label>Αλλαγή φωτογραφίας:</label>
								        <div id="uploadedImageDiv">
								         	<img id="uploadedImage" class="profileImage"/>
								         	<input type="button" value="Remove" onclick="javascript: removeImage();" class="remove"/>
								        </div>
								        <div class="input-group browse">
								            <span class="input-group-btn">
								                <span class="btn btn-default btn-file">
								                    Browse… <input type="file" id="imgInp" name ="imgInp" onchange="readURL(this);" />
								                </span>
								            </span>
								          
								        </div>
								    </div>
						    	
						    	</td>
						    	<td class="nameSurname">
						    		<div class="row">
										<div class="col-xs-6 col-md-6 col-lg-6 col-sm-6 form-group ">
											<label for="name">Όνομα:</label>
											<input type="text" name="name" placeholder="Name..." class="form-control" required>
										</div>
										<div class="col-xs-6 col-md-6 col-lg-6 col-sm-6 form-group ">
											<label for="surname">Επώνυμο:</label>
											<input type="text" name="surname" placeholder="Surname..." class="form-control" required>
										</div>
									</div>
								</td>
						    </tr>
						    <tr>
						    	<td><label>Email:</label> Email</td>
						    </tr>
						    <tr>
						    	<td>
									<div class="form-group">
										<label for="telephone">Τηλέφωνο:</label>
										<input type="tel" name="telephone" placeholder="Telephone..." class="form-control">
									</div>
								</td>
						    </tr>
						    <tr>
						    	<td>
						    	
						    		<div class="row">
						    			<div class="col-xs-4 col-md-4 col-lg-4 col-sm-4">
				    						<div class="form-group">
									       		<label class="control-label" for="people">Ημέρα:</label>
									      		<select class="form-control" id="day">
									      			<c:forEach begin="1" end="31" varStatus="loop">
														<option value="${loop.index}">${loop.index}</option>
													</c:forEach>

											    </select>
										  	</div>
									  	</div>
									  	<div class="col-xs-4 col-md-4 col-lg-4 col-sm-4">
										  	<div class="form-group">
									       		<label class="control-label" for="people">Μήνας:</label>
									      		<select class="form-control" id="month">
									      			<c:forEach begin="1" end="12" varStatus="loop">
														<option value="${loop.index}">${loop.index}</option>
													</c:forEach>


											    </select>
										  	</div>
									  	</div>
									  	<div class="col-xs-4 col-md-4 col-lg-4 col-sm-4">
										  	<div class="form-group">
									       		<label class="control-label" for="people">Έτος:</label>
										      		<select class="form-control" id="month">
										      			<c:forEach begin="1900" end="2018" varStatus="loop">
										      				<c:set var="i" value="${2018-loop.index+ 1900}" scope="page"></c:set>
															<option value="${i}">${i}</option>
														</c:forEach>
												    </select>
										  	</div>
									  	</div>
								  	</div>
      
								</td>
						    </tr>
						    <tr>
						    	<td>
						    		<div class="form-group">
							    		<label for="gender">Φύλο:</label>
										<div class="radio">
										  <label><input type="radio" name="gender">Άνδρας</label>
										</div>
										<div class="radio">
										  <label><input type="radio" name="gender">Γυναίκα</label>
										</div>
									</div>
								</td>
						    </tr>
						    <tr>
						    	<td>
						    		<div class="row">
							    		<div class="col-xs-6 col-md-6 col-lg-6 col-sm-6 form-group ">
							    			<script src="${pageContext.request.contextPath}/js_files/countrypicker.min.js"></script>
								    		<label class="gds-countryflag">Χώρα κατοικίας:</label>
												<select class="form-control selectpicker countrypicker" data-live-search="true" data-default="Greece" data-flag="false"></select>
										</div>
												
										
										<div class="col-xs-6 col-md-6 col-lg-6 col-sm-6 form-group ">
							    			<label class="gds-countryflag">Πόλη/Περιοχή κατοικίας:</label>
											<input type="text" name="city" placeholder="City..." class="form-control">
										</div>
									</div>
									
									
								</td>
						    </tr>
					    </tbody>
					 </table>
					 <div class="info">
						 <div class="row">
							 <div class="col-xs-12 col-md-12 col-lg-12 col-sm-12 form-group">
							  <label for="education">Εισάγετε πληροφορίες σχετικές με την επαγγελματική εμπειρία σας:</label>
							  <textarea class="form-control" rows="5" id="work" name="work" placeholder="Professional experience..."></textarea>
							</div>
						 </div>
						 <div class="row">
							 <div class="col-xs-12 col-md-12 col-lg-12 col-sm-12 form-group">
							  <label for="education">Εισάγετε πληροφορίες σχετικές με την εκπαίδευσή σας:</label>
							  <textarea class="form-control" rows="5" id="education" name="education" placeholder="Education..."></textarea>
							</div>
						 </div>
						  <div class="row">
							 <div class="col-xs-12 col-md-12 col-lg-12 col-sm-12 form-group">
							  <label for="education">Εισάγετε πληροφορίες σχετικές με τις δεξιότητές σας:</label>
							  <textarea class="form-control" rows="5" id="skills" name="skills" placeholder="Skills..."></textarea>
							</div>
						 </div>
						
					</div>
					
					<div class="choosePrivate">
						<label for="checkbox">Επιλέξτε ποιες πληροφορίες σας θα είναι ιδιωτικές:</label>
						<div class="checkbox disabled">
						  <label><input type="checkbox" value="" disabled>Ονοματεπώνυμο</label>
						</div>
						<div class="checkbox">
						  <label><input type="checkbox" value="">Ηλεκτρονική διέυθυνση/Email</label>
						</div>
						<div class="checkbox ">
						  <label><input type="checkbox" value="">Τηλέφωνο</label>
						</div>
						<div class="checkbox">
						  <label><input type="checkbox" value="">Ημερομηνία γέννησης</label>
						</div>
						<div class="checkbox">
						  <label><input type="checkbox" value="">Φύλο</label>
						</div>
						<div class="checkbox">
						  <label><input type="checkbox" value="">Χώρα κατοικίας</label>
						</div>
						<div class="checkbox">
						  <label><input type="checkbox" value="">Πόλη/Περιοχή κατοικίας</label>
						</div>
						<div class="checkbox">
						  <label><input type="checkbox" value="">Επαγγελματική Εμπειρία</label>
						</div>
						<div class="checkbox">
						  <label><input type="checkbox" value="">Εκπαίδευση</label>
						</div>
						<div class="checkbox">
						  <label><input type="checkbox" value="">Δεξιότητες</label>
						</div>
					</div>
					
					 <div class="form-group row buttons">
							<div class="col-xs-4 col-md-4 col-lg-4 col-sm-4">
							 	<input type="reset" class="btn cancel" value="Cancel" onclick="">
							</div>
							
							<div class="col-xs-4 col-md-4 col-lg-4 col-sm-4"></div>
							
							<div class="col-xs-4 col-md-4 col-lg-4 col-sm-4">
							 	<button type="submit" class="btn btn-primary submit">Submit</button>
							</div>
								
						</div>
					
					
					 
				  </form>
			
				
			</div>
		</div>		
		
		<jsp:include page="Footer.jsp" /> 
	
	</body>
</html>