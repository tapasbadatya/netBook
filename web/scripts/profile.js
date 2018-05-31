/**
 * Created by admin on 08-05-2018.
 */

var Profile = new function(){

    this.selectMyInfo = function(index){
        if(index == 0){
            document.getElementById("about-me").style.display="block";
            document.getElementById("my-gallery").style.display="none";
            document.getElementById("my-friends").style.display="none";
        }
        else if(index == 1){
            document.getElementById("about-me").style.display="none";
            document.getElementById("my-gallery").style.display="block";
            document.getElementById("my-friends").style.display="none";
        }
        else if(index == 2){
            document.getElementById("about-me").style.display="none";
            document.getElementById("my-gallery").style.display="none";
            document.getElementById("my-friends").style.display="block";
        }
    }

    this.customizeGallery = function(value){
        var galleryColums = document.getElementsByClassName("gallery-column");
        for(var i=0;i<galleryColums.length;i++){
            galleryColums[i].style.msFlex = value+"%";  // IE10
            galleryColums[i].style.flex = value+"%";
        }
    }

    var toggleSearchMyFriends = false;
    this.toggleSearchMyFriends = function(){
        if(toggleSearchMyFriends == false){
            document.getElementById("search-my-friend-input").style.display="block";
            document.getElementById("search-my-friend").style.display="none";
            document.getElementById("search-my-friend-input").value="Search...";
            toggleSearchMyFriends = true;
        }
        else if(toggleSearchMyFriends == true){
            document.getElementById("search-my-friend-input").style.display="none";
            document.getElementById("search-my-friend").style.display="block";
            toggleSearchMyFriends = false;
        }
    }

    var titleId=0;
    var labelValueId=0;
    var addLabelValueAreaId=0;

    this.addContentForEditAboutMe = function(){

        document.getElementById("add-content-area").style.display="block";

        var mainDiv = document.createElement("div");
        mainDiv.setAttribute("id","title-"+titleId);

        var rowTitleDiv = document.createElement("div");
        rowTitleDiv.setAttribute("class","row");

        var titleDiv = document.createElement("div");
        titleDiv.setAttribute("class","col-lg-10 col-md-10 col-sm-10 col-xs-10");
        var titleInput = document.createElement("input");
        titleInput.setAttribute("type","text");
        titleInput.setAttribute("class","title-input");
        titleInput.setAttribute("placeholder","Title");
        titleDiv.appendChild(titleInput);

        var titleCloseDiv = document.createElement("div");
        titleCloseDiv.setAttribute("class","col-lg-2 col-md-2 col-sm-2 col-xs-2");
        titleCloseDiv.setAttribute("align","left");
        var iTitleClose = document.createElement("i");
        iTitleClose.setAttribute("class","fa fa-times-circle");
        iTitleClose.setAttribute("style","color:#FF786B");
        iTitleClose.setAttribute("onclick","Profile.deleteContentForEditAboutMe('title-"+titleId+"')");
        titleCloseDiv.appendChild(iTitleClose);

        rowTitleDiv.appendChild(titleDiv);
        rowTitleDiv.appendChild(titleCloseDiv);

        var rowLabelValueDiv = document.createElement("div");
        rowLabelValueDiv.setAttribute("class","row");
        rowLabelValueDiv.setAttribute("id","labelValue-"+labelValueId);

        var labelDiv = document.createElement("div");
        labelDiv.setAttribute("class","col-lg-4 col-md-4 col-sm-4 col-xs-12");
        var labelInput = document.createElement("input");
        labelInput.setAttribute("type","text");
        labelInput.setAttribute("class","label-input");
        labelInput.setAttribute("placeholder","Label");
        labelDiv.appendChild(labelInput);

        var valueDiv = document.createElement("div");
        valueDiv.setAttribute("class","col-lg-6 col-md-6 col-sm-6 col-xs-12");
        var valueInput = document.createElement("input");
        valueInput.setAttribute("type","text");
        valueInput.setAttribute("class","value-input");
        valueInput.setAttribute("placeholder","Value");
        valueDiv.appendChild(valueInput);

        var addLabelValueDiv = document.createElement("div");
        addLabelValueDiv.setAttribute("class","col-lg-1 col-md-1 col-sm-1 col-xs-2");
        var iAddLabelValue = document.createElement("i");
        iAddLabelValue.setAttribute("class","fa fa-plus");
        iAddLabelValue.setAttribute("style","color:#6c6c6c");
        iAddLabelValue.setAttribute("onclick","Profile.addLabelValueForTitle('add-label-value-area-"+addLabelValueAreaId+"')");
        addLabelValueDiv.appendChild(iAddLabelValue);

        var deleteLabelValueDiv = document.createElement("div");
        deleteLabelValueDiv.setAttribute("class","col-lg-1 col-md-1 col-sm-1 col-xs-2");
        var iDeleteLabelValue = document.createElement("i");
        iDeleteLabelValue.setAttribute("class","fa fa-close");
        iDeleteLabelValue.setAttribute("style","color:#FF786B");
        iDeleteLabelValue.setAttribute("onclick","Profile.deleteLabelValueForTitle('labelValue-"+labelValueId+"')");

        deleteLabelValueDiv.appendChild(iDeleteLabelValue);

        rowLabelValueDiv.appendChild(labelDiv);
        rowLabelValueDiv.appendChild(valueDiv);
        rowLabelValueDiv.appendChild(addLabelValueDiv);
        rowLabelValueDiv.appendChild(deleteLabelValueDiv);

        var rowAddLabelValueArea = document.createElement("div");
        rowAddLabelValueArea.setAttribute("id","add-label-value-area-"+addLabelValueAreaId);


        mainDiv.appendChild(rowTitleDiv);
        mainDiv.appendChild(rowLabelValueDiv);
        mainDiv.appendChild(rowAddLabelValueArea);
        document.getElementById("add-content-area").appendChild(mainDiv);
        titleId++;
        addLabelValueAreaId++;
    }
    this.addLabelValueForTitle = function(id){
        var mainDiv = document.createElement("div");

        var rowLabelValueDiv = document.createElement("div");
        rowLabelValueDiv.setAttribute("class","row");
        rowLabelValueDiv.setAttribute("id","labelValue-"+labelValueId);


        var labelDiv = document.createElement("div");
        labelDiv.setAttribute("class","col-lg-4 col-md-4 col-sm-4 col-xs-12");
        var labelInput = document.createElement("input");
        labelInput.setAttribute("type","text");
        labelInput.setAttribute("class","label-input");
        labelInput.setAttribute("placeholder","Label");
        labelDiv.appendChild(labelInput);

        var valueDiv = document.createElement("div");
        valueDiv.setAttribute("class","col-lg-6 col-md-6 col-sm-6 col-xs-12");
        var valueInput = document.createElement("input");
        valueInput.setAttribute("type","text");
        valueInput.setAttribute("class","value-input");
        valueInput.setAttribute("placeholder","Value");
        valueDiv.appendChild(valueInput);

        var addLabelValueDiv = document.createElement("div");
        addLabelValueDiv.setAttribute("class","col-lg-1 col-md-1 col-sm-1 col-xs-2");
        var iAddLabelValue = document.createElement("i");
        iAddLabelValue.setAttribute("class","fa fa-plus");
        iAddLabelValue.setAttribute("style","color:#6c6c6c");
        iAddLabelValue.setAttribute("onclick","Profile.addLabelValueForTitle('add-label-value-area-"+(addLabelValueAreaId-1)+"')");

        addLabelValueDiv.appendChild(iAddLabelValue);

        var deleteLabelValueDiv = document.createElement("div");
        deleteLabelValueDiv.setAttribute("class","col-lg-1 col-md-1 col-sm-1 col-xs-2");
        var iDeleteLabelValue = document.createElement("i");
        iDeleteLabelValue.setAttribute("class","fa fa-close");
        iDeleteLabelValue.setAttribute("style","color:#FF786B");
        iDeleteLabelValue.setAttribute("onclick","Profile.deleteLabelValueForTitle('labelValue-"+labelValueId+"')");

        deleteLabelValueDiv.appendChild(iDeleteLabelValue);

        rowLabelValueDiv.appendChild(labelDiv);
        rowLabelValueDiv.appendChild(valueDiv);
        rowLabelValueDiv.appendChild(addLabelValueDiv);
        rowLabelValueDiv.appendChild(deleteLabelValueDiv);

        mainDiv.appendChild(rowLabelValueDiv);
        document.getElementById(id).appendChild(mainDiv);

        labelValueId ++;
    }

    this.deleteLabelValueForTitle = function(id){
        var rowLabelValueDiv = document.getElementById(id);
        rowLabelValueDiv.remove();
        labelValueId--;
    }
    this.deleteContentForEditAboutMe = function(id){
        var rowTitleDiv = document.getElementById(id);



        //rowTitleDiv.style.display="none";

        for(var i=0;i<rowTitleDiv.childNodes.length;i++){
            rowTitleDiv.removeChild(rowTitleDiv.childNodes[i]);
        }
        rowTitleDiv.remove();

        titleId--;
    }


};





















// Get the modal
/*
var modal = document.getElementById('myModal');
// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('pf-profile-pic');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
}

/!*!// Get the <span> element that closes the modal
var close = document.getElementById("pf-profile-pic-close");
// When the user clicks on <span> (x), close the modal*!/
modal.onclick = function() {
    modal.style.display = "none";
}*/
