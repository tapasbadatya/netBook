/**
 * Created by admin on 06-07-2018.
 */
var Directory = new function(){



    var renamedName="";
    var name="";

    this.applyRename = function(id){

        name = document.getElementById(id).innerText;
        document.getElementById(id).innerHTML="<input type='text' value='"+name+"' id='editFolderName' onblur=\"Directory.rename('"+id+"','"+name+"')\" onkeyup=\"Directory.getRenamedVal('editFolderName')\">";
        renamedName = name;
        document.getElementById(id).removeAttribute("onclick");
    };

    this.getRenamedVal = function(id){
      renamedName = document.getElementById(id).value;
    };
    this.rename = function(id,name){
        if(renamedName.length<=0){
            document.getElementById(id).innerHTML="";
            document.getElementById(id).innerText=name;
        }
        else{
            document.getElementById(id).innerHTML="";
            document.getElementById(id).innerText=renamedName;
        }
        document.getElementById(id).setAttribute("onclick","Directory.applyRename('"+id+"')");
    };


};