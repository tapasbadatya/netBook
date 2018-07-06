<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25-05-2018
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>

<script src="scripts/MyStory.js"></script>


<div class="modal fade uns" id="show-birthdays" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="material-icons mi-icon">cake</i> Birthdays</h4>
      </div>
      <div class="modal-body">
        <div class="my-friend-birthdays-box">

          <%--<div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
              <span class="heading">Today</span>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
              <span class="heading">Upcoming</span>
            </div>
          </div>--%>
          <span class="heading">TODAY</span>

          <div class="row">
            <div style="height: 10px;"></div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs12 friend-birthday">
              <div class="row">
                <div class="pic"><img src="images/tapas.jpg" class="img-responsive"></div>
                <div class="name"><span>Tapas Kumar Badatya</span></div><br>
                <div class="age"><span>8th Sept 1994, 24 years old</span></div>
              </div>
              <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-9">
                  <textarea placeholder="Wish him on his birthday"></textarea>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-3">
                  <button class="btn btn-primary">Wish</button>
                </div>
              </div>
            </div>
          </div>


          <div class="heading"><span>UPCOMING</span></div>

            <div class="row">
              <div style="height: 10px;"></div>
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs12 friend-birthday">
                <div class="row">
                  <div class="pic"><img src="images/tapas.jpg" class="img-responsive"></div>
                  <div class="name"><span>Tapas Kumar Badatya</span></div><br>
                  <div class="age"><span>8th Sept 1994, 24 years old</span></div>
                </div>
                <div class="row">
                  <div class="col-lg-10 col-md-10 col-sm-10 col-xs-9">
                    <textarea placeholder="Wish him on his birthday"></textarea>
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-3">
                    <button class="btn btn-primary">Wish</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div style="height: 10px;"></div>
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs12 friend-birthday">
                <div class="row">
                  <div class="pic"><img src="images/tapas.jpg" class="img-responsive"></div>
                  <div class="name"><span>Tapas Kumar Badatya</span></div><br>
                  <div class="age"><span>8th Sept 1994, 24 years old</span></div>
                </div>
                <div class="row">
                  <div class="col-lg-10 col-md-10 col-sm-10 col-xs-9">
                    <textarea placeholder="Wish him on his birthday"></textarea>
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-3">
                    <button class="btn btn-primary">Wish</button>
                  </div>
                </div>
              </div>
            </div>

          <div style="height: 20px;"></div>

        </div>
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="show-favorites" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="fa fa-heart"></i> Favorites</h4>
      </div>
      <div class="modal-body">

      </div>
    </div>
  </div>
</div>

<div class="modal fade uns" id="show-note" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left"><i class="fa fa-file-text-o" style="color: #ab85dc"></i> Note</h4>
      </div>
      <div class="modal-body">
        <%@include file="Note.jsp"%>
      </div>
      <div class="modal-footer">
        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-3 bottom-icon"><span onclick="Note.displayAddNote()"><i class="fa fa-plus"></i> Add Note</span></div>
          <div class="col-lg-3 col-md-3 col-sm-3 bottom-icon"><span onclick="Note.displayMyNoteList()"><i class="fa fa-file-text"></i> My Notes</span></div>
          <div class="col-lg-3 col-md-3 col-sm-3"></div>
          <div class="col-lg-3 col-md-3 col-sm-3"></div>
        </div>
      </div>
    </div>
  </div>
</div>

<%
  String english = ColorPicker.getColor("nB-english");
  String hindi = ColorPicker.getColor("nB-hindi");
  String odia = ColorPicker.getColor("nB-odia");
  String telugu = ColorPicker.getColor("nB-telugu");

%>
<div class="modal fade uns" id="select-language" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left">
          <i class="material-icons mi-icon" style="color: #F0AD4E;position: relative;top: 5px">language</i> Language</h4>
      </div>
      <div class="modal-body">
        <div class="title">
          <i class="fa fa-dot-circle-o"></i> <span>Select a Language</span>
        </div>
        <div class="language-list">
          <div><input type="radio" name="l1"> <span> <%=english%></span></div>
          <div><input type="radio" name="l1"> <span> <%=hindi%></span></div>
          <div><input type="radio" name="l1"> <span> <%=odia%></span></div>
          <div><input type="radio" name="l1"> <span> <%=telugu%></span></div>
        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-warning">Apply</button>
      </div>
    </div>
  </div>
</div>



<div class="modal fade uns" id="event" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="float: left">
          <i class="material-icons mi-icon" style="color: #76bf00">event_available</i> Event</h4>
      </div>
      <div class="modal-body">
        <div id="event-body">
          <div id="default-event">Create your event, so that can be used to notify users of upcoming occasions</div>


          <div id="create-event">
            <div class="row">
              <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                <div class="heading">Create Event</div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                <span>Name</span>
              </div>
              <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                <input type="text" placeholder="ex. Birthday Party">
              </div>
            </div>
            <div class="row">
              <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                <span>Details</span>
              </div>
              <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                <textarea placeholder="Add more info..."></textarea>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                <span>Where</span>
              </div>
              <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                <input type="text" placeholder="Add a place">
              </div>
            </div>
            <div class="row">
              <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                <span>When</span>
              </div>
              <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                <div class="row">
                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <input type="date" placeholder="Add a date">
                  </div>
                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <input type="time" placeholder="Add a time">
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                <span>Privacy</span>
              </div>
              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                <select>
                  <option>Public</option>
                  <option>Private</option>
                </select>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
              <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                <button>Create</button>
              </div>
            </div>
          </div>

        </div>
      </div>
      <div class="modal-footer">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" align="center">
            <div class="bottom-btn" onclick="Event.showCreateEvent()"><i class="material-icons" style="color: #76bf00">add_circle_outline</i> <span class="labelname">Create Event</span></div>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" align="center">
            <div class="bottom-btn" onclick="Event.showMyEvents()"><i class="material-icons" style="color: #76bf00">event_note</i> <span class="labelname">My Events</span></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<center>
  <div class="modal fade uns share-post-social" id="add-story" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content" style="min-width: 450px;max-width: 50% ">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="float: left">
            <i class="material-icons">add</i> Add Story</h4>
        </div>
        <div class="modal-body" align="center">
          <div id="add-story-option">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6 option" onclick="MyStory.showWriteText()">
                <span><i class="fa fa-edit"></i> Write Something</span>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 option" onclick="MyStory.showBrowseIV()">
                <span><i class="fa fa-folder-open-o"></i> Browse Image/Video</span>
              </div>
            </div>
          </div>

          <div id="add-story-text">
            <textarea id="add-story-textarea" placeholder="Write something..." onkeyup="Utils.setTextAreaText('add-story-textarea')"></textarea>
          </div>


          <div id="add-story-IV">
            <img id="add-story-browsed"/>
            <input type="text" id="iv-status" maxlength="65" placeholder="Write Something...">
          </div>


        </div>
        <div class="modal-footer">
          <button class="btn btn-success">Add</button>
        </div>
      </div>
    </div>
  </div>
</center>

<script src="scripts/Event.js"></script>