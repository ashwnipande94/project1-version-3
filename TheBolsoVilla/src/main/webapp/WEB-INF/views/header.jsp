<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resourses/css/style.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css"></link>
<link href="resources/css/font-awsome.min.css" rel="stylesheet"></link>
<script src="resources/js/jquery.min.js" type="text/javascript"></script>
 <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="resources/js/angular.min.js" type="text/javascript"></script>

<title>The Bolso Villa</title>
<style>
 body {
    background-color: #7FFFD4;
}

    <style>
        
     .wrapper {    
	margin-top: 80px;
	margin-bottom: 20px;
}

.form-signin {
  max-width: 420px;
  padding: 30px 38px 66px;
  margin: 0 auto;
  background-color: #eee;
  border: 3px dotted rgba(0,0,0,0.1);  
  }

.form-signin-heading {
  text-align:center;
  margin-bottom: 30px;
}

.form-control {
  position: relative;
  font-size: 16px;
  height: auto;
  padding: 10px;
}

input[type="text"] {
  margin-bottom: 0px;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}

input[type="password"] {
  margin-bottom: 20px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

.colorgraph {
  height: 7px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}   
       
                   
.blue-button{  
    background: #77EAE7;  
    filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);  
    padding:3px 5px;  
    color:#fff;  
    font-family:'Helvetica Neue',sans-serif;  
    font-size:12px;  
    border-radius:2px;  
    -moz-border-radius:2px;  
    -webkit-border-radius:4px;  
    border:1px solid #1A87B9  
}       
table {  
  font-family: "Helvetica Neue", Helvetica, sans-serif;  
   width: 50%;  
}  
 td,th{  
                border: 1px solid gray;  
                width: 25%;  
                text-align: left;  
                padding: 5px;  
                 background: #F78B8B
            }  
            
               .errors{
       
       color:red;
       font-style:italic;
       }     

        
        
</style>

</style>


</head>
<body >

<sec:authorize access="isAuthenticated()">
 <sec:authentication property="principal.Username"/>
 Dear <strong>$(username)</strong>,Welcome to Admin Page.
 <a href="<c:url value="/logout"/>">Logout</a>
 </sec:authorize>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
      <a class="navbar-brand" href="#"> <img src="resources/images/logo.jpg" style="width:60px;height:60px;"></a>
      <a class="navbar-brand" href="#">  TheBolsoVilla</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
 <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Home <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="category"> Category</a></li>
            <li><a href="Subcategory"> Subcategory</a></li>
            <li><a href="brand">Brand</a></li>
            <li><a href="product">Product</a></li>
            <li><a href="supplier">Supplier</a></li>
          </ul>
        </li>
       
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Bags <span class="caret"></span></a>
            <c:forEach items="${clist}" var="clist"> 
          <ul class="dropdown-menu">
          <li>${category.categoryName}</li>
           <c:forEach items="${category.subcategory}" var="sclist"> 
            <li><a>${sclist.subcategoryName}</a></li>
           </c:forEach>
          </ul>
          
          </c:forEach>
        </li>
        <li><a href="#" >My Cart <img src="resources/images/cart.png" style="width:30px;height:30px;"></a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
