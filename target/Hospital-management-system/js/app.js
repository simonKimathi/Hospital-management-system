var hospitalJsLib = hospitalJsLib || {};

hospitalJsLib.showTable = function(){
    var me = this;

    var tableContent = `<table id="patients"><tr><th>Name</th><th>Address</th></tr>`;
    me.data.forEach(row => {
        tableContent += `<tr><td>${row.id}</td><td>${row.name}</td></tr>`;
    });
    tableContent += `</table>`;

    document.getElementById('content').innerHTML = tableContent;

}

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

