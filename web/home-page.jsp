<%@ page import="com.netBook.accessor.ColorPicker" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 03-08-2018
  Time: 16:52
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
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="styles/home-page.css" rel="stylesheet">
  <script src="scripts/home-pages.js"></script>
  <script src="scripts/Utils.js"></script>
  <script src="scripts/Chat.js"></script>
  <script src="scripts/netBook2.js"></script>
  <script src="scripts/Post.js"></script>


</head>
<%
  String textColor = ColorPicker.getColor("nB-text-color");
  String color = ColorPicker.getColor("nB-color");
  String colorFade = ColorPicker.getColor("nB-color-fade");
%>
<style>

</style>
<body onload="netBook.applyResponsiveHome()" onresize="netBook.applyResponsiveHome();">
<div class="container-fluid">
  <div class="row header">
    <div class="col-lg-6 col-md-2 col-sm-2 col-xs-0">
      <img src="images/tapas.jpg" id="profile-pic" class="profile-pic" onclick="Home.openMenu()">
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 header-right">

      <div class="header-menu">
        <div class="search" align="left"><i class="fa fa-search"></i> </div>
        <div class="home" align="center"><i class="fa fa-home"></i><span>Home</span></div>
        <div class="profile" align="center"><i class="fa fa-user-circle"></i><span>Profile</span></div>
        <div class="chat" align="center"><i class="fa fa-comment"></i><span>Chat</span></div>
        <div class="setting" align="center"><i class="fa fa-gear"></i><span>Setting</span></div>
        <div class="more" align="center"><i class="fa fa-caret-down"></i></div>
      </div>
    </div>
  </div>
  <div class="row header-bottom">
    <div class="col-lg-2 col-md-2 col-sm-2">

    </div>
    <div class="col-lg-5 col-md-5 col-sm-6">
      <div class="upload-box">
        <div class="write-text" align="center">
          <i class="fa fa-edit"></i><span>Write Text</span>
        </div>
        <div class="upload-gallery" align="center">
          <i class="fa fa-photo"></i><span>Add Photo/Video</span>
        </div>
        <div class="upload-file" align="center">
          <i class="fa fa-file-text-o"></i><span>Add File</span>
        </div>
      </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-0">
      <div class="third-column-box">
        <div class="make-friend" align="center">
          <i class="material-icons" onclick="Home.showMakeFriend()">person_add</i>
        </div>
        <div class="my-story" align="center">
          <i class="material-icons" onclick="Home.showMyStory()">camera</i>
        </div>
        <div class="my-dir" align="center">
          <i class="fa fa-folder-open" onclick="Home.showDirectory()"></i>
        </div>
      </div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-3">
      <div class="search-chat-frnd">
        <i class="fa fa-search"></i>
        <input type="text" id="search-chat" placeholder="Search a friend to chat" onkeyup="Chat.searchFriendToChat()" />
      </div>
    </div>
  </div>


  <div class="row">
    <div class="col-lg-2 col-md-2 col-sm-2">
      <div class="side-menus">
        <div class="side-menu">&nbsp;<i class="fa fa-heart fa-icon"></i><span class="fav">Favorite</span></div>
        <div class="side-menu"><i class="material-icons mi-icon">event_available</i><span class="events">Events</span></div>
        <div class="side-menu"><i class="material-icons mi-icon">cake</i><span class="bday">Birthdays</span></div>
        <div class="side-menu">&nbsp;<i class="fa fa-comment"></i><span class="chat">Message</span></div>
        <div class="side-menu">&nbsp;<i class="fa fa-file-text-o fa-icon"></i><span class="note">Note</span></div>
        <div class="side-menu"><i class="material-icons mi-icon">wb_sunny</i><span class="wheather">Wheather</span></div>
        <div class="side-menu"><i class="fa fa-newspaper-o fa-icon"></i><span class="news">News Feed</span></div>
        <div class="side-menu"><i class="material-icons mi-icon">language</i><span class="lang">Language</span></div>
      </div>
    </div>
    <div class="col-lg-5 col-md-5 col-sm-6">
     <%@include file="ShowPost.jsp"%>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-0">
      <div id="content-3-content">
        <div id="make-friend" style="width: 100%;display: none">
          <%@include file="MakeFriend.jsp"%>
        </div>
        <div id="my-story" style="width: 100%;display: block">
          <%@include file="MyStory.jsp"%>
        </div>
        <div id="directory" style="width: 100%;display: none">
          <%@include file="MyDirectory.jsp"%>
        </div>
      </div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-3">
      <div class="row">

        <%@include file="FriendList.jsp" %>

      </div>
    </div>
  </div>

</div>

<div id="menu" class="container-fluid">
  <div class="row">
    <div class="title">
      <div class="name"><i class="fa fa-bell"></i> Notification</div>
    </div>
    <div class="content">

    </div>
  </div>
</div>
<div id="bg-menu" onclick="Home.closeMenu()"></div>
</body>
</html>
