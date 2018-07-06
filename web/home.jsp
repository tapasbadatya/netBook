<%@ page import="com.netBook.accessor.ColorPicker" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 14-05-2018
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Welcome to netBook</title>
  <link rel="icon" type="image/png" href="images/logo5.jpg">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link href="styles/bootstrap.min.css" rel="stylesheet">
  <script src="scripts/bootstrap.min.js"></script>
  <script src="scripts/jquery-2.0.3.js"></script>

  <link href="styles/home.css" rel="stylesheet">
  <link href="styles/header.css" rel="stylesheet">
  <link href="styles/modals.css" rel="stylesheet">
  <link href="styles/MyFriends.css" rel="stylesheet">





  <script src="scripts/netBook.js"></script>



  <link href="styles/TextFormatBox.css" rel="stylesheet">
  <script src="scripts/TextFormatBox.js"></script>

</head>
<%
  String textColor = ColorPicker.getColor("nB-text-color");
  String color = ColorPicker.getColor("nB-color");
  String colorFade = ColorPicker.getColor("nB-color-fade");
%>


<style>
  a{
    text-decoration: none !important;
    color: white;
  }
  .nb-color{
    background: <%=color %>;
  }

  .nb-border-color{
    background: #f84c84;
  }

  .home-menus table tr td:hover{
    color: <%=color%>;
  }

  .home-menus table tr td:active{
    color: <%=color%>;
  }
  .home-menus a:hover{
    color: <%=color%>;
  }
  .home-menus a:active{
    color: <%=color%>;
  }

</style>
<body onload="netBook.applyResponsiveHome()" onresize="netBook.applyResponsiveHome();">


<%@include file="story-overlay.jsp"%>


<div class="uns">

  <%@include file="header.jsp"%>

  <div class="container-fluid content-bar" id="content-bar">
    <div class="row">
      <%--<div id="content-1" class="col-lg-2 col-md-3 col-sm-3" style="background: #51C7BB;height: 100%" align="center">--%>
      <div id="content-1" class="col-lg-2 col-md-2 col-sm-3" style="background: #222222;height: 100%" align="center">

        <div class="home-profile-box">
          <div class="profile-pic">
            <a href="#"><img src="images/tapas.jpg" data-toggle="modal" data-target="#show-profile-modal"></a>
          </div>
          <div class="profile-name">
            <span>Tapas Kumar Badatya</span>
          </div>
          <div class="h-line"></div>
        </div>
        <div class="home-menus">
          <table border="0" class="uns">
            <tr data-toggle="modal" data-target="#show-favorites"><td width="30" align="center"><i class="fa fa-heart fa-icon"></i></td><td> FAVORITES</td></tr>
            <tr data-toggle="modal" data-target="#event"><td align="center"><i class="material-icons mi-icon">event_available</i></td><td>EVENTS</td></tr>
            <tr data-toggle="modal" data-target="#show-birthdays"><td align="center"><i class="material-icons mi-icon">cake</i></td><td> BIRTHDAYS</td></tr>
            <tr><td align="center"><a href="Chat.jsp"><i class="material-icons mi-icon">message</i></a></td><td><a href="Chat.jsp"> MESSAGES</a></td></tr>
            <tr data-toggle="modal" data-target="#show-note"><td align="center"><i class="fa fa-file-text-o fa-icon"></i></td><td>NOTE</td></tr>
            <tr><td align="center"><i class="material-icons mi-icon">wb_sunny</i></td><td>WHEATHER</td></tr>
            <tr><td align="center"><i class="fa fa-newspaper-o fa-icon"></i></td><td>NEWS FEED</td></tr>
            <tr data-toggle="modal" data-target="#select-language"><td align="center"><i class="material-icons mi-icon">language</i></td><td>LANGUAGE</td></tr>
          </table>
        </div>
        <%--<div class="bottom-h-line"></div>--%>

      </div>


      <div id="content-2" class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
        <div id="upload-box" class="row upload-box nb-color uns" align="center">
          <div class="write-text" data-toggle="modal" data-target="#upload-write-text" onclick="Upload.setDefault()">
            <i class="fa fa-edit"></i> <span id="write-text"> Write Text</span>
          </div>
          <div class="add-media" data-toggle="modal" data-target="#upload-image-video" onclick="netBook.applyResponsiveUploadModals(),Upload.setDefault()">
            <i class="fa fa-photo"></i> <span id="add-gallery"> Add Photo/Video</span>
          </div>
          <div class="add-file" data-toggle="modal" data-target="#upload-add-file" onclick="netBook.applyResponsiveUploadModals(),Upload.setDefault()">
            <i class="fa fa-file-text-o"></i> <span id="add-file"> Add File</span>
          </div>
        </div>
        <div>

          <%@include file="ShowPost.jsp" %>

        </div>
      </div>

      <div id="content-3" class="col-lg-3 col-md-3 col-sm-0 nb-color" style="height: 42px" align="center">

        <div class="menu1" align="center"><i class="material-icons" onclick="Home.showMakeFriend()">person_add</i></div>
        <div class="menu2" align="center"><i class="material-icons" onclick="Home.showMyStory()">camera</i></div>
        <div class="menu3" align="center"><i class="fa fa-folder-open" onclick="Home.showDirectory()"></i> </div>

        <div id="content-3-content">
          <div id="make-friend" style="width: 100%;display: block">
            <%@include file="MakeFriend.jsp"%>
          </div>
          <div id="my-story" style="width: 100%;display: none">
            <%@include file="MyStory.jsp"%>
          </div>
          <div id="directory" style="width: 100%;display: none">
            <%@include file="MyDirectory.jsp"%>
          </div>


        </div>


      </div>

      <div id="content-4" class="col-lg-2 col-md-2 col-sm-3 nb-color">
        <div class="search-chat-frnd color-bar" style="height: 42px">
          <i class="fa fa-search" onclick="Chat.toggleSearchFriendToChat()"></i>
          <input type="text" id="search-chat" onfocus="Utils.setValue('search-chat','')"
                 onblur="Utils.setValue('search-chat','Search a friend to chat')" onkeyup="Chat.searchFriendToChat()" />
        </div>
        <div class="row">

          <%@include file="FriendList.jsp" %>

        </div>
      </div>
    </div>
  </div>




  <div id="setting-dropdown" class="setting-dropdown uns">
    <div align="center"><i class="fa fa-caret-up"></i></div>
    <div data-toggle="modal" data-target="#account-setting"><i class="fa fa-user-o fa-icon"></i><span>Account</span></div>
    <div data-toggle="modal" data-target="#privacy-setting"><i class="fa fa-eye-slash fa-icon"></i><span>Privacy</span></div>
    <div id="on-notification"><i class="fa fa-bell-o fa-icon"></i>
      <span onclick="clHeader.toggleOnOffNotification(this)">Notification</span>
    </div>
    <div id="off-notification"><i class="fa fa-bell-slash-o fa-icon"></i>
      <span onclick="clHeader.toggleOnOffNotification(this)">Notification</span>
    </div>
  </div>

  <div id="notification-dropdown" class="notification-dropdown uns">
    <div align="center"><i class="fa fa-caret-up"></i></div>
    <div class="contents">

    </div>
  </div>


  <%@include file="modals-common.jsp"%>
  <%@include file="modals-home.jsp"%>
  <%@include file="chat-window.jsp"%>



</div>
</body>
<script src="scripts/Utils.js"></script>
<script src="scripts/header.js"></script>
<script src="scripts/Post.js"></script>
<script src="scripts/home.js"></script>
</html>
