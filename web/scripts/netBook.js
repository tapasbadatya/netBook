/**
 * Created by admin on 14-05-2018.
 */
var netBook = new function() {

    this.initial = function(){
        var nBnotification = localStorage.getItem("nB-notification");
        if(nBnotification == null){
            localStorage.setItem("nB-notification","on");
        }
    }
    this.applyResponsiveHeader = function () {
        this.initial();

        if (window.innerWidth <= 770) {
            document.getElementById("top-icons").style.display = "block";
            document.getElementById("user-profile-box").style.display = "block";
            document.getElementById("app-profile-box").style.display = "none";
            document.getElementById("user-profile-box").style.top = "12px";
            document.getElementById("app-title").style.display = "block";
            document.getElementById("search").style.display = "none";

            document.getElementById("setting-dropdown").style.display="none";
            document.getElementById("notification-dropdown").style.display="none";

            document.getElementById("setting-link").href="Setting.jsp";
            document.getElementById("notification-link").href="Notification.jsp";
            document.getElementById("chat-link").href="ChatMobile.jsp";

        }
        if (window.innerWidth > 767) {
            document.getElementById("top-icons").style.display = "none";
            document.getElementById("search").style.display = "block";
            document.getElementById("user-profile-box").style.display = "none";
            document.getElementById("app-profile-box").style.display = "block";
            document.getElementById("app-title").style.display = "none";
            document.getElementById("setting-link").href="#";
            document.getElementById("notification-link").href="#";
            document.getElementById("chat-link").href="Chat.jsp";

        }
    };
    this.applyResponsiveUploadBox = function(name){

        if(name == "home"){
            if(window.innerWidth < 390){
                document.getElementById("write-text").innerText = "Text";
                document.getElementById("add-gallery").innerText = "Photo/Video";
                document.getElementById("add-file").innerText = "File";
            }
            if(window.innerWidth > 390){
                document.getElementById("write-text").innerText = "Write Text";
                document.getElementById("add-gallery").innerText = "Add Photo/Video";
                document.getElementById("add-file").innerText = "Add File";
            }
            if(window.innerWidth < 310){
                document.getElementById("write-text").style.fontSize="12px";
                document.getElementById("add-gallery").style.fontSize="12px";
                document.getElementById("add-file").style.fontSize="12px";
            }
            if(window.innerWidth > 310){
                document.getElementById("write-text").style.fontSize="14px";
                document.getElementById("add-gallery").style.fontSize="14px";
                document.getElementById("add-file").style.fontSize="14px";
            }
        }
        if(name == "profile"){
            if(window.innerWidth < 930){
                document.getElementById("write-text").style.fontSize="12px";
                document.getElementById("add-gallery").style.fontSize="11px";
                document.getElementById("add-file").style.fontSize="12px";
                document.getElementById("wt").style.fontSize="14px";
                document.getElementById("ag").style.fontSize="14px";
                document.getElementById("af").style.fontSize="14px";
            }
            if(window.innerWidth > 930){
                document.getElementById("write-text").style.fontSize="14px";
                document.getElementById("add-gallery").style.fontSize="14px";
                document.getElementById("add-file").style.fontSize="14px";
                document.getElementById("wt").style.fontSize="18px";
                document.getElementById("ag").style.fontSize="18px";
                document.getElementById("af").style.fontSize="18px";
            }
        }
    }

    this.applyResponsiveHome = function(){
        this.applyResponsiveHeader();
        //alert(window.innerWidth);
        document.getElementById("show-posts").style.height=window.innerHeight-110;
        document.getElementById("friend-list").style.height=window.innerHeight-110;
        document.getElementById("content-3-content").style.height=window.innerHeight-110;


        if(window.innerWidth <= 770 ){
            document.getElementById("content-bar").style.top="47px";
            document.getElementById("content-1").style.display="none";
            document.getElementById("content-2").style.display="block";
            document.getElementById("content-3").style.display="none";
            document.getElementById("content-4").style.display="none";

            document.getElementById("content-2").style.top="20px";

        }
        if(window.innerWidth > 767 ){
            document.getElementById("content-bar").style.top="60px";
            document.getElementById("content-1").style.display="block";
            document.getElementById("content-2").style.display="block";
            document.getElementById("content-3").style.display="block";
            document.getElementById("content-4").style.display="block";

            document.getElementById("content-2").style.top="0px";
        }
        if(window.innerWidth < 990){
            document.getElementById("content-3").style.display="none";
        }
        if(window.innerWidth > 990){
            document.getElementById("content-3").style.display="block";

        }
        this.applyResponsiveUploadBox("home");

    }
    this.applyResponsiveProfile = function(){

        this.applyResponsiveHeader();


        document.getElementById("search-modal").style.display="none";
        document.getElementById("notification").style.display="none";
        document.getElementById("message").style.display="none";
        document.getElementById("content-1").style.height=window.innerHeight-60;
        document.getElementById("show-posts").style.height=window.innerHeight-105;
        document.getElementById("friend-list").style.height=window.innerHeight-105;

        this.applyResponsiveEditProfile();


        if(window.innerWidth <= 770 ){
            document.getElementById("app-title").style.float="left";
            document.getElementById("myprofile").style.display="none";
            document.getElementById("content-bar").style.top="37px";
            document.getElementById("content-1").style.display="block";
            document.getElementById("content-2").style.display="none";
            document.getElementById("content-3").style.display="none";
            document.getElementById("content-1").style.height=window.innerHeight-40;
            document.getElementById("content-1").style.top="3px";
            document.getElementById("user-profile-box").style.display="none";
            document.getElementById("content-1").style.overflowY="scroll";
            document.getElementById("profile-pic").style.height="60px";
            document.getElementById("profile-pic").style.width="60px";
        }
        if(window.innerWidth > 767 ){
            document.getElementById("myprofile").style.display="block";
            document.getElementById("content-bar").style.top="60px";
            document.getElementById("content-1").style.display="block";
            document.getElementById("content-2").style.display="block";
            document.getElementById("content-3").style.display="block";
            document.getElementById("content-1").style.height=window.innerHeight-60;
            document.getElementById("content-1").style.top="0px";
            document.getElementById("content-1").style.overflowY="hidden";
            document.getElementById("profile-pic").style.height="80px";
            document.getElementById("profile-pic").style.width="80px";
            document.getElementById("my-info-content-box").style.height=window.innerHeight-235;
        }
        if(window.innerWidth < 1000){
            document.getElementById("my-info-box").style.fontSize="12px";
        }
        if(window.innerWidth > 1000){
            document.getElementById("my-info-box").style.fontSize="14px";

        }

        this.applyResponsiveUploadBox("profile");
    }

    this.applyResponsiveEditProfile = function(){
        if(window.innerWidth <= 770 ){
            document.getElementById("set-edit-profile-modal").style.width="250px";
            document.getElementById("set-edit-profile-modal").style.paddingBottom="15px";
            document.getElementById("edit-profile-pic").style.width="70px";
            document.getElementById("edit-profile-pic").style.paddingBottom="5px";
            document.getElementById("set-edit-profile-modal").style.height="auto";
        }
        if(window.innerWidth > 767 ){
            document.getElementById("edit-profile-pic").style.width="100%";
            document.getElementById("set-edit-profile-modal").style.width="100%";
            document.getElementById("set-edit-profile-modal").style.paddingBottom="0px";
            document.getElementById("set-edit-profile-modal").style.minHeight="300px";
            document.getElementById("set-edit-profile-modal").style.maxHeight="auto";
        }
    }
    this.applyResponsiveUploadModals = function(){


        var ids = document.getElementsByClassName("display-browsed-image");
        var id2s = document.getElementsByClassName("display-browsed-file");


        if(window.innerWidth <= 770 ){
            document.getElementById("upload-add-gallery").style.fontSize="36px";
            document.getElementById("upload-add-files").style.fontSize="36px";
            if(ids != null || id2s != null){
                for(var i=0;i<ids.length;i++){
                    document.getElementsByClassName("display-browsed-image")[i].style.height="60px";
                    document.getElementsByClassName("display-browsed-image")[i].style.width="auto";
                }
                for(var i=0;i<id2s.length;i++){
                    document.getElementsByClassName("display-browsed-file")[i].style.fontSize="30px";
                }
                document.getElementById("browse-file-box").style.overflowY="scroll";
                document.getElementById("browse-image-video-box").style.overflowY="scroll";
            }
        }
        if(window.innerWidth > 767 ){
            document.getElementById("upload-add-gallery").style.fontSize="50px";
            document.getElementById("upload-add-files").style.fontSize="50px";


            if(ids != null || id2s != null){
                for(var i=0;i<ids.length;i++){
                    document.getElementsByClassName("display-browsed-image")[i].style.height="80px";
                    document.getElementsByClassName("display-browsed-image")[i].style.width="auto";
                }
                for(var i=0;i<id2s.length;i++){
                    document.getElementsByClassName("display-browsed-file")[i].style.fontSize="40px";
                }
                document.getElementById("browse-file-box").style.overflowY="hidden";
                document.getElementById("browse-image-video-box").style.overflowY="hidden";
            }
        }
    }




    this.applyResponsiveChatWindow = function(){

        this.applyResponsiveHeader();

        document.getElementById("content-1").style.height=window.innerHeight+5;
        document.getElementById("content-2").style.height=window.innerHeight+5;
        document.getElementById("chat-content-body").style.height=window.innerHeight-175;

        if(window.innerWidth <= 770 ){
            //document.getElementById("content-1").style.display="block";
            //document.getElementById("content-2").style.display="block";
        }
        if(window.innerWidth > 767 ){
            //document.getElementById("content-1").style.display="block";
            //document.getElementById("content-2").style.display="block";
        }
    }

    this.applyResponsiveChatMobileWindow = function(){
        this.applyResponsiveHeader();
        //document.getElementById("app-title").style.float="left";
        //document.getElementById("app-title").style.position="relative";
        //document.getElementById("app-title").style.top="15px";

        //document.getElementById("chat-search").style.display = "block";
        document.getElementById("friend-list-box").style.height=window.innerHeight-120;
        document.getElementById("search-modal").style.display = "none";
        document.getElementById("user-profile-box").style.display = "block";
        document.getElementById("notification").style.display="none";
        document.getElementById("message").style.display="none";
        document.getElementById("search-chat").value="Search a friend to chat";

    }
}