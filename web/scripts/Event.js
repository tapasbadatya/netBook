/**
 * Created by admin on 03-07-2018.
 */

var Event = new function(){
    this.showCreateEvent = function(){
        document.getElementById("default-event").style.display="none";
        document.getElementById("create-event").style.display="block";
    };
    this.showMyEvents = function(){
        document.getElementById("default-event").style.display="block";
        document.getElementById("create-event").style.display="none";
    };
};
