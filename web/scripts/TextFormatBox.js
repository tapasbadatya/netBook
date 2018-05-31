/**
 * Created by Tapas on 22-05-2018.
 */

var Text = new function(){

    var selectedFormat="";
    var number=1;
    var position=0;

    this.applyStyleBold = function(inputId){
        var val = document.getElementById(inputId).value;
        if(selectedFormat == ""){
            selectedFormat = "BOLD";
            position = val.length;
            document.getElementById(inputId).style.fontWeight="bold";
        }
        else if(selectedFormat != ""){
            selectedFormat = "";
            document.getElementById(inputId).style.fontWeight="normal";
            number=1;
        }
    }
    this.applyStyleItalic = function(inputId){
        var val = document.getElementById(inputId).value;

        if( selectedFormat == ""){
            selectedFormat = "ITALIC";
            position = val.length;
            document.getElementById(inputId).style.fontStyle="italic";

        }
        else if(selectedFormat != ""){
            selectedFormat = "";
            document.getElementById(inputId).style.fontStyle="normal";
            number=1;
        }
    }

    this.applyStyleNumbered = function(inputId){
        if(selectedFormat == ""){
            selectedFormat = "NUMBER";
            var val = document.getElementById(inputId).value;
            if(val != "")
                val = val + "\n" + String.fromCharCode(8192)+number+" . "+String.fromCharCode(8192);
            else if(val == "")
                val = val + String.fromCharCode(8192)+number+" . "+String.fromCharCode(8192);
            number++;
            document.getElementById(inputId).value=val;
        }
        else if(selectedFormat != ""){
            selectedFormat = "";
            number=1;
        }
    }
    this.applyStyleBullet = function(inputId){
        if(selectedFormat == ""){
            selectedFormat = "BULLET";
            number = 1;
            var val = document.getElementById(inputId).value;
            if(val != "")
                val = val + "\n" + String.fromCharCode(8192)+String.fromCharCode(9679)+String.fromCharCode(8192);
            else if(val == "")
                val = val + String.fromCharCode(8192)+String.fromCharCode(9679)+String.fromCharCode(8192);
            document.getElementById(inputId).value=val;
        }
        else if(selectedFormat != ""){
            selectedFormat = "";
            number=1;
        }

    }
    var toggleQuote = false;

    this.applyStyleQuote = function(inputId){
        number = 1;
        var val = document.getElementById(inputId).value;

        if(toggleQuote == false){
            val = val + String.fromCharCode(8201) + String.fromCharCode(10077)+String.fromCharCode(8201);
            toggleQuote = true;
        }
        else if(toggleQuote == true){
            val = val + String.fromCharCode(8201)+String.fromCharCode(10078) + String.fromCharCode(8201);
            toggleQuote = false;
        }
        document.getElementById(inputId).value=val;
    }
    this.setText = function(inputId){
        document.getElementById(inputId).onkeyup = function(event){

            /*if(selectedFormat == "ITALIC"){
                var val = document.getElementById(inputId).value;
                var subVal = val.substring(position,val.length);
                val = val + subVal.italics();
                document.getElementById(inputId).value=val;
            }*/



            if(event.keyCode == 13 || event.which == 13){

                var val = document.getElementById(inputId).value;

                if(selectedFormat == ""){
                    val = "\n" + val;

                    var counter=0;
                    for(var i=0;i<val.length;i++){
                        if(val.charAt(i)=='\n')
                            counter++;
                        else
                            break;
                    }
                    document.getElementById(inputId).innerText=val.substring(counter,val.length-1);
                    return;
                }
                else if(selectedFormat == "NUMBER"){

                    val = val + String.fromCharCode(8192)+number+" . "+String.fromCharCode(8192);
                    number++;
                    document.getElementById(inputId).value=val;
                    return;
                }
                else if(selectedFormat == "BULLET"){
                    val = val + String.fromCharCode(8192)+String.fromCharCode(9679)+String.fromCharCode(8192);
                    document.getElementById(inputId).value=val;
                    return;
                }

                document.getElementById("my-written-text").innerText=document.getElementById(inputId).value;

            }
        }
        document.getElementById(inputId).onkeypress = function(event){
            if(event.keyCode == 8 || event.which == 8){
                if(selectedFormat == "NUMBER"){
                    var val = document.getElementById(inputId).value;
                    //document.getElementById(inputId).value = val.substring(0,val.length-6);
                    if(val.charAt(val.length-1)=='\n')
                        number--;
                }
            }
        }

    }

    /*this.getText = function(inputId){
        document.getElementById(inputId).onkeyup = function(event){
            if(event.keyCode == 13 || event.which == 13){

                document.getElementById(inputId).value=String.fromCharCode(9679);
                document.getElementById("my-written-text").innerText=document.getElementById(inputId).value;

            }
        }
    }*/

}
