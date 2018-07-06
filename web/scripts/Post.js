/**
 * Created by Tapas on 29-05-2018.
 */
var Post = new function(){
    this.likeToggle = function(id){
        var val = document.getElementById(id);
        if(val.getAttribute("class")=="fa fa-heart-o"){
            val.setAttribute("class","fa fa-heart");
            val.setAttribute("style","color:#FF5061");
        }
        else if(val.getAttribute("class")=="fa fa-heart"){
            val.setAttribute("class","fa fa-heartbeat");
            val.setAttribute("style","color:#FF5061");
        }
        else if(val.getAttribute("class")=="fa fa-heartbeat"){
            val.setAttribute("class","fa fa-heart-o");
            val.setAttribute("style","color:#4d4d4d");
        }
    }
    this.commentToggle = function(id){
        var val = document.getElementById(id);
        if(val.getAttribute("style") == "display: none"){
            val.setAttribute("style","display: block");
        }
        else if(val.getAttribute("style")=="display: block"){
            val.setAttribute("style","display: none");
        }
    }
    /*this.showShareWithFriendInputBox = function(id,flag){
        var val = document.getElementById(id);
        if(flag)
            val.setAttribute("style","display: block");
        else
            val.setAttribute("style","display: none");
    }*/

    this.showShareWithFriendInputBox = function(obj,fieldId){
        var val = document.getElementById(obj.id).value;
        if(val=="1")
            document.getElementById(fieldId).style.display="block";
        else
            document.getElementById(fieldId).style.display="none";
    }

    this.displayShareModal =  function(id){
        var val = document.getElementById(id);
    }
    this.openWindow = function(){
        alert();
    }

}
