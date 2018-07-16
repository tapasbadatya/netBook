<%--
  Created by IntelliJ IDEA.
  User: Tapas
  Date: 16-05-2018
  Time: 18:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.netBook.accessor.ColorPicker" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Welcome to netBook Chat</title>
  <link rel="icon" type="image/png" href="images/logo5.jpg">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


  <%--<link href="styles/bootstrap.min.css" rel="stylesheet">--%>
  <%--<script src="scripts/bootstrap.min.js"></script>--%>
  <%--<script src="scripts/jquery-2.0.3.js"></script>--%>


<%--<link href="styles/home.css" rel="stylesheet">--%>
  <link href="styles/header.css" rel="stylesheet">
  <link href="styles/Chat.css" rel="stylesheet">
  <link href="styles/modals.css" rel="stylesheet">


  <script src="scripts/netBook.js"></script>
  <script src="scripts/Utils.js"></script>
  <script src="scripts/header.js"></script>


</head>
<%
  String textColor = ColorPicker.getColor("nB-text-color");
  String color = ColorPicker.getColor("nB-color");
  String colorFade = ColorPicker.getColor("nB-color-fade");
  String colorBG = ColorPicker.getColor("nB-color-bg");
%>
<style>
  .nb-color{
    background: <%=color %>;
  }
  .chat-content-header{
    background: <%=color %>;
  }
  .chat-content-footer{
    background: <%=colorBG %>;
  }
  .chat-content-footer{
    background: <%=color %>;
  }
  .chat-my-profile-box .setting i:hover{
    color: <%=color %>;
  }
  .chat-my-profile-box .add-group i:hover{
    color: <%=color %>;
  }
</style>
<body onload="netBook.applyResponsiveChatWindow()" onresize="netBook.applyResponsiveChatWindow();">
<div class="">

  <%@include file="header.jsp"%>

  <div class="container-fluid content-bar" id="content-bar">
    <div class="row">
      <div id="content-1" class="col-lg-4 col-md-4 col-sm-4 col-xs-11" style="position:relative;top:-2px;background: #222222;height: 100%">

        <div class="chat-my-profile-box">
          <div class="profile-pic">
            <a href="#"><img src="images/tapas.jpg" data-toggle="modal" data-target="#show-profile-modal"></a>
          </div>
          <div class="profile-name">
            <span>Tapas Kumar Badatya</span>
          </div>
          <div class="setting">
            <i class="fa fa-gear" data-toggle="modal" data-target="#chat-setting"></i>
          </div>
          <div class="add-group">
            <i class="material-icons" data-toggle="modal" data-target="#create-group">group_add</i>
          </div>
        </div>
        <div class="chat-search-box">
          <i class="fa fa-search"></i>
          <input type="text" id="search-chat" placeholder="Search a friend to chat" onkeyup="Chat.searchFriendToChat()"  />
        </div>
        <div id="chat-friend-list-box" class="chat-friend-list-box">
          <%@include file="ChatFriendList.jsp"%>
        </div>
      </div>
      <div id="content-2" class="col-lg-8 col-md-8 col-sm-8 col-xs-1">

        <div class="row">
          <div class="col-lg-12 chat-content-header">
            <div class="profile-pic">
              <i class="fa fa-user-circle"></i>
            </div>
            <div class="profile-info">
              <div class="profile-name"> Manas Ranjan</div>
              <div class="last-seen">Online</div>
            </div>
          </div>
        </div>

        <div class="row">
          <div id="chat-content-body" class="col-lg-12  chat-content-body">
            <%@include file="chat-content.jsp"%>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12  chat-content-footer">
            <div class="row">
              <div class="col-lg-1 col-md-1 col-sm-1  emoji" align="center">
                <i class="fa fa-smile-o"></i>
              </div>
              <div class="col-lg-1 col-md-1 col-sm-1  add-photo" align="center">
                <input type="file" id="get-file" style="display: none" multiple maxlength="5" max="5" onchange="readURL(this);">
                <i class="material-icons" id="addImage">add_a_photo</i>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4 chat-input">
                <textarea id="chat-input2"></textarea>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4 chat-input">
                <textarea id="chat-input"></textarea>
              </div>
              <div class="col-lg-1 col-md-1 col-sm-1 send" align="left">
                <i class="material-icons" onclick="Chat.liveChat()">send</i>
              </div>
              <div class="col-lg-1 col-md-1 col-sm-1  love" align="left">
                <i class="fa fa-heart"></i>
              </div>
            </div>
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



  <%@include file="modals-common.jsp"%>
  <%@include file="chat-window.jsp"%>
</div>
</body>

<script>

  document.getElementById("chat-input").onkeypress = function(event){
    if (event.keyCode == 13 || event.which == 13){

      Chat.liveChat("chat-input","my-message","right");
    }
  };

  document.getElementById("chat-input2").onkeypress = function(event){
    if (event.keyCode == 13 || event.which == 13){

      Chat.liveChat('chat-input2',"your-message","left");
    }
  };










//  window.onload = function () {
    var fileupload = document.getElementById("get-file");
    var image = document.getElementById("addImage");

    image.onclick = function () {
      fileupload.click();
    };
    fileupload.onchange = function () {

      for(var i =0;i<fileupload.files.length;i++){

      if (fileupload.files && fileupload.files[i]) {
        var reader = new FileReader();
        reader.onload = function (e) {

            var simg=document.createElement("img");

            simg.setAttribute("src",e.target.result);
            simg.setAttribute("class","my-image-style");
//          simg.setAttribute("class","img-responsive");

            var sParentDiv=document.createElement("DIv");
            sParentDiv.setAttribute("class","my-message");
            sParentDiv.setAttribute("align","right");

            var sSpan=document.createElement("SPAN");
//          sSpan.setAttribute("class","message");
            sSpan.appendChild(simg);

            sParentDiv.appendChild(sSpan);

            var sChildDiv=document.createElement("DIV");
            var sChildItem=document.createElement("I");
            sChildItem.setAttribute("class","fa fa-circle report");
            sChildDiv.appendChild(sChildItem);
            var sChildDivspan=document.createElement("SPAN");
            sChildDivspan.setAttribute("class","timing");
            var sChildDivspanText=document.createTextNode(new Date().getHours()+":"+new Date().getMinutes());
            sChildDivspan.appendChild(sChildDivspanText);
            sChildDiv.appendChild(sChildDivspan);
            sParentDiv.appendChild(sChildDiv);
            document.getElementById("chat-area").appendChild(sParentDiv);



        };
        reader.readAsDataURL(fileupload.files[i]);
      }
      }

//    };


  };




/*
  $('#addImage').click(function(){
    $('#get-file').trigger('click');
    readURL(input);
  });

  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {

        var img = document.createElement("IMG");
        img.setAttribute("src",e.target.result);
        img.setAttribute("height",200);
        img.setAttribute("width",200);
        document.getElementById("chat-area").appendChild(img);
        /!*$('#blah')
                .attr('src', e.target.result)
                .width(150)
                .height(200);*!/
      };

      reader.readAsDataURL(input.files[0]);
    }
  }
*/


</script>
</html>
