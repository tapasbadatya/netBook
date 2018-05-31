/**
 * Created by Tapas on 30-04-2018.
 */
var Utils = new function(){
    /*this.on = function(){
        document.getElementById("overlay").style.display="block";
        document.getElementById("t1").style.display="block";

    }
    this.off = function(){
        document.getElementById("overlay").style.display="none";
        document.getElementById("t1").style.display="none";
    }*/

    this.search = function(id,area){
        var input, filter, ul, li, a, i;
        input = document.getElementById(id);
        filter = input.value.toUpperCase();
        ul = document.getElementById(area);
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

    this.setValue = function(id,value){
        document.getElementById(id).value = value;
    }

    this.clearInput = function(id){
        document.getElementById(id).value = "";
    }

    this.applyScrollBar = function(id,type,flag){
        if(flag == true){
            if(type=="v")
                document.getElementById(id).setAttribute("style","overflow-y:scroll;overflow-x:hidden;");

            if(type=="h")
                document.getElementById(id).setAttribute("style","overflow-x:scroll;overflow-y:hidden;");

            if(type=="")
                document.getElementById(id).setAttribute("style","overflow-y:scroll;overflow-x:scroll;");
        }
        else if(flag == false){
                document.getElementById(id).setAttribute("style","overflow-y:hidden;overflow-x:hidden;");
        }

    }
    this.display = function(id,flag){
        if(flag==true)
            document.getElementById(id).style.display="block";
        else if(flag == false)
            document.getElementById(id).style.display="none";
    }
    this.setTextAreaText = function(inputId){
        document.getElementById(inputId).onkeyup = function(event){
            if(event.keyCode == 13 || event.which == 13) {

                var val = document.getElementById(inputId).value;
                val = "\n" + val;

                var counter = 0;
                for (var i = 0; i < val.length; i++) {
                    if (val.charAt(i) == '\n')
                        counter++;
                    else
                        break;
                }
                document.getElementById(inputId).innerText = val.substring(counter, val.length - 1);
            }
        }
    }



    /*var fileupload = document.getElementById("get-file");
    var image = document.getElementById("addImage");

    image.onclick = function () {
        fileupload.click();
    };
    fileupload.onchange = function () {
        if (fileupload.files && fileupload.files[i]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                var simg=document.createElement("img");
                simg.setAttribute("src",e.target.result);
            };
            reader.readAsDataURL(fileupload.files[0]);
        }
    };*/





};

