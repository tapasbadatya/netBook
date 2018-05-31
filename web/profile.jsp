<%--
  Created by IntelliJ IDEA.
  User: Tapas
  Date: 16-05-2018
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.netBook.accessor.ColorPicker" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Tapas Kumar Badatya</title>
  <link rel="icon" type="image/png" href="images/logo.jpg">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link href="styles/profile.css" rel="stylesheet">
  <link href="styles/header.css" rel="stylesheet">
  <link href="styles/modals.css" rel="stylesheet">


  <script src="scripts/netBook.js"></script>
  <script src="scripts/Utils.js"></script>
  <script src="scripts/header.js"></script>

  <link href="styles/TextFormatBox.css" rel="stylesheet">
  <script src="scripts/TextFormatBox.js"></script>
  <script src="scripts/Post.js"></script>

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

</style>
<body onload="netBook.applyResponsiveProfile()" onresize="netBook.applyResponsiveProfile();">
<div class="">

  <%@include file="header.jsp"%>

  <div class="container-fluid content-bar" id="content-bar">
    <div class="row">
      <div id="content-1" class="col-lg-4 col-md-4 col-sm-4 profile-box" style="background: #222222;height: 100%" align="center">

        <%@include file="ProfileSection.jsp"%>

      </div>
      <div id="content-2" class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
        <div id="upload-box" class="row upload-box nb-color uns" align="center">
          <div class="write-text" data-toggle="modal" data-target="#upload-write-text" onclick="Upload.setDefault()">
            <i id="wt" class="fa fa-edit"></i> <span id="write-text"> Write Text</span>
          </div>
          <div class="add-media" data-toggle="modal" data-target="#upload-image-video" onclick="Upload.setDefault()">
            <i id="ag" class="fa fa-photo"></i> <span id="add-gallery"> Add Photo/Video</span>
          </div>
          <div class="add-file" data-toggle="modal" data-target="#upload-add-file" onclick="Upload.setDefault()">
            <i id="af" class="fa fa-file-text-o"></i> <span id="add-file"> Add File</span>
          </div>
        </div>
        <div>

          <%@include file="ShowPost.jsp" %>

        </div>
      </div>

      <div id="content-3" class="col-lg-3 col-md-3 col-sm-3 nb-color">
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

  <div class="container">
    <div class="modal fade" id="searchModal" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-body" style="height: 35px">

            <input type="text" id="search-input" class="search-input" placeholder="Search friends by name or email..."/>

          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="setting-dropdown" class="setting-dropdown uns">
    <div align="center"><i class="fa fa-caret-up"></i></div>
    <div data-toggle="modal" data-target="#account-setting"><i class="fa fa-user-o fa-icon"></i><span>Account</span></div>
    <div data-toggle="modal" data-target="#privacy-setting"><i class="fa fa-eye-slash fa-icon"></i><span>Privacy</span></div>
    <div id="on-notification"><i class="fa fa-bell-o fa-icon"></i>
      <span onclick="clHeader.toggleOnOffNotification()">Notification</span>
    </div>
    <div id="off-notification"><i class="fa fa-bell-slash-o fa-icon"></i>
      <span onclick="clHeader.toggleOnOffNotification()">Notification</span>
    </div>
  </div>

  <div id="notification-dropdown" class="notification-dropdown uns">
    <div align="center"><i class="fa fa-caret-up"></i></div>
    <div class="contents">

    </div>
  </div>

  <%@include file="chat-window.jsp"%>
  <%@include file="modals-profile.jsp"%>
  <%@include file="modals-common.jsp"%>
</div>
</body>
</html>
