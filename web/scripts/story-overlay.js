/**
 * Created by admin on 21-06-2018.
 */

var clStoryOverlay = new function(){

    var isStatusProgress = true;
    var intervalId;

    this.show = function(){
        document.getElementById("story-overlay").style.display="block";
        this.progressBar(true);
    }
    this.close = function(){
        document.getElementById("story-overlay").style.display="none";
        clearInterval(intervalId);
        intervalId = null;

    }
    this.pause = function(){
            isStatusProgress = false;
    }
    this.play = function(){
        isStatusProgress = true;
    }
    this.progressBar = function(flag){
        var elem,width,id;
        if(flag){
            elem = document.getElementById("progress-bar");
            width = 1;
            intervalId = setInterval(frame, 30);
            function frame() {

                if(isStatusProgress){
                    if (width >= 100) {

                        document.getElementById("story-overlay").style.display="none";
                        clearInterval(intervalId);

                    } else {
                        width++;
                        elem.style.width = width + '%';
                    }

                }

            }


        }
    }
}


function move() {

}