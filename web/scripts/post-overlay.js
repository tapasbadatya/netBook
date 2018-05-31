/**
 * Created by admin on 07-05-2018.
 */
var clPostOverlay = new function(){

    var isBoolean = true;

    this.showPostOverlay = function(imgId){
        document.getElementById("post-overlay").style.display = "block";
        var src = document.getElementById(imgId);
        document.getElementById("myimage").src=src.src;
    }
    this.closePostOverlay = function(){
        document.getElementById("post-overlay").style.display = "none";
        isBoolean = true;
        document.getElementById("ol-zoom-option").innerHTML="<i class='fa fa-search-plus'></i>";
        glass.remove();
    }
    this.zoomOver = function(imgId,zoom){
        if(isBoolean == true){
            isBoolean = false;
            document.getElementById("ol-zoom-option").innerHTML="<i class='fa fa-search-minus'></i>";
            magnify(imgId,zoom);
        }
        else if(isBoolean == false){
            isBoolean = true;
            document.getElementById("ol-zoom-option").innerHTML="<i class='fa fa-search-plus'></i>";
            glass.remove();
        }

    }

};


var img, glass, w, h, bw;

function magnify(imgID, zoom) {

    img = document.getElementById(imgID);
    /*create magnifier glass:*/
    glass = document.createElement("DIV");
    glass.setAttribute("class", "img-magnifier-glass");
    glass.setAttribute("id","img-magnifier-glass");

    /*insert magnifier glass:*/
    img.parentElement.insertBefore(glass, img);
    /*set background properties for the magnifier glass:*/
    glass.style.backgroundImage = "url('" + img.src + "')";
    glass.style.backgroundRepeat = "no-repeat";
    glass.style.backgroundSize = (img.width * zoom) + "px " + (img.height * zoom) + "px";
    bw = 3;
    w = glass.offsetWidth / 2;
    h = glass.offsetHeight / 2;
    /*execute a function when someone moves the magnifier glass over the image:*/
    glass.addEventListener("mousemove", moveMagnifier);
    img.addEventListener("mousemove", moveMagnifier);
    /*and also for touch screens:*/
    glass.addEventListener("touchmove", moveMagnifier);
    img.addEventListener("touchmove", moveMagnifier);
    function moveMagnifier(e) {
        var pos, x, y;
        /*prevent any other actions that may occur when moving over the image*/
        e.preventDefault();
        /*get the cursor's x and y positions:*/
        pos = getCursorPos(e);
        x = pos.x;
        y = pos.y;
        /*prevent the magnifier glass from being positioned outside the image:*/
        if (x > img.width - (w / zoom)) {x = img.width - (w / zoom);}
        if (x < w / zoom) {x = w / zoom;}
        if (y > img.height - (h / zoom)) {y = img.height - (h / zoom);}
        if (y < h / zoom) {y = h / zoom;}
        /*set the position of the magnifier glass:*/
        glass.style.left = (x - w) + "px";
        glass.style.top = (y - h) + "px";
        /*display what the magnifier glass "sees":*/
        glass.style.backgroundPosition = "-" + ((x * zoom) - w + bw) + "px -" + ((y * zoom) - h + bw) + "px";
    }
    function getCursorPos(e) {
        var a, x = 0, y = 0;
        e = e || window.event;
        /*get the x and y positions of the image:*/
        a = img.getBoundingClientRect();
        /*calculate the cursor's x and y coordinates, relative to the image:*/
        x = e.pageX - a.left;
        y = e.pageY - a.top;
        /*consider any page scrolling:*/
        x = x - window.pageXOffset;
        y = y - window.pageYOffset;
        return {x : x, y : y};
    }
}
