/**
 * Created by admin on 06-07-2018.
 */

var MyStory = new function(){

    this.init = function(){
        document.getElementById("add-story-text").style.display="none";
        document.getElementById("add-story-option").style.display="block";
        document.getElementById("add-story-IV").style.display="none";
        document.getElementById("add-story-textarea").value="";
        document.getElementById("add-story-browsed").innerHTML="";

        Upload.setDefault();
    };
    this.showWriteText = function(){

        setTimeout(function(){
            document.getElementById("add-story-text").style.display="block";
            document.getElementById("add-story-option").style.display="none";
            document.getElementById("add-story-IV").style.display="none";
        },200);

    };
    this.showBrowseIV = function(){
        setTimeout(function(){
            document.getElementById("add-story-text").style.display="none";
            document.getElementById("add-story-option").style.display="none";
            document.getElementById("add-story-IV").style.display="block";
            //Upload.displayBrowsedContents('addStoryIV','add-story-browsed',5,'gallery');
            Upload.displayBrowsedImage('addStoryIV','add-story-browsed');

        },200);
    };

};