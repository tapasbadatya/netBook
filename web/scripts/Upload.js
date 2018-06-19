/**
 * Created by Tapas on 23-05-2018.
 */
var Upload = new function(){

    this.displayBrowsedImage = function(fileId,displayId){
        var file = document.getElementById(fileId);
        file.click();
        file.onchange = function(){
            if (file.files && file.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    document.getElementById(displayId).src = e.target.result;
                };
                reader.readAsDataURL(file.files[0]);
            }
        }
    }

    var fileId=0;
    var filesLength=0;
    var fileName="";
    var fileNames;
    var fileIndex=1;

    this.displayBrowsedContents = function(filesId,displayId,length,contentType){

        var files = document.getElementById(filesId);
        files.click();

        files.onchange = function(){
            filesLength = filesLength + files.files.length;

            if(filesLength <= length){

                for(var x=0;x<files.files.length;x++){
                    fileName = fileName + ":::" + files.files[x].name;
                    fileNames = fileName.split(":::");
                }
                for(var index=0;index<files.files.length;index++){
                    if(files.files && files.files[index]){
                        var reader = new FileReader();
                        var file = files.files[index];

                        var isValid = isValidFile(filesId,contentType);

                        reader.onload = function(e){

                            if(contentType == "gallery"){
                                if(isValid){
                                    var div = document.createElement("div");
                                    div.setAttribute("class","display-browsed-image-box");
                                    div.setAttribute("id","display-browsed-image-box"+fileId);
                                    var i = document.createElement("i");
                                    i.setAttribute("class","fa fa-close");
                                    i.setAttribute("onclick","Upload.deleteContent('display-browsed-image-box"+fileId+"')");
                                    var img = document.createElement("img");
                                    img.setAttribute("src", e.target.result);
                                    img.setAttribute("class","display-browsed-image");
                                    div.appendChild(img);
                                    div.appendChild(i);
                                    document.getElementById(displayId).appendChild(div);
                                    netBook.applyResponsiveUploadModals();
                                    if(filesLength == length){
                                        document.getElementById("upload-add-gallery").style.display="none";
                                    }
                                }
                                else{
                                    alert("Sorry ! Your selected file is not allowed to upload");
                                }
                            }
                            else if(contentType == "file"){
                                if(isValid){

                                    var div = document.createElement("div");
                                    div.setAttribute("class","display-browsed-file-box");
                                    div.setAttribute("id","display-browsed-file-box"+fileId);
                                    div.setAttribute("align","left");
                                    var div1 = document.createElement("div");
                                    div1.setAttribute("class","file-delete");
                                    var i1 = document.createElement("i");
                                    i1.setAttribute("class","fa fa-close");
                                    i1.setAttribute("onclick","Upload.deleteContent('display-browsed-file-box"+fileId+"')");
                                    div1.appendChild(i1);
                                    var div2=document.createElement("div");
                                    div2.setAttribute("class","display-browsed-file");
                                    var i2 = document.createElement("i");

                                    var name = fileNames[fileIndex];

                                    if(name.endsWith(".txt")){
                                        i2.setAttribute("class","fa fa-file-text-o");
                                        i2.setAttribute("style","color:cadetblue;");
                                    }
                                    else if(name.endsWith(".pdf")){
                                        i2.setAttribute("class","fa fa-file-pdf-o");
                                        i2.setAttribute("style","color:#ff5134");
                                    }
                                    else if(name.endsWith(".doc") || name.endsWith(".docx")){
                                        i2.setAttribute("class","fa fa-file-word-o");
                                        i2.setAttribute("style","color:#1396d6");

                                    }
                                    else if(name.endsWith(".ppt") || name.endsWith(".PPT")){
                                        i2.setAttribute("class","fa fa-file-powerpoint-o");
                                        i2.setAttribute("style","color:hotpink");

                                    }
                                    else if(name.endsWith(".xlsx") || name.endsWith(".XLSX")){
                                        i2.setAttribute("class","fa fa-file-excel-o");
                                        i2.setAttribute("style","color:#35AC78");
                                    }
                                    else if(name.endsWith(".html") || name.endsWith(".htm")|| name.endsWith(".jsp")|| name.endsWith(".php")){
                                        i2.setAttribute("class","fa fa-file-code-o");
                                        i2.setAttribute("style","color:#E359A5");
                                    }
                                    else if(name.endsWith(".rar")|| name.endsWith(".jar")|| name.endsWith(".war")){
                                        i2.setAttribute("class","fa fa-file-archive-o");
                                        i2.setAttribute("style","color:#DC9C0B");
                                    }
                                    else{
                                        i2.setAttribute("class","fa fa-file-o");
                                        i2.setAttribute("style","color:#525252");
                                    }

                                    div2.appendChild(i2);
                                    var div3=document.createElement("div");
                                    div3.setAttribute("class","file-name");
                                    div3.innerText=name;

                                    div.appendChild(div1);
                                    div.appendChild(div2);
                                    div.appendChild(div3);
                                    //document.getElementById("upload-error").style.display="none";
                                    document.getElementById(displayId).appendChild(div);
                                    netBook.applyResponsiveUploadModals();
                                    if(filesLength == length){
                                        document.getElementById("upload-add-files").style.display="none";
                                    }


                                }
                                else{
                                    //document.getElementById(displayId).innerHTML="<h4 id='upload-error' style='color:#ff7d6c'>Sorry ! Your selected file is not allowed to upload</h4>"
                                    alert("Sorry ! Your selected file is not allowed to upload");
                                }
                            }
                            fileId++;
                            fileIndex++;
                        };
                        reader.readAsDataURL(files.files[index]);
                    }
                }
            }
            else{
                alert("You are trying to upload more than "+length+" contents !")
                filesLength=0;
            }
        }
    }

    this.deleteContent = function(id){
        document.getElementById(id).style.display="none";
        document.getElementById("upload-add-files").style.display="block";
        document.getElementById("upload-add-gallery").style.display="block";


        filesLength--;
        //alert(filesLength)
    }
    this.setDefault = function(){
        filesLength = 0;
        document.getElementById("browsed-image-video-area").innerHTML="";
        document.getElementById("browsed-file-area").innerHTML="";
        document.getElementById("filesId").src="";

    }

}

function isValidFile(filesId,type){
    var files = document.getElementById(filesId);
    var imageExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
    var videoExtensions = /(\.mp4|\.3gp|\.avi|\.mov)$/i;
    var fileExtensions = /(\.txt|\.pdf|\.docx|\.ppt|\.xlsx|\.java|\.html|\.htm|\.js|\.css|\.jsp|\.php|\.rar|\.war|\.jar)$/i;

    for(var i=0;i<files.files.length;i++){
        var file =  files.files[i];
        if(type == "gallery"){
            if(!imageExtensions.exec(file.name)){
                return false;
            }
            else{
                return true;
            }
        }
        else if(type == "file"){
            if(!fileExtensions.exec(file.name)){
                return false;
            }
            else{
                return true;
            }
        }
    }
}
