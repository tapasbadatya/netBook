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
</head>
<link href="styles/FriendList.css" rel="stylesheet">

<body>

<div id="friend-list" class="friend-list uns">

  <ul id="friend-list-ul">
    <li>
      <a href="#">
        <div class="friend-box" onclick="Chat.openChatWindow()">
          <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="color:<%=textColor%>;position: relative;top: -5px"> Manas Ranjan</span>
        </div>
      </a>
      <div style="height: 5px"></div>
    </li>
    <li>
      <a href="#">
        <div class="friend-box" onclick="Chat.openChatWindow()">
          <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="color:<%=textColor%>;position: relative;top: -5px"> Rajesh Pradhan</span>
        </div>
      </a>
      <div style="height: 5px"></div>
    </li>

    <li>
      <a href="#">
        <div class="friend-box" onclick="Chat.openChatWindow()">
          <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="color:<%=textColor%>;position: relative;top: -5px"> Tushar Panda</span>
        </div>
      </a>
      <div style="height: 5px"></div>
    </li>
    <li>
      <a href="#">
        <div class="friend-box" onclick="Chat.openChatWindow()">
          <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="color:<%=textColor%>;position: relative;top: -5px"> Sourav Sahu</span>
        </div>
      </a>
      <div style="height: 5px"></div>
    </li>
    <li>
      <a href="#">
        <div class="friend-box" onclick="Chat.openChatWindow()">
          <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="color:<%=textColor%>;position: relative;top: -5px"> Izzat Kumar</span>
        </div>
      </a>
      <div style="height: 5px"></div>
    </li>
    <li>
      <a href="#">
        <div class="friend-box" onclick="Chat.openChatWindow()">
          <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="color:<%=textColor%>;position: relative;top: -5px"> Ashish Raul</span>
        </div>
      </a>
      <div style="height: 5px"></div>
    </li>
    <li>
      <a href="#">
        <div class="friend-box" onclick="Chat.openChatWindow()">
          <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="color:<%=textColor%>;position: relative;top: -5px"> Himanshu Singh</span>
        </div>
      </a>
      <div style="height: 5px"></div>
    </li>
    <li>
      <a href="#">
        <div class="friend-box" onclick="Chat.openChatWindow()">
          <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="color:<%=textColor%>;position: relative;top: -5px"> Ravindra Kumar</span>
        </div>
      </a>
      <div style="height: 5px"></div>
    </li>
    <li>
      <a href="#">
        <div class="friend-box" onclick="Chat.openChatWindow()">
          <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="color:<%=textColor%>;position: relative;top: -5px"> Santosh Kumar</span>
        </div>
      </a>
      <div style="height: 5px"></div>
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
