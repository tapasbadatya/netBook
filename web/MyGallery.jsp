<%--
  Created by IntelliJ IDEA.
  User: Tapas
  Date: 18-05-2018
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>

<div class="">
  <div class="caontainer-fluid">
    <div class="gallery-display-type">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"></div>
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"><i class="fa fa-align-justify" onclick="Profile.customizeGallery(100)"></i></div>
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"><i class="fa fa-th-large" onclick="Profile.customizeGallery(50)"></i></div>
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"><i class="fa fa-th" onclick="Profile.customizeGallery(25)"></i></div>
      </div>
    </div>
    <div id="gallery-display-content"> <%--onmouseover="Utils.applyScrollBar('gallery-display-content','v',true)"
         onmouseout="Utils.applyScrollBar('gallery-display-content','v',false)"
         onfocus="Utils.applyScrollBar('gallery-display-content','v',true)"
         onblur="Utils.applyScrollBar('gallery-display-content','v',false)"--%>

      <div class="row gallery-box">

        <div class="column gallery-column">
          <img src="images/mist.jpg">
          <img src="images/mountainskies.jpg">
          <img src="images/paris.jpg" >
          <img src="images/underwater.jpg" >
          <img src="images/wedding.jpg">
          <img src="images/rocks.jpg" >
        </div>
        <div class="column gallery-column">
          <img src="images/underwater.jpg">
          <img src="images/mountainskies.jpg" >
          <img src="images/rocks.jpg" >
          <img src="images/paris.jpg">
          <img src="images/wedding.jpg" >
          <img src="images/mist.jpg">

        </div>
        <div class="column gallery-column">
          <img src="images/wedding.jpg">
          <img src="images/paris.jpg">
          <img src="images/underwater.jpg">
          <img src="images/rocks.jpg">
          <img src="images/mist.jpg">
          <img src="images/mountainskies.jpg">
        </div>
        <div class="column gallery-column">
          <img src="images/wedding.jpg">
          <img src="images/paris.jpg">
          <img src="images/underwater.jpg">
          <img src="images/rocks.jpg">
          <img src="images/mist.jpg">
          <img src="images/mountainskies.jpg">
        </div>

      </div>


    </div>

  </div>
</div>

