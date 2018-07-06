/**
 * Created by Tapas on 15-05-2018.
 */
var Home = new function(){
    this.showMakeFriend = function(){
        document.getElementById("make-friend").setAttribute("style","width:100%;display:block");
        document.getElementById("my-story").setAttribute("style","width:100%;display:none");
        document.getElementById("directory").setAttribute("style","width:100%;display:none");

    };
    this.showMyStory = function(){
        document.getElementById("my-story").setAttribute("style","width:100%;display:block");
        document.getElementById("make-friend").setAttribute("style","width:100%;display:none");
        document.getElementById("directory").setAttribute("style","width:100%;display:none");

    };
    this.showDirectory = function(){
        document.getElementById("my-story").setAttribute("style","width:100%;display:none");
        document.getElementById("make-friend").setAttribute("style","width:100%;display:none");
        document.getElementById("directory").setAttribute("style","width:100%;display:block");
    };

};