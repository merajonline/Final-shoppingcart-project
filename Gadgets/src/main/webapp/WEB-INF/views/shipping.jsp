 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
    <!-- For Links -->
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gadget</title>
</head>

<body>


		<h1 style="color:black"><center >SHIPPING DETAILS</center></h1>

		<c:url var="addAction" value="/shipping/add"></c:url>
		
		<hr>

		<form:form role="/shipping" commandName="shipping" action="${addAction}">
        	<div class="form-group">
            	<label class="control-label">COUNTRY: </label>
            	<form:input class="form-control" placeholder="Country" type="text" path="country"/>
            </div>
                
            <br>
            
            <div class="form-group">
            	<label class="control-label">STATE: </label>
            	<form:input class="form-control" placeholder="State" type="text" path="state" />
            </div>
            
           	<br>
           	
           	<div class="form-group">
            	<label class="control-label">CITY: </label>
                <form:input class="form-control" placeholder="City" rows="10" path="city"/>
            </div>
            <br>
            <div class="form-group">
            	<label class="control-label">ADDRESS: </label>
            	<form:input class="form-control" placeholder="Address" type="text" path="shippingaddress"/>
            	<form:errors path="shippingaddress" style="color:red"></form:errors>
            </div>
                
            <br>
            <div class="form-group">
            	<label class="control-label">ZIP/POSTAL CODE: </label>
            	<form:input class="form-control" placeholder="Pin code" type="text" path="pincode"/>
            	<form:errors path="pincode" style="color:red"></form:errors>
            </div>
                
            <br>
            <div class="form-group">
            	<label class="control-label">MOBILE NO.: </label>
            	<form:input class="form-control" placeholder="Mobile no." type="text" path="phone"/>
            	<form:errors path="phone" style="color:red"></form:errors>
            </div>
                
            <br>
            <div class="form-group">
            	<label class="control-label">EMAIL-ID: </label>
            	<form:input class="form-control" placeholder="enter id" type="text" path="emailid"/>
            </div>
                
            <br>
           	
           	<div class="form-group">
            	<label class="control-label">FIRST NAME: </label>
                <form:input class="form-control" placeholder="First name" rows="10" path="fname"/>
                <form:errors path="fname" style="color:red"></form:errors>
            </div>
            <br>
           	
           	<div class="form-group">
            	<label class="control-label">LAST NAME: </label>
                <form:input class="form-control" placeholder="Last name" rows="10" path="lname"/>
            </div>
            
            
            
           	
               
            <div class="form-group">
            	<%-- <c:if test="${!empty shipping.emailid}">
					<input type="submit" class="btn btn-primary" value="<spring:message text="Update"/>" />
				</c:if>
				<c:if test="${empty shipping.emailid}"> --%>
					<input type="submit" class="btn btn-primary" value="<spring:message text="Save and Proceed to Payment"/>" />
<%-- 				</c:if> --%>
			</div>
               
		</form:form>
		
         <br>
        
        <hr>
        <!-- <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   
                                    	<a href="payment" type="submit" class="btn btn-success btn-block">
								Proceed to Payment
							</a>
                                </div>
                            </div> -->
        
  		<!-- Listing Customers -->
  		
       <%-- 	<div  ng-app="repeatSample" class="section">
       		<div class="container">
				<!-- Angular script -->
			
					<script>
						var f = ${shippings};
						angular.module('repeatSample', []).controller('repeatController',
						function($scope) {
							$scope.shippings = f;
							$scope.sort = function(keyname) {
							$scope.sortKey = keyname; 
							$scope.reverse = !$scope.reverse; 
							}
						});
					</script>

					<div class="bs-component" ng-controller="repeatController">
					<br>
			
						
						<tbody>
						
							<!-- <tr ng-repeat="supplier in suppliers|orderBy:sortKey:reverse|filter:search">
								<td>{{supplier.suppId}}</td>
								<td>{{supplier.suppName}}</td>
								<td>{{supplier.suppAdd}}</td>
								<td>{{supplier.suppPhone}}</td>
								<td>{{supplier.suppDes}}</td> -->
								
 								<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='shipping/edit/{{shipping.emailid}}' />"><button type="button" class="btn btn-warning">Edit</button></a></td> 
								
							</tr>
						</tbody>


					
			</div>  
			</div>
			</div> --%>
              
       </body>
</html>