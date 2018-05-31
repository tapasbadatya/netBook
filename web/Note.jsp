<%--
  Created by IntelliJ IDEA.
  User: Tapas
  Date: 25-05-2018
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>

<div id="display-note-area">
  <div id="add-note">
    <div class="title" style="position: relative;top: -10px;left: -10px">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8">
          <input type="text" placeholder="Title">
        </div>
        <div class="col-lg-2 col-md-2 col-sm-2">
          <span class="operation-icon"><i class="fa fa-save"></i> Save</span>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-2">
          <span class="operation-icon"><i class="fa fa-trash-o"></i> Delete</span>
        </div>
      </div>
    </div>
    <div style="position: relative;top: -5px">
      <%@include file="TextFormatBox2.jsp"%>
    </div>
  </div>

  <div id="my-note-list-area" class="my-note-list-area">
    <div style="position: relative;top: -12px">
      <input type="text" id="search-note" class="search-note" placeholder="Search for a note" onkeyup="Utils.search('search-note','my-notes-list-ul')">
    </div>
    <div id="my-notes">
      <ul id="my-notes-list-ul">
        <li onclick="Note.displayMyNote()">
          <a href="#">
            <div class="note-box">
              <i class="fa fa-file-text-o"></i> My Account <span class="time"> 07:45 AM, 08 Sept 2017</span>
            </div>
          </a>
          <div style="height: 5px"></div>
        </li>
        <li onclick="Note.displayMyNote()">
          <a href="#">
            <div class="note-box">
              <i class="fa fa-file-text-o"></i> My Movies <span class="time"> 07:45 AM, 08 Sept 2017</span>
            </div>
          </a>
          <div style="height: 5px"></div>
        </li>
        <li onclick="Note.displayMyNote()">
          <a href="#">
            <div class="note-box">
              <i class="fa fa-file-text-o"></i> My Market <span class="time"> 07:45 AM, 08 Sept 2017</span>
            </div>
          </a>
          <div style="height: 5px"></div>
        </li>
        <li onclick="Note.displayMyNote()">
          <a href="#">
            <div class="note-box">
              <i class="fa fa-file-text-o"></i> Bank Details <span class="time"> 07:45 AM, 08 Sept 2017</span>
            </div>
          </a>
          <div style="height: 5px"></div>
        </li>
        <li onclick="Note.displayMyNote()">
          <a href="#">
            <div class="note-box">
              <i class="fa fa-file-text-o"></i> Course <span class="time"> 07:45 AM, 08 Sept 2017</span>
            </div>
          </a>
          <div style="height: 5px"></div>
        </li>
      </ul>
    </div>
  </div>

  <div id="my-note-display">
    <div class="title" style="position: relative;top: -10px;left: -10px">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8">
          <span id="note-title">My Account</span>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-2">
          <span class="operation-icon"  onclick="Note.displayAddNote()"><i class="fa fa-edit"></i> Edit</span>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-2">
          <span class="operation-icon"><i class="fa fa-trash-o"></i> Delete</span>
        </div>
      </div>
    </div>
    <div id="note-content" style="position: relative;top: -5px">
      gdfgfdgfdgg<br>
      fsfdsfdsfdsf<br>
      gdfgfdgfdgg<br>
      fsfdsfdsfdsf<br>
      gdfgfdgfdgg<br>
      fsfdsfdsfdsf<br>
      gdfgfdgfdgg<br>
      fsfdsfdsfdsf<br>
      gdfgfdgfdgg<br>
      fsfdsfdsfdsf<br>
      gdfgfdgfdgg<br>
      fsfdsfdsfdsf<br>
      gdfgfdgfdgg<br>
      fsfdsfdsfdsf<br>
      gdfgfdgfdgg<br>
      fsfdsfdsfdsf<br>
    </div>
  </div>
</div>
