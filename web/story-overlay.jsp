<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 21-06-2018
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>

<link href="styles/story-overlay.css" rel="stylesheet">

<center>
  <div id="story-overlay" style="display: none" align="center">
    <div class="story-box-bg" onclick="clStoryOverlay.close()"></div>

    <div class="story-box">
      <div id="story-progress" align="left">
        <div id="progress-bar"></div>
      </div>
      <div class="content">
        <img src="images/royal%20enfield2.jpg" class="img-responsive" onmousedown="clStoryOverlay.pause()" onmouseup="clStoryOverlay.play()">
      </div>

    </div>

  </div>
</center>
<script src="scripts/story-overlay.js"></script>
