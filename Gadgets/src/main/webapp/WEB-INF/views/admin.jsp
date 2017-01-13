<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style1.css" /> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .footer {
    background-color:#000000;
       }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  </style>
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
        <<!-- li class="dropdown">
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
        </li>-->
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MODIFY<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="category">CATEGORIES</a></li>
            <li><a href="supplier">SUPPLIERS</a></li>
            <li><a href="product">PRODUCTS</a></li>
          </ul>
        </li> 
        <li><a href="footer">ABOUT US</a></li>
        
        
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
     <!--    <li><a href="customer"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
        <li><a href="#"><span class="glyphicon glyphicon-search"></span> search</a></li>
        
        <li><a style="color:#F5F5DC">HELLO, ${pageContext.request.userPrincipal.name}</a></li>
       		<li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="resources/images/Google-Pixel-e-Pixel-XL-41.png" alt="iphone7" >
        <div class="carousel-caption">
          <h3>mobile</h3>
          <p>mobile phone1.</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/galaxy-s1.jpg" alt="Chania">
        <div class="carousel-caption">
          <h3>mobile phone 2</h3>
          <p>.</p>
        </div>
      </div>


      <div class="item">
        <img src="resources/images/HTC-One-M9-Details.jpg" alt="Flower" >
        <div class="carousel-caption">
          <h3>mobile</h3>
          <p>mobile phone 3</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <div class="row">
    <div class="col-md-6">
    <p></p>
      <a href="pulpitrock.jpg">
<!--         <img src=HTC-One-M9-Details.jpg" alt="Cinque Terre" width="304" height="236"> -->
        <img src="resources/images/iphone-7-with-airpods.png" class="img-responsive" alt="mobile phone image" width="600" height="500">
      </a>
    </div>
    <div class="col-md-6">
      <p></p>
      <div class="embed-responsive embed-responsive-16by9">
    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/XGSy3_Czz8k"></iframe>
    </div> 
    </div>
  </div>
  
  
 <!-- Container (Portfolio Section) -->
<!-- <div class="container-fluid text-center bg-grey"> -->
 <br>
  <h2 style="text-align:center;">shop by 10% discount</h2>
  <div class="row text-center">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="resources/images/redmi note-3.jpeg" alt="Paris" width="400" height="500">
        <p><strong>mobile</strong></p>
        
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="resources/images/google-pixel.jpg" alt="New York" width="400" height="500">
        <p><strong>mobile</strong></p>
        
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="resources/images/moto-G4-plus.jpg" alt="San Francisco" width="400" height="500">
        <p><strong>mobile</strong></p>
        
      </div>
    </div>
  </div>
  </div>
  
  
<!-- <nav class="navbar navbar-inverse">
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
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav> -->
  


<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Lorem Ipsum </h3>
                    <ul>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Lorem Ipsum </h3>
                    <ul>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Lorem Ipsum </h3>
                    <ul>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Lorem Ipsum </h3>
                    <ul>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                        <li> <a href="#"> Lorem Ipsum </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3> Lorem Ipsum </h3>
                    <ul>
                        <li>
                            <div class="input-append newsletter-box text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  bg-gray" type="button"> Lorem ipsum <i class="fa fa-long-arrow-right"> </i> </button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li> <a href="resources/images/fblogo.jpg"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-google-plus">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-pinterest">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-youtube">   </i> </a> </li>
                    </ul>
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
    
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © Footer E-commerce Plugin 2014. All right reserved. </p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                	<li><i class="fa fa-cc-visa"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                </ul> 
            </div>
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>

  
</div>
</body>
</html>