/**
 * Created by Tapas on 31-05-2018.
 */

var clNavMenu = new function(){

    this.openSideNav = function(){
        document.getElementById("menu-sidenav").style.width = "250px";
    }
    this.closeSideNav = function(){
        document.getElementById("menu-sidenav").style.width = "0px";
    }
}