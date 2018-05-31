/**
 * Created by Tapas on 25-05-2018.
 */
var Note = new function(){
    this.displayAddNote = function(){
        document.getElementById("add-note").style.display="block";
        document.getElementById("my-note-list-area").style.display="none";
        document.getElementById("my-note-display").style.display="none";
    }
    this.displayMyNoteList = function(){
        document.getElementById("add-note").style.display="none";
        document.getElementById("my-note-list-area").style.display="block";
        document.getElementById("my-note-display").style.display="none";
    }
    this.displayMyNote = function(){
        document.getElementById("add-note").style.display="none";
        document.getElementById("my-note-list-area").style.display="none";
        document.getElementById("my-note-display").style.display="block";
    }
}
