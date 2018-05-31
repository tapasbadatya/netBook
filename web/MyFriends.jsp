<%--
  Created by IntelliJ IDEA.
  User: Tapas
  Date: 18-05-2018
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<div class="uns">
  <div class="caontainer-fluid">
    <div class="friends-display-type">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" align="right">
          <input type="text" id="search-my-friend-input" style="display: none"
                 onblur="Profile.toggleSearchMyFriends()" onclick="Utils.clearInput('search-my-friend-input')"
                  onkeyup="Utils.search('search-my-friend-input','my-friend-list-ul')">
          <i id="search-my-friend" class="fa fa-search" onclick="Profile.toggleSearchMyFriends()"></i>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-1 col-xs-2">
          <span>All</span>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
          <span>FAVORITES</span>
        </div>
      </div>
    </div>
    <div id="friend-display-content"><%-- onmouseover="Utils.applyScrollBar('friend-display-content','v',true)"
         onmouseout="Utils.applyScrollBar('friend-display-content','v',false)">--%>

      <div class="">
        <div id="my-friend-list" class="my-friend-list uns">

          <ul id="my-friend-list-ul">
            <li>
              <a href="#">
                <div class="my-friend-box" align="left">
                  <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="position: relative;top: -5px"> Manas Ranjan</span>
                  <div class="options">
                    <i class="fa fa-heart"></i>&nbsp;&nbsp;&nbsp;<i class="fa fa-user-times"></i>
                  </div>
                </div>
              </a>
              <div class="h-line"></div>
            </li>
            <li>
              <a href="#">
                <div class="my-friend-box" align="left">
                  <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="position: relative;top: -5px"> Manas Ranjan</span>
                  <div class="options">
                    <i class="fa fa-heart"></i>&nbsp;&nbsp;&nbsp;<i class="fa fa-user-times"></i>
                  </div>
                </div>
              </a>
              <div class="h-line"></div>
            </li>
            <li>
              <a href="#">
                <div class="my-friend-box" align="left">
                  <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="position: relative;top: -5px"> Manas Ranjan</span>
                  <div class="options">
                    <i class="fa fa-heart"></i>&nbsp;&nbsp;&nbsp;<i class="fa fa-user-times"></i>
                  </div>
                </div>
              </a>
              <div class="h-line"></div>
            </li>
            <li>
              <a href="#">
                <div class="my-friend-box" align="left">
                  <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="position: relative;top: -5px"> Manas Ranjan</span>
                  <div class="options">
                    <i class="fa fa-heart"></i>&nbsp;&nbsp;&nbsp;<i class="fa fa-user-times"></i>
                  </div>
                </div>
              </a>
              <div class="h-line"></div>
            </li>
            <li>
              <a href="#">
                <div class="my-friend-box" align="left">
                  <i class="fa fa-user-circle" style="font-size:26px;"></i><span style="position: relative;top: -5px"> Manas Ranjan</span>
                  <div class="options">
                    <i class="fa fa-heart"></i>&nbsp;&nbsp;&nbsp;<i class="fa fa-user-times"></i>
                  </div>
                </div>
              </a>
              <div class="h-line"></div>
            </li>
          </ul>

        </div>
      </div>


    </div>
  </div>
</div>

