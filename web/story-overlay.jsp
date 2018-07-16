<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 21-06-2018
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="styles/story-overlay.css" rel="stylesheet">

<center>
  <div id="story-overlay" style="display: none" align="center">
    <div class="story-box-bg" onclick="clStoryOverlay.close()"></div>

    <div class="story-box">

      <div class="user-info">
        <div class="pic"><i class="fa fa-user-circle"></i> </div>
        <div class="name">Manas Ranjan</div>
      </div>

      <div id="story-progress" align="left">
        <div id="progress-bar"></div>
      </div>
      <div class="content">
        <img id="story-content" src="images/royal%20enfield2.jpg" class="img-responsive" onmousedown="clStoryOverlay.pause()" onmouseup="clStoryOverlay.play()">
        <div class="about">
          <p>My best princes in this world is my daughter</p>
        </div>
      </div>

      <div class="comment-box">
        <div class="input-box">
          <i class="fa fa-comment-o"></i> <input type="text" placeholder="Write something about this story..." onfocus="clStoryOverlay.pause()" onblur="clStoryOverlay.play()"><i class="fa fa-heart-o"></i>
        </div>

      </div>

    </div>

  </div>
</center>
<script src="scripts/story-overlay.js"></script>
