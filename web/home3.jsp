<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01-06-2018
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


  <link href="styles/home3.css" type="text/css" rel="stylesheet">
  <script src="scripts/home2.js"></script>

</head>
<body>
<div class="">

  <nav class="navbar header navbar-fixed-top">

    <div class="menu-btn"><i class="fa fa-reorder" onclick="clNavMenu.openSideNav()"></i></div>

    <div class="container-fluid">
      <div class="navbar-header">
        <div class="navbar-brand logo"> Logo</div>
      </div>

      <div class="header-menu">
        <ul class="nav navbar-nav menus">
          <li class="nav-item "><a class="nav-link Import" href="#">Import</a></li>
          <li class="nav-item "><a class="nav-link" href="#">Process</a></li>
          <li class="nav-item "><a class="nav-link" href="#">Handoff</a></li>
          <li class="nav-item "><a class="nav-link" href="#">Dispatch</a></li>
          <li class="nav-item "><a class="nav-link" href="#">Returns</a></li>
          <li class="nav-item "><a class="nav-link" href="#">Redispatch</a></li>
        </ul>
      </div>

      <div class="header-right-box">
        <ul class="nav navbar-nav">
          <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-th"></i> </a></li>
          <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-bell"></i> </a></li>
          <li class="nav-item"><img src="images/user2.png" class="user-pic"></li>
        </ul>
      </div>

      <div id="menu-sidenav" class="menu-sidenav">
        <div class="closebtn" onclick="clNavMenu.closeSideNav()">&times;</div>
        <div class="menu">Home</div>
        <div class="menu">Gallery</div>
        <div class="menu">About</div>
        <div class="menu">Contact</div>
        <span class="h-line"></span>
        <div class="setting"><i class="fa fa-cog"></i> <span>Settings</span></div>
      </div>

    </div>
  </nav>

</div>


</body>
</html>
