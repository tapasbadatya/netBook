<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 03-05-2018
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<link href="styles/chat-window.css" rel="stylesheet">
<script src="scripts/Chat.js"></script>
<style>
  .chat-footer{
    background: <%=colorFade%>;
  }

</style>

<body>

  <div id="chat-box" class="chat-box" style="border: 1px solid <%=color%>;">
    <div class="chat-header nb-color"  onclick="Chat.toggleChatWindow()">
      <i class="fa fa-user-circle" style="font-size:18px;"></i><span style="position: relative;top: -2px;font-size: 12px"> Rajesh Pradhan</span>
      <i class="fa fa-close chat-close" style="font-size:14px;color: white" onclick="Chat.closeChatWindow()"></i>
    </div>
    <div id="chat-body">
      <div class="chat-body">

      </div>
      <div class="chat-footer">
        <input type="text" placeholder="Text here...">
        <div class="chat-add-emoji col-sm-4" align="center"><i class="fa fa-smile-o" style="font-size:16px;"></i></div>
        <div class="chat-add-pic col-sm-4" align="center"><i class="fa fa-photo" style="font-size:15px;"></i></div>
        <div class="chat-add-file col-sm-4" align="center"><i class="fa fa-file-text-o" style="font-size: 15px;"></i></div>
      </div>
    </div>

  </div>

</body>
</html>
