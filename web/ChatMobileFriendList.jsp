<%--
  Created by IntelliJ IDEA.
  User: Tapas
  Date: 03-05-2018
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title></title>

  <link href="styles/ChatMobileFriendList.css" rel="stylesheet">


</head>

<style>
/*  .friend-box .profile-info .last-msg{
    color: <%=color%>;
  }*/
</style>
<body>

<div id="friend-list" class="friend-list uns" onmouseover="Utils.applyScrollBar('friend-list','H',true)" onmouseout="Utils.applyScrollBar('friend-list','H',false)">

  <ul id="friend-list-ul">
    <li>
      <a href="ChatMobileWindow.jsp">
        <div class="friend-box">
          <div class="profile-pic">
            <i class="fa fa-user-circle"></i>
          </div>
          <div class="profile-info">
            <div class="profile-name"> Manas Ranjan <i class="fa fa-circle"></i> </div>
            <div class="last-msg">Come soon, we ll have party <i>07:48 AM</i></div>
          </div>
        </div>
      </a>
      <div style="height: 7px"><div class="h-line"></div></div>
    </li>

    <li>
      <a href="#">
        <div class="friend-box">
          <div class="profile-pic">
            <i class="fa fa-user-circle"></i>
          </div>
          <div class="profile-info">
            <div class="profile-name"> Dipak Kumar  </div>
            <div class="last-msg">Mera medicine leke aana bhai <i>07:48 AM</i></div>
          </div>
        </div>
      </a>
      <div style="height: 7px"><div class="h-line"></div></div>
    </li>
    <li>
      <a href="#">
        <div class="friend-box">
          <div class="profile-pic">
            <i class="fa fa-user-circle"></i>
          </div>
          <div class="profile-info">
            <div class="profile-name"> Masoom ALi <i class="fa fa-circle"></i> </div>
            <div class="last-msg">Quora me post kiya, like maro <i>07:48 AM</i></div>
          </div>
        </div>
      </a>
      <div style="height: 7px"><div class="h-line"></div></div>
    </li>
    <li>
      <a href="#">
        <div class="friend-box">
          <div class="profile-pic">
            <i class="fa fa-user-circle"></i>
          </div>
          <div class="profile-info">
            <div class="profile-name"> Saba Sultana <i class="fa fa-circle"></i> </div>
            <div class="last-msg">Party karenge... <i>07:48 AM</i></div>
          </div>
        </div>
      </a>
      <div style="height: 7px"><div class="h-line"></div></div>
    </li>
    <li>
      <a href="#">
        <div class="friend-box">
          <div class="profile-pic">
            <i class="fa fa-user-circle"></i>
          </div>
          <div class="profile-info">
            <div class="profile-name"> Rajesh Pradhan  </div>
            <div class="last-msg">Let's meet <i>07:48 AM</i></div>
          </div>
        </div>
      </a>
      <div style="height: 7px"><div class="h-line"></div></div>
    </li>
  </ul>

</div>

</body>
</html>
