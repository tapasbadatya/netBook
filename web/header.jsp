











<div class="row" id="header">
  <nav class="navbar navbar-inverse navbar-fixed-top" style="border: none">



    <div class="container-fluid">
      <div id="app-title" class="app-title" align="right" style="display: none"><img src="images/logo.jpg"> netBook</div>
      <div class="navbar-header" id="nav-header">

        <button type="button" class="navbar-toggle menu-btn" data-toggle="collapse" data-target="#menu">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

        <div class="app-profile-box" id="app-profile-box" style="display: none">
          <a href="home.jsp"><img src="images/logo.jpg" class="app-logo"><span class="app-name">netBook</span></a>
        </div>
        <div class="app-profile-box" id="user-profile-box" style="display: none">
          <a href="profile.jsp"><img src="images/tapas.jpg" class="user-pic"><span class="app-name">Tapas Badatya</span></a>
        </div>

        <%--<div id="search-chat-frnd" class="search-chat">
          <input type="text" id="search-chat" placeholder="Search..." onkeyup="Chat.searchFriendToChat()"/>
        </div>--%>

        <div id="top-icons" class="top-icons" style="display: none">
          <%--<i id="edit-profile" class="fa fa-edit edit-profile" style="font-size: 19px;position: relative;left:5px;"></i>--%>
          <a href="#"><i id="search-modal" class="material-icons search" style="font-size:20px;position: relative;top: 0px;" data-toggle="modal" data-target="#searchModal">search</i></a>
          <%--<i id="chat-search" class="material-icons search" style="font-size:20px;position: relative;top: 0px;display: none" onclick="Chat.toggleSearchFriendToChatMobile()">search</i>--%>

          <a href="Notification.jsp"><i id="notification" class="material-icons notification" style="font-size:20px;position: relative;top: 0px">notifications</i></a>
          <a href="#"><i id="message" class="material-icons chat" style="font-size:20px;position: relative;top: 0px">message</i></a>
        </div>

      </div>
    </div>
    <div class="collapse navbar-collapse uns" id="menu">
      <%--<ul class="nav navbar-nav navbar-right menu-options">
        <li id="search"><a href="#"><i class="fa fa-search" style="font-size:22px;position: relative;top: 5px;left: 5px" data-toggle="modal" data-target="#searchModal"></i></a></li>
        <li><a href="home.jsp"><i class="fa fa-home" style="font-size:24px;position: relative;top: 3px"></i><span> Home</span></a></li>
        <li id="myprofile"><a href="profile.jsp"><i class="fa fa-user-circle" style="font-size:20px;position: relative;top: 5px"></i><span style="position: relative;top: 3px"> Profile</span></a></li>
        <li><a href="#" id="chat-link"><i class="material-icons" style="font-size:24px;position: relative;top: 4px">message</i><span style="position: relative;top: -3px"> Chat</span></a></li>
        <li><a href="#" id="notification-link" onclick="clHeader.toggleNotificationDropdown()"><i class="material-icons" style="font-size:26px;position: relative;top: 2px;left: -2px">notifications</i><span style="position: relative;top: -5px;left:-2px"> Notification</span></a></li>
        <li><a href="#" id="setting-link" onclick="clHeader.toggleSettingDropdown()"><i class="fa fa-cog" style="font-size:22px;position: relative;top: 4px"></i><span style="position: relative;top: 2px"> Setting</span></a></li>
        <li><a href="index.jsp"><i class="fa fa-sign-out" style="font-size:24px;position: relative;top: 4px"></i> Logout</a></li>
      </ul>--%>


        <ul class="nav navbar-nav navbar-right menu-options">
          <li id="search"><a href="#"><i class="fa fa-search" style="font-size:15px;position: relative;top: 4px;left: 5px" data-toggle="modal" data-target="#searchModal"></i></a></li>
          <li><a href="home.jsp"><i class="fa fa-home" style="font-size:18px;position: relative;top: 2px"></i><span style="position: relative;top: 1px"> Home</span></a></li>
          <li id="myprofile"><a href="profile.jsp"><i class="fa fa-user-circle" style="font-size:14px;position: relative;top: 2px"></i><span style="position: relative;top: 2px"> Profile</span></a></li>
          <li><a href="#" id="chat-link"><i class="material-icons" style="font-size:18px;position: relative;top: 4px">message</i><span style="position: relative;top: -1px"> Chat</span></a></li>
          <li><a href="#" id="notification-link" onclick="clHeader.toggleNotificationDropdown()"><i class="material-icons" style="font-size:20px;position: relative;top: 1px;left: -2px">notifications</i><span style="position: relative;top: -4px;left:-2px"> Notification</span></a></li>
          <li><a href="#" id="setting-link" onclick="clHeader.toggleSettingDropdown()"><i class="fa fa-cog" style="font-size:18px;position: relative;top: 3px"></i><span style="position: relative;top: 1px"> Setting</span></a></li>
          <li><a href="index.jsp"><i class="fa fa-sign-out" style="font-size:17px;position: relative;top: 2px"></i> Logout</a></li>
        </ul>


    </div>

    <div>
      <%@include file="post-overlay.jsp" %>
    </div>




  </nav>



</div>




