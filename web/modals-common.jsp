<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.FileDescriptor" %>
<%@ page import="java.io.InputStreamReader" %>
<%--
  Created by IntelliJ IDEA.
  User: Tapas
  Date: 21-05-2018
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<script src="scripts/Upload.js"></script>
<script src="scripts/profile.js"></script>
<script src="scripts/Note.js"></script>

<script>


  $(document).ready(function(){
    $("#color-canvas").click(function(){
      $("#cv1").fadeToggle(100);
      $("#cv2").fadeToggle(200);
      $("#cv3").fadeToggle(300);
      $("#cv4").fadeToggle(400);
      $("#cv5").fadeToggle(500);
      $("#cv6").fadeToggle(600);
      document.getElementById("my-write-text").style.color="#797979";
    });
  });
  $(document).ready(function(){
    $("#cv1").click(function(){
      $("#cv1").fadeToggle(100);$("#cv2").fadeToggle(200);$("#cv3").fadeToggle(300);$("#cv4").fadeToggle(400);$("#cv5").fadeToggle(500);$("#cv6").fadeToggle(600);
      document.getElementById("color-canvas").style.color="#ba0000";
      document.getElementById("my-write-text").style.color="#ba0000";
    });
  });
  $(document).ready(function(){
    $("#cv2").click(function(){
      $("#cv1").fadeToggle(100);$("#cv2").fadeToggle(200);$("#cv3").fadeToggle(300);$("#cv4").fadeToggle(400);$("#cv5").fadeToggle(500);$("#cv6").fadeToggle(600);
      document.getElementById("color-canvas").style.color="#0bbe00";
      document.getElementById("my-write-text").style.color="#0bbe00";
    });
  });
  $(document).ready(function(){
    $("#cv3").click(function(){
      $("#cv1").fadeToggle(100);$("#cv2").fadeToggle(200);$("#cv3").fadeToggle(300);$("#cv4").fadeToggle(400);$("#cv5").fadeToggle(500);$("#cv6").fadeToggle(600);
      document.getElementById("color-canvas").style.color="#a276dc";
      document.getElementById("my-write-text").style.color="#a276dc";
    });
  });
  $(document).ready(function(){
    $("#cv4").click(function(){
      $("#cv1").fadeToggle(100);$("#cv2").fadeToggle(200);$("#cv3").fadeToggle(300);$("#cv4").fadeToggle(400);$("#cv5").fadeToggle(500);$("#cv6").fadeToggle(600);
      document.getElementById("color-canvas").style.color="#26a1dc";
      document.getElementById("my-write-text").style.color="#26a1dc";
    });
  });
  $(document).ready(function(){
    $("#cv5").click(function(){
      $("#cv1").fadeToggle(100);$("#cv2").fadeToggle(200);$("#cv3").fadeToggle(300);$("#cv4").fadeToggle(400);$("#cv5").fadeToggle(500);$("#cv6").fadeToggle(600);
      document.getElementById("color-canvas").style.color="#dc9c0b";
      document.getElementById("my-write-text").style.color="#dc9c0b";
    });
  });
  $(document).ready(function(){
    $("#cv6").click(function(){
      $("#cv1").fadeToggle(100);$("#cv2").fadeToggle(200);$("#cv3").fadeToggle(300);$("#cv4").fadeToggle(400);$("#cv5").fadeToggle(500);$("#cv6").fadeToggle(600);
      document.getElementById("color-canvas").style.color="#5d5d5d";
      document.getElementById("my-write-text").style.color="#5d5d5d";
    });
  });

</script>
<div class="modal fade" id="show-profile-modal" role="dialog" align="center">
  <div class="modal-dialog">
    <div class="modal-content" style="width: 80%">
      <div class="modal-body">
        <%--<img src="images/tapas.jpg" class="img-responsive">--%>
        <div class="card">
          <img src="images/tapas.jpg" style="width:100%">
          <div class="container" align="left">
            <h5><b style="color: <%=color%>;position: relative;left: -16px">Tapas Kumar Badatya</b></h5>
            <b style="position: relative;left: -16px"> with DAD's love </b>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<input type="file" id="fileId" style="display: none">
<input type="file" id="filesId" multiple style="display: none">

<div class="modal fade uns" id="upload-write-text" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="fa fa-edit" style="color: #D9534F"></i> Start your day</h4>
      </div>
      <div class="modal-body">
        <div class="row" style="position: relative;top: -15px">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div>
              <%@include file="TextFormatBox.jsp"%>
            </div>

          </div>
        </div>
      </div>
      <div class="modal-footer">
        <i id="color-canvas" class="material-icons color-canvas" style="color: #878787;">color_lens</i>
        <i id="cv1" class="material-icons color-canvas" style="color: #ba0000">fiber_manual_record</i>
        <i id="cv2" class="material-icons color-canvas" style="color: #0bbe00">fiber_manual_record</i>
        <i id="cv3" class="material-icons color-canvas" style="color: #a276dc">fiber_manual_record</i>
        <i id="cv4" class="material-icons color-canvas" style="color: #26a1dc">fiber_manual_record</i>
        <i id="cv5" class="material-icons color-canvas" style="color: #dc9c0b">fiber_manual_record</i>
        <i id="cv6" class="material-icons color-canvas" style="color: #5d5d5d">fiber_manual_record</i>
        <i class="fa fa-tag tag-friend"></i>
        <button type="button" class="btn btn-danger">Post</button>
      </div>
    </div>
  </div>
</div>


<div class="modal fade uns" id="upload-image-video" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="fa fa-image" style="color: #5CB85C"></i> Upload image/video</h4>
      </div>
      <div class="modal-body">
        <div id="browse-image-video-box">
          <textarea id="upload-image-video-textarea" placeholder="Write something about your post..."
                    onkeyup="Utils.setTextAreaText('upload-image-video-textarea')"></textarea>
          <div id="browsed-image-video-area">

          </div>
          <i id="upload-add-gallery" class="material-icons add-gallery" onclick="Upload.displayBrowsedContents('filesId','browsed-image-video-area',5,'gallery')">add_to_photos</i>
        </div>
      </div>
      <div class="modal-footer">
        <div class="footer-options">
          <%--<button><i class="fa fa-columns"></i> Apply Compare</button>--%>
          <button type="button" class="btn btn-success" onclick="Upload.checkValidFile('filesId','gallery')">Post</button>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="modal fade uns" id="upload-add-file" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="fa fa-file-text-o" style="color: #337AB7"></i> Upload file</h4>
      </div>
      <div class="modal-body">
        <div id="browse-file-box">
          <textarea id="upload-file-textarea" placeholder="Write something about your post..."
                    onkeyup="Utils.setTextAreaText('upload-file-textarea')"></textarea>

          <div id="browsed-file-area">

          </div>

          <i id="upload-add-files" class="material-icons add-gallery" onclick="Upload.displayBrowsedContents('filesId','browsed-file-area',5,'file')">add_to_photos</i>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Post</button>
      </div>
    </div>
  </div>
</div>


<div class="modal fade uns" id="account-setting" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="fa fa-user-o" style="color: #16a9ff"></i> Account Setting</h4>
      </div>
      <div class="modal-body" align="center">

        <table>
          <tr><td width="180" height="40"><div class="title"><i class="fa fa-lock"></i> Change Password</div></td><td width="10"></td><td></td></tr>
          <tr><td height="40">Current Password</td><td></td><td><input type="password"></td></tr>
          <tr><td height="40">New password</td><td></td><td><input type="password"></td></tr>
          <tr><td height="40">Confirm password</td><td></td><td><input type="password"></td></tr>
          <tr><td height="40"></td><td></td><td><button class="btn btn-success"><i class="material-icons mi-icon">lock_outline</i> Update Password</button></td></tr>
          <tr><td height="40" colspan="3"><div class="title"><i class="fa fa-user-times"></i> Delete or Deactivate Your Account</div></td></tr>
          <tr><td height="40"><button class="btn btn-danger"><i class="fa fa-trash-o"></i> Delete Account</button></td><td></td>
            <td><button class="btn btn-warning"><i class="material-icons mi-icon">block</i> Deactivate Account</button></td></tr>


        </table>
      </div>
    </div>
  </div>
</div>


<div class="modal fade uns" id="privacy-setting" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="fa fa-eye-slash" style="color: #48ac63;font-size: 22px"></i> Privacy Setting</h4>
      </div>
      <div class="modal-body" align="center">
        <div class="privacy-setting-box" align="left">
          <div class="title"><i class="fa fa-search"></i><span> Search Preferences</span></div>
          <div class="content"><input type="radio" name="s1"> Allow search to index your name</div>
          <div class="content"><input type="radio" name="s1"> Allow search to index your email</div>
          <div class="content"><input type="radio" name="s1"> Allow search to index all</div>

          <div class="title"><i class="material-icons" style="font-size:18px;position: relative;top: 4px">message</i><span> Message Preferences</span></div>
          <div class="content"><input type="radio" name="m1"> Allow any person on netBook to send me messages</div>
          <div class="content"><input type="radio" name="m1"> Allow any person on netBook I follow to send me messages</div>
          <div class="content"><input type="radio" name="m1"> Allow no one to send me messages</div>
        </div>
      </div>
    </div>
  </div>
</div>



<div class="modal fade uns" id="chat-setting" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="material-icons" style="font-size:24px;position: relative;top: 7px;color: coral">message</i> Chat Setting</h4>
      </div>
      <div class="modal-body">
        <div class="title"><i class="fa fa-eye"></i><span> Last Seen</span></div>
        <div class="content"><input type="radio" name="ls1"><span> Everyone</span></div>
        <div class="content"><input type="radio" name="ls1"><span> Nobody</span></div>
        <div class="title"><i class="fa fa-eye"></i><span> Read Receipts</span>
          <input type="checkbox">
        </div>
        <div class="desc"><span><i class="fa fa-info-circle"></i> If you turn off read receipts, you won't be able to see read receipts from other people</span></div>
        <div class="title"><i class="material-icons" style="font-size:20px;position: relative;top: 4px;color: coral">block</i><span> Blocked Users</span></div>

      </div>
      <%--<div class="modal-footer">
      </div>--%>
    </div>
  </div>
</div>

<div class="modal fade uns" id="create-group" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="material-icons" style="font-size:28px;position: relative;top: 7px;color: cornflowerblue">group_add</i> Create Group</h4>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

<div class="modal fade uns" id="share-post" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left">
          <i class="material-icons" style="font-size:28px;position: relative;top: 7px;color: #337AB7">call_made</i> Share</h4>
        <select>
          <option onclick="Post.showShareWithFriendInputBox('share-friend-box',false)">Share with you</option>
          <option onclick="Post.showShareWithFriendInputBox('share-friend-box',true)">Share with a friend</option>
          <option onclick="Post.showShareWithFriendInputBox('share-friend-box',true)">Share with a group</option>
        </select>
        <div id="share-friend-box" style="display: none">
          <span id="selected-friend"></span><input type="text" placeholder="Search for a friend">
        </div>
      </div>
      <div class="modal-body">
        <div class="share-post-box">
          <textarea id="write-share" placeholder="Write something about your share" onkeyup="Utils.setTextAreaText('write-share')"></textarea>
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
              <img src="images/underwater.jpg" class="img-responsive">
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-9">
              <span>Wow...feeling awesome today</span>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <%--<div class="share-with">
          <i class="fa fa-facebook-square"></i>
          <i class="fa fa-twitter-square"></i>
          <i class="fa fa-google-plus-square"></i>
          <i class="fa fa-linkedin-square"></i>
        </div>--%>
        <button class="btn btn-primary">Share</button>

      </div>
    </div>
  </div>
</div>
