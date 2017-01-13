<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
   
    
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
        </li>
        <li><a href="#">ABOUT US</a></li>
        <li><a href="category">CATEGORIES</a></li>
        <li><a href="supplier">SUPPLIERS</a></li>
         <li><a href="product">PRODUCTS</a></li> -->
        <li><a href="#">ABOUT US</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <!-- <li><a href="customer"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
        <li><a href="#"><span class="glyphicon glyphicon-search"></span> search</a></li>
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



<%-- <h1 style="color:red">PRODUCT </h1>

<c:url var="addAction" value="/product/add"></c:url> --%>
<hr>
<%-- <form:form role="/product" commandName="product" action="${addAction}">
              
			   
			   <div class="form-group">
                  <label class="control-label">Enter ID: </label>
                  <form:input class="form-control" placeholder="Enter Product ID" type="text" path="id"/>
                </div>
                
                <div class="form-group">
				<c:choose>
			   		<c:when test="${!empty product.id}">
                  		<label class="control-label">Enter ID: </label>
                  		<form:input class="form-control" placeholder="Enter Product ID" type="text" path="id" disabled="true" readonly="true"/>
                  		<form:hidden path="id" />
                  	</c:when>
					<c:otherwise>
                		<label class="control-label">Enter ID: </label>
						<td><form:input class="form-control" path="id"  type="text" pattern=".{3,7}" required="true" title="id should be between 3 to 7 numbers"/></td>
					</c:otherwise>
				</c:choose>
			</div>
                
                
                <div class="form-group">
            	<label class="control-label">Enter product Id: </label>
            	<form:input class="form-control" placeholder="enter id" type="text" path="id"/>
                </div>
                
			   <br>
                <div class="form-group">
                  <label class="control-label">Enter Name: </label>
                  <form:input class="form-control" placeholder="Enter Product Name" type="text" path="name"/>
                </div>
               <br>
                <div class="form-group">
                  <label class="control-label">Enter Price: 
                  </label>
                  <form:input class="form-control" placeholder="Enter Product Price" rows="10" path="price"/>
                </div>
               <br>
               <div class="form-group">
                  <label class="control-label">Enter Description: 
                  </label>
                  <form:input class="form-control" placeholder="enter Description" rows="10" path="des"/>
                </div>
               
<!--                 <button type="submit" class="btn btn-primary">ADD PRODUCT</button> -->

                    <div class="form-group">
            	<c:if test="${!empty product.id}">
					<input type="submit" class="btn btn-primary" value="<spring:message text="Update"/>" />
				</c:if>
				<c:if test="${empty product.id}">
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
			var f = ${products};
			angular.module('repeatSample', []).controller('repeatController',
					function($scope) {
						$scope.products = f;
						$scope.sort = function(keyname) {
							$scope.sortKey = keyname; 
							$scope.reverse = !$scope.reverse; 
						}
					});
		</script>

		<div class="bs-component" ng-controller="repeatController">

			<form class="form-inline">
				<div class="form-group">
					<label>Search</label> <input type="text" ng-model="search"
						class="form-control" placeholder="Search">
				</div>
			</form>
			
		<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th ng-click="sort('id')">product ID <span
							class="glyphicon sort-icon" ng-show="sortKey=='id'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						
						<th ng-click="sort('name')">product NAME <span
							class="glyphicon sort-icon" ng-show="sortKey=='name'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('price')">product price <span
							class="glyphicon sort-icon" ng-show="sortKey=='price'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('des')">Description <span
							class="glyphicon sort-icon" ng-show="sortKey=='des'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th>EDIT <span 
 							class="glyphicon sort-icon"></span> 
						</th> 
						<th>DELETE <span
							class="glyphicon sort-icon"></span>
						</th>
						
					</tr>
				</thead>
				<tbody>
					

					<tr
						ng-repeat="product in products|orderBy:sortKey:reverse|filter:search">
						<td>{{product.id}}</td>
						<td>{{product.name}}</td>
						<td>{{product.price}}</td>
						<td>{{product.des}}</td>
 						<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/edit/{{product.id}}' />"><button type="button" class="btn btn-warning">Edit</button></a></td> 
						<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/remove/{{product.id}}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
</div> --%>
   
   
   
<div class="container-fluid" style="align:center; margin: 40px 0px 0px 150px">
<div class="col-md-4">
  <div class="row-fluid">
   <div class="span12">
<h2><center>ADD PRODUCT</center></h2>
<c:url var="addAction" value="/product/add"></c:url>

<%-- <form:form action="${addAction}" commandName="product" method="post"> --%>
<form:form action="${addAction}" role="form" commandName="product" enctype="multipart/form-data">
<table class="table table-condensed">
	<tr bgcolor=#F0F8FF>
		<td><form:label style="color:#000000" path="p_id"><spring:message text="ID"/></form:label></td>
		
		<c:choose>
			<c:when test="${!empty product.p_id }">
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="p_id" disabled="true" readonly="true"/></td>
			</c:when>
			<c:otherwise>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="p_id"  pattern=".{4,7}" required="true" title="id should be between 4 to 7 characters"/></td>
				</c:otherwise>
				</c:choose>
				</tr>
				
				<tr bgcolor=#F0F8FF> 
				<form:input path="p_id" hidden="true"/>
				
				<td><form:label style="color:#000000" path="p_name"> <spring:message text="NAME"/></form:label></td>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="p_name" required="true" /></td>
				</tr>
				
				<tr bgcolor=#F0F8FF>
				<td><form:label style="color:#000000" path="p_price" ><spring:message text="PRICE"/></form:label></td>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="p_price" required="true"/></td>
				</tr>
				
				<tr bgcolor=#F0F8FF>
				<td><form:label style="color:#000000" path="p_description" ><spring:message text="DESCRIPTION"/></form:label></td>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="p_description" required="true"/></td>
				</tr>
				
				<tr bgcolor=#F0F8FF>
				<td><form:label style="color:#000000" path="supplier" ><spring:message text="SUPPLIER"/></form:label></td>
				<td><form:select style="background-color:#F5F5DC" path="supplier.suppName" items="${supplierList}" itemValue="suppName" itemLabel="suppName"/></td>
				</tr>
				<tr bgcolor=#F0F8FF>
				<td><form:label style="color:#000000" path="category" ><spring:message text="CATEGORY"/></form:label></td>
				<td><form:select style="background-color:#F5F5DC" path="category.categoryName" items="${categoryList}" itemValue="categoryName" itemLabel="categoryName"/></td>
				</tr>
				
			  	<tr bgcolor=#F0F8FF>
				<td><form:label style="color:#000000"  path="image" ><spring:message text="image"/></form:label></td>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" type="file" path="image" /></td>
				</tr>
				
				<tr bgcolor=#F0F8FF>
				<td  align="right" colspan="2">
				                <c:if test="${!empty product.p_name }">
									<input style= "align:middle;" class="btn btn-primary btn-md"  type="submit" value="<spring:message text="Edit Product"/>"/>
								</c:if>
								<c:if test="${empty product.p_name }">
									<input style= "align:middle" class="btn btn-primary btn-md"  type="submit" value="<spring:message text="Add Product"/>"/>
								</c:if>
				</td>
				</tr>
</table>
</form:form>
</div>
	</div>
	</div>
	</div>
<br>
<div class="container">

<h3><center>PRODUCT LIST</center></h3>
<c:if test="${!empty productList}">
	<table  class="table table-condensed" align="center">
			<tr bgcolor="#F0F8FF">
				<th style="color:black"  width="125" align="center">PRODUCT ID</th>
				<th style="color:black" width="125" align="center">PRODUCT NAME</th>
				<th style="color:black" width="190" align="center">PRODUCT PRICE</th>
				<th style="color:black" width="190" align="center">PRODUCT DESCRIPTION</th>
				<th style="color:black" width="190" align="center">PRODUCT CATEGORY</th>
				<th style="color:black" width="190" align="center">PRODUCT SUPPLIER</th>
				<th style="color:black" width="190" align="center">PRODUCT IMAGE</th>
				<th style="color:black" width="100" align="center">EDIT</th>
				<th style="color:black" width="100" align="center">DELETE</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr bgcolor="#FFFFFF">
					<td style="color:#000000;font-size:120%" align="center">${product.p_id}</td>
					<td style="color:#000000;font-size:120%" align="center">${product.p_name}</td>
					<td style="color:#000000;font-size:120%" align="center">${product.p_price}</td>
					<td style="color:#000000;font-size:120%" align="center">${product.p_description}</td>
					<td style="color:#000000;font-size:120%" align="center">${product.category.categoryName}</td>
					<td style="color:#000000;font-size:120%" align="center">${product.supplier.suppName}</td>
					<td style="color:#000000;font-size:120%" align="center"><img src="<c:url value="/resources/images/${product.p_id}.jpg"/>"></img></td>
					
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/edit/${product.p_id}' />"><button type="button" class="btn btn-warning">Edit</button></a></td>
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/remove/${product.p_id}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>    
   
   
   
                              
</body>
</html>