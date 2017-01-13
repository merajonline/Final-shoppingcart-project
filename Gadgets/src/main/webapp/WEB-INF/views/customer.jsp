<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
    <!-- For Links -->
<%--     <%@ include file="header.jsp" %> --%>
    
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

<div class="container-fluid" style="background-color:#F44336;color:#fff;height:100px;">
  <h2>ELECTRONICS BAZAAR</h2>
  <h4>MOBILE & LAPTOP</h4>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="home">Home</a></li>
        <!-- <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MOBILE<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">APPLE</a></li>
            <li><a href="#">SAMSUNG</a></li>
            <li><a href="#">LENEVO</a></li>
            <li><a href="#">SONY</a></li>
            <li><a href="#">HTC</a></li>
            <li><a href="#">ONEPLUS</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">LAPTOP<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">PRODUCT 2.1</a></li>
            <li><a href="#">PRODUCT 2.2</a></li>
            <li><a href="#">PRODUCT 2.3</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MOBILE ACCESSORIES<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">PRODUCT 2.1</a></li>
            <li><a href="#">PRODUCT 2.2</a></li>
            <li><a href="#">PRODUCT 2.3</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">LAPTOP ACCESSORIES<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">PRODUCT 2.1</a></li>
            <li><a href="#">PRODUCT 2.2</a></li>
            <li><a href="#">PRODUCT 2.3</a></li>
          </ul>
        </li> -->
        <li><a href="#">ABOUT US</a></li>
        <!-- <li><a href="category">CATEGORIES</a></li>
        <li><a href="supplier">SUPPLIERS</a></li>
        <li><a href="product">PRODUCTS</a></li> -->
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="customer"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> 
    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		
      </ul>
    </div>
  </div>
</nav>



		<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
        	<ul class="nav navbar-nav">
            	<li>
                	<a href="home" data-toggle="tooltip" data-placement="left" title="GO TO HOME!"><span class="glyphicon glyphicon-home"></span></a>
            	</li>
          	</ul>
		</div>
		
		<br>

		<h1 style="color:red;">CREATE NEW ACCOUNT</h1>

		<c:url var="addAction" value="/customer/add"></c:url>
		
		<hr>

		<form:form role="/customer" commandName="customer" action="${addAction}">
        	<%-- <div class="form-group">
				<c:choose>
			   		<c:when test="${customer.phone != 0}">
                  		<label class="control-label">Enter Mobile Number: </label>
                  		<form:input class="form-control" placeholder="Enter Customer mobile no." type="text" path="phone" disabled="true" readonly="true"/>
                  		<form:hidden path="phone" />
                  	</c:when>
					<c:otherwise>
                		<label class="control-label">Enter Mobile Number: </label>
						<td><form:input class="form-control" path="phone"  type="text" pattern=".{10,12}" required="true" title="mobile number should be between 10 to 12 characters"/></td>
					</c:otherwise>
				</c:choose>
			</div>
                 --%>
                 <div class="form-group">
            	<label class="control-label">Enter Phone Number: </label>
            	<form:input class="form-control" placeholder="enter phone no." type="text" path="phone" />
            	<form:errors path="phone" style="color:red"></form:errors>
            	
            </div>
                 
            <br>
            
            <div class="form-group">
            	<label class="control-label">Enter Name: </label>
            	<form:input class="form-control" placeholder="Name" type="text" path="name"/>
            	<form:errors path="name" style="color:red"></form:errors>
            </div>
            
           	<br>
           	
           	<div class="form-group">
            	<label class="control-label">Enter Email-Id: </label>
                <form:input class="form-control" placeholder="Email-id" rows="10" path="emailid"/>
                <form:errors path="emailid" style="color:red"></form:errors>
            </div>
            
            
            <br>
           	<div class="form-group">
            	<label class="control-label">Enter Password: </label>
                <form:input class="form-control" placeholder="Enter Password" rows="10" path="password"/>
                <form:errors path="password" style="color:red"></form:errors>
            </div>
            <br>
            <hr>
               
            <%-- <div class="form-group">
            	<c:if test="${customer.cid != 0}">
					<input type="submit" class="btn btn-primary" value="<spring:message text="Update"/>" />
				</c:if>
				<c:if test="${customer.cid == 0}">
					<input type="submit" class="btn btn-primary" value="<spring:message text="Save"/>" />
				</c:if>
			</div> --%>
			
			   <div class="form-group">
            	<c:if test="${!empty customer.phone}">
					<input type="submit" class="btn btn-primary" value="<spring:message text="Update"/>" />
				</c:if>
				<c:if test="${empty customer.phone}">
					<input type="submit" class="btn btn-primary" value="<spring:message text="Add"/>" />
				</c:if>
			</div>
			
               
		</form:form>
		
         <br>
        
        <hr>
        
  		<!-- Listing Customers -->
  		
       	<div  ng-app="repeatSample" class="section">
       		<div class="container">
				<!-- Angular script -->
			
					<script>
						var f = ${customers};
						angular.module('repeatSample', []).controller('repeatController',
						function($scope) {
							$scope.customers = f;
							$scope.sort = function(keyname) {
							$scope.sortKey = keyname; 
							$scope.reverse = !$scope.reverse; 
							}
						});
					</script>

					<div class="bs-component" ng-controller="repeatController">
					<form class="form-inline">
						<div class="form-group">
							<label>Search Customers</label> 
							<div class="input-group">
								<input type="text" ng-model="search" class="form-control" placeholder="Search">
								<span class="input-group-btn">
        							<button class="btn btn-secondary" type="button">Go!</button>
      							</span>
      						</div>
						</div>
					</form>
			
					<br>
			
					<hr>
			
					<table class="table table-striped table-hover">
						<thead>
							<tr>
							    <th ng-click="sort('id')">CUSTOMER ID.
									<span class="glyphicon sort-icon" ng-show="sortKey=='id'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
								<th ng-click="sort('phone')">CUSTOMER MOBILE NO.
									<span class="glyphicon sort-icon" ng-show="sortKey=='phone'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
						
								<th ng-click="sort('name')">CUSTOMER NAME 
									<span class="glyphicon sort-icon" ng-show="sortKey=='name'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
						
								<th ng-click="sort('emailid')">CUSTOMER EMAIL-ID
									<span class="glyphicon sort-icon" ng-show="sortKey=='emailid'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
						
								<th ng-click="sort('password')">CUSTOMER PASSWORD 
									<span class="glyphicon sort-icon" ng-show="sortKey=='password'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
						
 								<th>EDIT 
 									<span class="glyphicon sort-icon"></span> 
								</th> 
						
								<th>DELETE 
									<span class="glyphicon sort-icon"></span>
								</th>
							</tr>
						</thead>
						<tbody>
						
							<tr ng-repeat="customer in customers|orderBy:sortKey:reverse|filter:search">
							    <td>{{customer.id}}</td>
								<td>{{customer.phone}}</td>
								<td>{{customer.name}}</td>
								<td>{{customer.emailid}}</td>
								<td>{{customer.password}}</td>
 								<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='customer/edit/{{customer.phone}}' />"><button type="button" class="btn btn-warning">Edit</button></a></td> 
								<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='customer/remove/{{customer.phone}}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
							</tr>
						</tbody>
					</table>

					</div>
				</div>
			</div>  
              
       </body>
</html>