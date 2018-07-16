<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: Tapas
  Date: 03-05-2018
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Welcome to netBook</title>
</head>
<link href="styles/ShowPost.css" rel="stylesheet">
<script src="scripts/post-overlay.js"></script>
<script src="scripts/Utils.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

</script>
<%
  SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
  Date date=new Date();
  String sDate =date.getHours()+":"+date.getMinutes()+"&nbsp;&nbsp;&nbsp;"+ formatter.format(date);
%>
<body>


  <div id="show-posts" class="show-posts uns" align="center">

    <div class="post-box">
      <div class="post-profile">
        <i class="fa fa-user-circle"></i><span class="name"> Manas Ranjan</span><span class="time"><%=sDate%></span>
      </div><br><br>
      <div class="post-content" align="center">
        <img id="post1" src="images/bg5.jpg" class="img-responsive" onclick="clPostOverlay.showPostOverlay('post1')">
      </div>
      <div class="post-status">
        <span># Best princes in this world is my daughter</span>
      </div>
      <div class="actions" align="left">
        <ul>
          <li><i id="like1" class="fa fa-heart-o" onclick="Post.likeToggle(this)"></i></li>
          <%--<li id="unlike1" style="display: none"><i class="fa fa-heart"></i></li>--%>
          <li><i class="fa fa-comment-o" onclick="Post.commentToggle('comment1')"></i></li>
          <li class="share"><i class="material-icons mi-icon" data-toggle="modal" data-target="#share-post">call_made</i>
            <span class="social-share">
              <i data-toggle="modal" data-target="#share-post-FB" class="fa fa-facebook-square" onclick="Utils.newWindow()"></i>
              <i data-toggle="modal" data-target="#share-post-twitter" class="fa fa-twitter-square"></i>
              <i data-toggle="modal" data-target="#share-post-googleplus" class="fa fa-google-plus-square"></i>
              <i data-toggle="modal" data-target="#share-post-linkedin" class="fa fa-linkedin-square"></i>
            </span>
          </li>
        </ul>
      </div>
      <div class="user-likes" align="left">
        <i class="fa fa-heart"></i><span> Manas Ranjan, Ashish Raul, Himanshu Singh and 21 others</span>
      </div>
      <%--<div class="h-line"></div>--%>
      <div class="comment-box" align="left">
        <div class="user-comment">
          <i class="fa fa-user-circle pic"></i><span class="name">Manas Ranjan</span>
          <span class="comment">Nice pic bro !</span>
          <span class="comment-like"><i class="fa fa-heart"></i><span> 3</span></span>
        </div>
        <div class="write-comment" align="center">
          <input id="comment1" type="text" placeholder="Write a comment here..." style="display: none">
        </div>
      </div>
    </div>

    <div style="height: 10px"></div>

    <div class="post-box">
      <div class="post-profile">
        <i class="fa fa-user-circle"></i><span class="name"> Manas Ranjan</span><span class="time"><%=sDate%></span>
      </div><br><br>
      <div class="post-content" align="center">
        <i class="fa fa-file-text-o" style="font-size: 30px;"></i><span style="position: relative;top: -5px"> Test.java</span>
      </div>
      <div class="post-status">
        <span></span>
      </div>
      <div class="actions" align="left">
        <ul>
          <li><i id="like2" class="fa fa-heart-o" onclick="Post.likeToggle(this)"></i></li>
          <li><i class="fa fa-comment-o" onclick="Post.commentToggle('comment2')"></i></li>
          <li class="share"><i class="material-icons mi-icon" data-toggle="modal" data-target="#share-post">call_made</i>
            <%--<span class="social-share">
              <i data-toggle="modal" data-target="#share-post-FB" class="fa fa-facebook-square" onclick="Utils.newWindow()"></i>
              <i data-toggle="modal" data-target="#share-post-twitter" class="fa fa-twitter-square"></i>
              <i data-toggle="modal" data-target="#share-post-googleplus" class="fa fa-google-plus-square"></i>
              <i data-toggle="modal" data-target="#share-post-linkedin" class="fa fa-linkedin-square"></i>
            </span>--%>
          </li>
        </ul>
      </div>
      <%--<div class="user-likes" align="left">
        <i class="fa fa-heart"></i><span> Manas Ranjan, Ashish Raul, Himanshu Singh and 21 others</span>
      </div>--%>
      <%--<div class="h-line"></div>--%>
      <div class="comment-box" align="left">
        <%--<div class="user-comment">
          <i class="fa fa-user-circle pic"></i><span class="name">Manas Ranjan</span>
          <span class="comment">Nice pic bro !</span>
          <span class="comment-like"><i class="fa fa-heart"></i><span> 3</span></span>
        </div>--%>
          <div class="write-comment" align="center">
            <input id="comment2" type="text" placeholder="Write a comment here..." style="display: none">
          </div>
      </div>

    </div>

    <div style="height: 10px"></div>

    <div class="post-box">
      <div class="post-profile">
        <i class="fa fa-user-circle"></i><span class="name"> Manas Ranjan</span><span class="time"><%=sDate%></span>
      </div><br><br>
      <div class="post-content" align="center">
        <label>Hello Friends...!</label>
      </div>
      <div class="post-status">
        <span></span>
      </div>
      <div class="actions" align="left">
        <ul>
          <li><i id="like3" class="fa fa-heart-o" onclick="Post.likeToggle(this)"></i></li>
          <li><i class="fa fa-comment-o" onclick="Post.commentToggle('comment3')"></i></li>
          <li class="share"><i class="material-icons mi-icon" data-toggle="modal" data-target="#share-post">call_made</i>
            <span class="social-share">
              <i data-toggle="modal" data-target="#share-post-FB" class="fa fa-facebook-square" onclick="Utils.newWindow()"></i>
              <i data-toggle="modal" data-target="#share-post-twitter" class="fa fa-twitter-square"></i>
              <i data-toggle="modal" data-target="#share-post-googleplus" class="fa fa-google-plus-square"></i>
              <i data-toggle="modal" data-target="#share-post-linkedin" class="fa fa-linkedin-square"></i>
            </span>
          </li>
        </ul>
      </div>
      <%--<div class="user-likes" align="left">
        <i class="fa fa-heart"></i><span> Manas Ranjan, Ashish Raul, Himanshu Singh and 21 others</span>
      </div>--%>
      <%--<div class="h-line"></div>--%>
      <div class="comment-box" align="left">
        <div class="user-comment">
          <i class="fa fa-user-circle pic"></i><span class="name">Manas Ranjan</span>
          <span class="comment">Nice pic bro !</span>
          <span class="comment-like"><i class="fa fa-heart"></i><span> 3</span></span>
        </div>
        <div class="write-comment" align="center">
          <input id="comment3" type="text" placeholder="Write a comment here..." style="display: none">
        </div>
      </div>
    </div>

    <div style="height: 10px"></div>

    <div class="post-box">
      <div class="post-profile">
        <i class="fa fa-user-circle"></i><span class="name"> Manas Ranjan</span><span class="time"><%=sDate%></span>
      </div><br><br>
      <div class="post-content" align="center">
        <img id="post4" src="images/royal%20enfield2.jpg" class="img-responsive" onclick="clPostOverlay.showPostOverlay('post4')">
      </div>
      <div class="post-status">
        <span>Ufff...My Dream Bike</span>
      </div>
      <div class="actions" align="left">
        <ul>
          <li><i id="like4" class="fa fa-heart-o" onclick="Post.likeToggle(this)"></i></li>
          <li><i class="fa fa-comment-o" onclick="Post.commentToggle('comment4')"></i></li>
          <li class="share"><i class="material-icons mi-icon" data-toggle="modal" data-target="#share-post">call_made</i>
            <span class="social-share">
              <i data-toggle="modal" data-target="#share-post-FB" class="fa fa-facebook-square" onclick="Utils.newWindow()"></i>
              <i data-toggle="modal" data-target="#share-post-twitter" class="fa fa-twitter-square"></i>
              <i data-toggle="modal" data-target="#share-post-googleplus" class="fa fa-google-plus-square"></i>
              <i data-toggle="modal" data-target="#share-post-linkedin" class="fa fa-linkedin-square"></i>
            </span>
          </li>
        </ul>
      </div>
      <div class="user-likes" align="left">
        <i class="fa fa-heart"></i><span> Manas Ranjan, Ashish Raul</span>
      </div>
      <%--<div class="h-line"></div>--%>
      <div class="comment-box" align="left">
        <div class="user-comment">
          <i class="fa fa-user-circle pic"></i><span class="name">Manas Ranjan</span>
          <span class="comment">Nice pic bro !</span>
          <span class="comment-like"><i class="fa fa-heart"></i><span> 3</span></span>
        </div>
        <div class="write-comment" align="center">
          <input id="comment4" type="text" placeholder="Write a comment here..." style="display: none">
        </div>
      </div>
    </div>

    <div style="height: 10px"></div>



    <div class="post-box">
      <div class="post-profile">
        <i class="fa fa-user-circle"></i><span class="name"> Manas Ranjan</span><span class="time"><%=sDate%></span>
      </div><br><br>
      <div class="post-content" align="center">
        <video autoplay loop muted controls id="post5" src="videos/myvideo.mp4">
        </video>
      </div>
      <div class="post-status">
        <span>Good Morning Friends</span>
      </div>
      <div class="actions" align="left">
        <ul>
          <li><i id="like5" class="fa fa-heart-o" onclick="Post.likeToggle(this)"></i></li>
          <li><i class="fa fa-comment-o" onclick="Post.commentToggle('comment5')"></i></li>
          <li class="share"><i class="material-icons mi-icon" data-toggle="modal" data-target="#share-post">call_made</i>
            <span class="social-share">
              <i data-toggle="modal" data-target="#share-post-FB" class="fa fa-facebook-square" onclick="Utils.newWindow()"></i>
              <i data-toggle="modal" data-target="#share-post-twitter" class="fa fa-twitter-square"></i>
              <i data-toggle="modal" data-target="#share-post-googleplus" class="fa fa-google-plus-square"></i>
              <i data-toggle="modal" data-target="#share-post-linkedin" class="fa fa-linkedin-square"></i>
            </span>
          </li>
        </ul>
      </div>
      <div class="user-likes" align="left">
        <i class="fa fa-heart"></i><span> Manas Ranjan, Ashish Raul</span>
      </div>
      <%--<div class="h-line"></div>--%>
      <div class="comment-box" align="left">
        <div class="user-comment">
          <i class="fa fa-user-circle pic"></i><span class="name">Manas Ranjan</span>
          <span class="comment">Nice pic bro !</span>
          <span class="comment-like"><i class="fa fa-heart"></i><span> 3</span></span>
        </div>
        <div class="write-comment" align="center">
          <input id="comment5" type="text" placeholder="Write a comment here..." style="display: none">
        </div>
      </div>
    </div>

    <div style="height: 10px"></div>

  </div>



</body>

<%--<div>
  <%@include file="post-overlay.jsp" %>
</div>--%>

</html>

