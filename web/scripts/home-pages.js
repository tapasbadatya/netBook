/**
 * Created by admin on 06-08-2018.
 */

var Home = new function(){

    this.openMenu = function(){
        document.getElementById("menu").style.left="0px";
        document.getElementById("bg-menu").style.display="block";
        document.getElementById("profile-pic").style.border="2px solid #cccccc";
    };

    this.closeMenu = function(){
        document.getElementById("menu").style.left="-30%";
        document.getElementById("bg-menu").style.display="none";
    };

};
