/**
 * Created by admin on 16-05-2018.
 */

var clHeader = new function(){


    var toggleNotificationDropdown = false;

    this.toggleNotificationDropdown = function(){

        document.getElementById("setting-dropdown").style.display="none";
        var notification = document.getElementById("notification-link");

        if(notification.href.endsWith("#")){
            if(toggleNotificationDropdown == false){
                document.getElementById("notification-dropdown").style.display="block";
                toggleNotificationDropdown = true;
            }
            else if(toggleNotificationDropdown == true){
                document.getElementById("notification-dropdown").style.display="none";
                toggleNotificationDropdown = false;
            }
        }
    }

    var toggleSettingDropdown = false;

    this.toggleSettingDropdown = function(){

        document.getElementById("notification-dropdown").style.display="none";

        var setting = document.getElementById("setting-link");


        if(setting.href.endsWith("#")){
            if(toggleSettingDropdown == false){
                document.getElementById("setting-dropdown").style.display="block";
                toggleSettingDropdown = true;
            }
            else if(toggleSettingDropdown == true){
                document.getElementById("setting-dropdown").style.display="none";
                toggleSettingDropdown = false;
            }
        }
        if(localStorage.getItem("nB-notification") == "on"){
            document.getElementById("off-notification").style.display="none";
            document.getElementById("on-notification").style.display="block";
        }
        else if(localStorage.getItem("nB-notification") == "off"){
            document.getElementById("off-notification").style.display="block";
            document.getElementById("on-notification").style.display="none";
        }

    }
    var toggleOnOffNotification = false;
    this.toggleOnOffNotification = function(obj){

        if(toggleOnOffNotification == false){
            document.getElementById("off-notification").style.display="block";
            document.getElementById("on-notification").style.display="none";
            localStorage.setItem("nB-notification","off");
            toggleOnOffNotification = true;

        }
        else if(toggleOnOffNotification == true){
            document.getElementById("off-notification").style.display="none";
            document.getElementById("on-notification").style.display="block";
            localStorage.setItem("nB-notification","on");
            toggleOnOffNotification = false;
        }
    }
}