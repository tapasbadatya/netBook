<%--
  Created by IntelliJ IDEA.
  User: Tapas
  Date: 18-05-2018
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.netBook.accessor.ColorPicker" %>
<html>
<head>
  <title>netBook Messanger</title>
  <link rel="icon" type="image/png" href="images/logo.jpg">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link href="styles/ChatMobile.css" rel="stylesheet">
  <link href="styles/header.css" rel="stylesheet">

  <script src="scripts/netBook.js"></script>
  <script src="scripts/Utils.js"></script>
  <script src="scripts/header.js"></script>
  <script src="scripts/Chat.js"></script>

</head>
<%
  String textColor = ColorPicker.getColor("nB-text-color");
  String color = ColorPicker.getColor("nB-color");
  String colorFade = ColorPicker.getColor("nB-color-fade");
%>
<style>
  .nb-color{
    background: <%=color %>;
  }

  .nb-border-color{
    background: #f84c84;
  }
  .search-box{
    background: <%=color%>;
  }


</style>
<body onload="netBook.applyResponsiveChatMobileWindow()" onresize="netBook.applyResponsiveChatMobileWindow();">
<div class="">

  <%@include file="header.jsp"%>

  <div class="container-fluid">
    <div class="row" align="center">
      <div class="search-box">
        <i class="fa fa-search"></i><span></span>
        <input type="text" id="search-chat"
               onfocus="Utils.setValue('search-chat','')"
               onblur="Utils.setValue('search-chat','Search a friend to chat')"
               onkeyup="Chat.searchFriendToChat()">
      </div>
    </div>
    <div id="friend-list-box" class="row friend-list-box">
      <%@include file="ChatMobileFriendList.jsp"%>
    </div>

  </div>

</div>

<div id="setting-dropdown" class="setting-dropdown uns"></div>

<div id="notification-dropdown"></div>

</body>
</html>
