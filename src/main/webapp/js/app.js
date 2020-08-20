
var hospitalJsLib= hospitalJsLib ||{}; //if hospitalJsLib is not created then create
//show table object
hospitalJsLib.showTable=function () {
    var tableContent = '<table id="patients"><tr><th>DEPARTMENT ID</th><th>DEPARTMENT NAME</th></tr>';

    me.data.forEach(records=>{
        tableContent += '<tr><td>${records.id}</td><td>${records.name}</td></tr>';
    });
    tableContent += `</table>`;

    document.getElementById('content').innerHTML = tableContent;

}
hospitalJsLib.loadData=function () {

    var me = this;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange=function () {
        if (this.readyState == XMLHttpRequest.DONE) {
            if (this.status == 200) {
                hospitalJsLib.data = eval('(' + xhttp.responseText + ')');
                hospitalJsLib.showTable();
            }
        }
    }
    xhttp.open('GET',me.dataUrl,true);
    xhttp.send();

}