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

  <link href="styles/ChatFriendList.css" rel="stylesheet">


</head>

<style>
  .friend-box .profile-info .last-seen{
    color: <%=color%>;
  }
</style>
<body>

<div id="friend-list" class="friend-list uns" onmouseover="Utils.applyScrollBar('friend-list','v',true)" onmouseout="Utils.applyScrollBar('friend-list','v',false)">

  <ul id="friend-list-ul">
    <li>
      <a href="#">
        <div class="friend-box">
          <div class="profile-pic">
            <i class="fa fa-user-circle"></i>
          </div>
          <div class="profile-info">
            <div class="profile-name"> Manas Ranjan</div>
            <div class="last-seen">Last seen 17-05-2018 07:38 AM</div>
          </div>
        </div>
      </a>
      <div style="height: 7px"><div class="h-line"></div></div>    </li>

    <li>
      <a href="#">
        <div class="friend-box">
          <div class="profile-pic">
            <i class="fa fa-user-circle"></i>
          </div>
          <div class="profile-info">
            <div class="profile-name"> Rajest Pradhan</div>
            <div class="last-seen">Last seen 17-05-2018 07:38 AM</div>
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
            <div class="profile-name"> Tushar Panda</div>
            <div class="last-seen">Last seen 17-05-2018 07:38 AM</div>
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
            <div class="profile-name"> Masoom Ali</div>
            <div class="last-seen">Last seen 17-05-2018 07:38 AM</div>
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
            <div class="profile-name"> Dipak Kumar</div>
            <div class="last-seen">Last seen 17-05-2018 07:38 AM</div>
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
            <div class="profile-name"> Saba Sultana</div>
            <div class="last-seen">Last seen 17-05-2018 07:38 AM</div>
          </div>
        </div>
      </a>
      <div style="height: 7px"><div class="h-line"></div></div>
    </li>




  </ul>

  <%--<div class="friend-box" onclick="clChat.openChatWindow()">
    <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="position: relative;top: -5px"> Rajesh Pradhan</span>
    &lt;%&ndash;<span class="frnd-options">
      <i class="fa fa-comment frnd-message"></i><i class="fa fa-cog frnd-setting"></i><i class="fa fa-circle frnd-online"></i>
    </span>&ndash;%&gt;

  </div>--%>
</div>

</body>
</html>
