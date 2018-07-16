<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="styles/post-overlay.css" rel="stylesheet">
<style>

</style>
<script>




</script>
<body>--%>
<link href="styles/post-overlay.css" rel="stylesheet">

<div id="post-overlay" style="display: none;background-color: black">



  <div class="container-fluid" >

    <div id="ol-content-box" class="ol-content-box" >
      <div class="row">
        <div class="ol-close"><i class="fa fa-close" onclick="clPostOverlay.closePostOverlay()"></i> </div>
      </div>
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
          <div class="ol-post-content" align="left">
            <div class="img-magnifier-container">
              <img id="myimage" src="images/bg5.jpg" class="img-responsive">
            </div>
            <div class="ol-zoom-option" id="ol-zoom-option" onclick="clPostOverlay.zoomOver('myimage', 2);"><i class="fa fa-search-plus"></i> </div>
          </div>
        </div>

        <div class="col-lg-4 col-md-4 col-sm-5 col-xs-12">
          <div class="ol-post-info">
            <div class="user-box" align="left">
              <i class="fa fa-user-circle pic"></i> <span class="name">Manas Ranjan</span>
              <i class="fa fa-edit"></i>
            </div>

            <div class="ol-post-status" align="left">
              <span>Best princes in the world is my daughter !</span>
            </div>

            <div class="actions" align="left">
              <ul>
                <li><i id="like" class="fa fa-heart-o" onclick="Post.likeToggle(this)"></i></li>
                <li><i class="fa fa-comment-o"></i></li>
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

            <div class="ol-show-liked" align="left">
              <i class="fa fa-heart"></i><span><a href="#"> Ashish Raul, Santosh Kumar, Izzat Kumar and  10 Others</a></span>
            </div>

            <div class="ol-show-comments" id="ol-show-comments" align="left">
              <i class="fa fa-user-circle"></i><label> Rajesh Pradhan</label><span>Super...</span><br>

            </div>

          </div>
        </div>
      </div>
    </div>
  </div>

</div>

<%--<script src="scripts/post-overlay.js" type="javascript"/>--%>