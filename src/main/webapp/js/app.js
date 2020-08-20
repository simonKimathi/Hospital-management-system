
var hospitalJsLib= hospitalJsLib ||{}; //if hospitalJsLib is not created then create
//show table object
hospitalJsLib.loadData = function(){
    var me = this;

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function(){
        if (xhr.readyState == XMLHttpRequest.DONE){
            if (xhr.status == 200){
                hospitalJsLib.data = eval('(' + xhr.responseText + ')');
                hospitalJsLib.showTable();
            }
        }
    }

    xhr.open('get', me.dataUrl, true);
    xhr.send();

}