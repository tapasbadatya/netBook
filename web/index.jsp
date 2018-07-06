<%@ page import="com.netBook.accessor.ColorPicker" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="styles/index.css" rel="stylesheet">

</head>
<%
  String color = ColorPicker.getColor("nB-color");
%>
<style>
  body{
    background-color: <%=color%>;
  }

  .login input:hover{
    background-color: white;
    color: <%=color%>;
  }

  .register input:hover{
    background-color: white;
    color: <%=color%>;
  }

  .login input:active{
    background-color: rgba(255, 255, 255, 0.75);
    color: <%=color%>;
  }

  .register input:active{
    background-color: rgba(255, 255, 255, 0.75);
    color: <%=color%>;
  }

</style>
<body>
<div class="">
  <div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
      <div class="row">
        <div class="col-lg-5 col-md-5 col-sm-3 col-xs-2"></div>
        <div class="col-lg-2 col-md-2 col-sm-6 col-xs-8 logo" align="center">
          <img src="images/logo5.jpg" class="img-responsive">
        </div>
        <div class="col-lg-5 col-md-5 col-sm-3 col-xs-2"></div>
      </div>

      <div class="row">
        <div class="col-lg-5 col-md-5 col-sm-3 col-xs-2"></div>
        <div class="col-lg-2 col-md-2 col-sm-6 col-xs-8 logo login">
          <a href="home.jsp"><input type="button" value="LOGIN USER"/></a>
        </div>
        <div class="col-lg-5 col-md-5 col-sm-3 col-xs-2"></div>
      </div>

      <div class="row">
        <div class="col-lg-5 col-md-5 col-sm-3 col-xs-2"></div>
        <div class="col-lg-2 col-md-2 col-sm-6 col-xs-8 logo register">
          <input type="button" value="CREATE USER"/>
        </div>
        <div class="col-lg-5 col-md-5 col-sm-3 col-xs-2"></div>
      </div>

    </div>
  </div>
</div>
</body>
</html>
