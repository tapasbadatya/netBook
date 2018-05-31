<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25-05-2018
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>

<div class="modal fade uns" id="edit-profile-modal" role="dialog" align="center">
  <div class="modal-dialog">
    <div class="modal-content" id="set-edit-profile-modal">
      <div class="modal-body">
        <div class="row update-profile-box">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" align="center">
            <img id="edit-profile-pic" src="images/tapas.jpg" class="img-responsive">
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="upload-pic" id="upload-profile-pic" onclick="Upload.displayBrowsedImage('fileId','edit-profile-pic')"><button class="btn btn-success"><i class="fa fa-folder-open-o" style="font-size: 18px"></i> Browse Picture</button></div>
            <div class="edit-name"><input type="text" placeholder="Edit your name"></div>
            <div class="edit-status"><input type="text" placeholder="Edit your status"></div>
            <div class="select-pic-title" align="left">
              <span>Select pic from profile gallery</span>
            </div>
            <div class="select-pic">
              <img src="images/tapas.jpg"><img src="images/tapas.jpg"><img src="images/tapas.jpg"><img src="images/tapas.jpg"><img src="images/tapas.jpg"><img src="images/tapas.jpg"><img src="images/tapas.jpg"><img src="images/tapas.jpg"><img src="images/tapas.jpg"><img src="images/tapas.jpg"><img src="images/tapas.jpg"><img src="images/tapas.jpg">
            </div>
            <div class="update-profile"><button class="btn btn-primary"><i class="fa fa-user-o" style="font-size: 16px"></i> Update Profile</button></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="modal fade uns" id="edit-about-me" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="fa fa-user-o" style="color: #f670d0"></i> Update your personal info</h4>
      </div>
      <div class="modal-body">
        <div class="edit-about-me-box">

          <div class="display-about-me">

          </div>
          <div class="add-content" align="center" onclick="Profile.addContentForEditAboutMe()">
            <i class="fa fa-plus-circle"></i><span> Add Content</span>
          </div>

          <div id="add-content-area" style="display: none" class="add-content-area">
            <%--<div class="row">
              <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                <input type="text" class="title-input" placeholder="Title">
              </div>
              <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2" align="left">
                <i class="fa fa-times-circle"></i>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <input type="text" class="label-input" placeholder="Label">
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <input type="text" class="value-input" placeholder="Value">
              </div>
              <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                <i class="fa fa-plus"></i>
              </div>
              <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                <i class="fa fa-close"></i>
              </div>
            </div>
            <div class="row" id="add-label-value-area">
              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <input type="text" class="label-input" placeholder="Label">
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <input type="text" class="value-input" placeholder="Value">
              </div>
              <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                <i class="fa fa-plus"></i>
              </div>
              <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2">
                <i class="fa fa-close"></i>
              </div>
            </div>--%>
          </div>

        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Update</button>
      </div>
    </div>
  </div>
</div>

