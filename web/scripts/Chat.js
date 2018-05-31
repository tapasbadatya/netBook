/**
 * Created by admin on 02-05-2018.
 */
var Chat = new function(){
    var chatWindowToggle=true;
    this.initial = function(){
    };
    this.searchFriendToChat = function(){
        var input, filter, ul, li, a, i;
        input = document.getElementById("search-chat");
        filter = input.value.toUpperCase();
        ul = document.getElementById("friend-list-ul");
        li = ul.getElementsByTagName("li");
        for (i = 0; i < li.length; i++) {
            a = li[i].getElementsByTagName("a")[0];
            if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";

            }
        }
    }
    var toggleSearchFriendToChat = true;

    this.toggleSearchFriendToChat = function(){
        if(toggleSearchFriendToChat == false){
            document.getElementById("search-chat").style.display="none";
            document.getElementById("search-chat").value = "";
            this.searchFriendToChat();
            toggleSearchFriendToChat = true;
        }
        else if(toggleSearchFriendToChat == true){
            document.getElementById("search-chat").style.display="block";
            document.getElementById("search-chat").value = "Search a friend to chat...";
            toggleSearchFriendToChat = false;
        }

    }


    var toggleSearchFriendToChatMobile = true;

    this.toggleSearchFriendToChatMobile = function(){
        if(toggleSearchFriendToChatMobile == false){
            document.getElementById("app-title").style.display="block";
            document.getElementById("search-chat-frnd").style.display="none";
            //document.getElementById("search-chat").value = "";
            this.searchFriendToChat();
            toggleSearchFriendToChatMobile = true;
        }
        else if(toggleSearchFriendToChatMobile == true){
            document.getElementById("app-title").style.display="none";
            document.getElementById("search-chat-frnd").style.display="block";
            //document.getElementById("search-chat").value = "Search a friend to chat...";
            toggleSearchFriendToChatMobile = false;
        }

    }



    this.openChatWindow = function(){
        document.getElementById("chat-box").style.visibility="visible";
        document.getElementById("chat-box").style.height="280px";
        document.getElementById("chat-body").style.display="block";
        chatWindowToggle = true;
    };
    this.closeChatWindow = function(){
        document.getElementById("chat-box").style.visibility="hidden";
    };
    this.toggleChatWindow = function(){
        if(chatWindowToggle == true ){
            document.getElementById("chat-box").style.height="30px";
            document.getElementById("chat-body").style.display="none";
            chatWindowToggle = false
        }
        else if(chatWindowToggle == false){
            document.getElementById("chat-box").style.height="280px";
            document.getElementById("chat-body").style.display="block";
            chatWindowToggle = true;
        }

    };


    this.liveChat = function(sId,sClassType,sAlign) {

      //  var inputValue = document.getElementById("chat-input").value;
        var inputValue = document.getElementById(sId).value;
        if(inputValue != "" && inputValue!=null && inputValue.trim().length!=0){
            var sParentDiv=document.createElement("DIv");
           // sParentDiv.setAttribute("class","my-message");
            sParentDiv.setAttribute("class",sClassType);
           // sParentDiv.setAttribute("align","right");
            sParentDiv.setAttribute("align",sAlign);

            var sSpan=document.createElement("SPAN");
            sSpan.setAttribute("class","message");
            var sSpanText=document.createTextNode(inputValue);
            sSpan.appendChild(sSpanText);


            sParentDiv.appendChild(sSpan);

            var sChildDiv=document.createElement("DIV");
            var sChildItem=document.createElement("I");
            sChildItem.setAttribute("class","fa fa-circle report");

            sChildDiv.appendChild(sChildItem);

            var sChildDivspan=document.createElement("SPAN");
            sChildDivspan.setAttribute("class","timing");
            var sChildDivspanText=document.createTextNode(new Date().getHours()+":"+new Date().getMinutes());
            sChildDivspan.appendChild(sChildDivspanText);
            sChildDiv.appendChild(sChildDivspan);

            sParentDiv.appendChild(sChildDiv);
            document.getElementById("chat-area").appendChild(sParentDiv);
            document.getElementById("chat-input").value="";
        }

    };



};