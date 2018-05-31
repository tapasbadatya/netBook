<%--
  Created by IntelliJ IDEA.
  User: Tapas
  Date: 16-05-2018
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="styles/ProfileSection.css" rel="stylesheet">
  <script src="scripts/profile.js"></script>
  <link href="styles/AboutMe.css" rel="stylesheet">
  <link href="styles/MyGallery.css" rel="stylesheet">
  <link href="styles/MyFriends.css" rel="stylesheet">

</head>
<style>

  .my-info-box div span:hover{
    color: <%=color %>;
  }
  .my-info-box div span:active{
    color: <%=color %>;
  }
  .edit-profile:hover{
    color: <%=color%>;
  }
  .edit-profile:active{
    color: <%=color%>;
  }
  .my-profile-box .profile-status span {
    color: <%=color%>;
  }
  .my-info-content-box .gallery-display-type i:hover{
    color: <%=color%>;
  }
  .my-info-content-box .friends-display-type span:hover{
    color: <%=color%>;
  }
  .my-info-content-box .friends-display-type i:hover{
    color: <%=color%>;
  }
  .about-me-edit i:hover{
    color: <%=color%>;
  }
  .about-me-titles span{
    color: <%=color%>;
  }
/*  .update-profile button{
    background: <%=color%>;
  }
  .upload-pic button{
    background-color: <%=color%>;
  }*/
</style>
<body>
<div>
  <div class="my-profile-box">
    <i id="edit-profile" class="fa fa-edit edit-profile" data-toggle="modal" data-target="#edit-profile-modal"></i>
    <div class="profile-pic">
      <img id="profile-pic" src="images/tapas.jpg" data-toggle="modal" data-target="#show-profile-modal">
    </div>
    <div class="profile-name">
      <span>Tapas Kumar Badatya</span>
    </div>
    <div class="profile-status">
      <span>with DAD's love</span>
    </div>
    <div class="h-line"></div>
  </div>
  <div class="my-info-box uns" id="my-info-box">
    <div class="about-me"><span onclick="Profile.selectMyInfo(0)">ABOUT ME</span></div>
    <div class="my-gallery"><span onclick="Profile.selectMyInfo(1)">MY GALLERY</span></div>
    <div class="my-friends"><span onclick="Profile.selectMyInfo(2)">MY FRIENDS</span></div>
  </div>
  <div class="my-info-content-box" id="my-info-content-box">
    <div id="about-me" style="display: none">
        <%@include file="AboutMe.jsp"%>
    </div>
    <div id="my-gallery"style="display: block">
        <%@include file="MyGallery.jsp"%>
    </div>
    <div id="my-friends" style="display: none">
        <%@include file="MyFriends.jsp"%>
    </div>
  </div>
</div>
</body>
</html>
