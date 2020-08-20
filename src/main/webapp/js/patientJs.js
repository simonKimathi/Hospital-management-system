/* var patient={
    data:[{
        name:'kim',
        age:24
    },{
        name:'john',
        age:25
    },{
        name:'john',
        age:25
    },{
        name:'john',
        age:25
    }],
    showTable:function () {
        var tableContent = '<table id="patients">'
            + '<tr>'
            + '<th>NAME</th>'
            + '<th>AGE</th>'
            + '</tr>';

        /!*this.data.forEach(col=>{
            tableContent+='<tr><td>'+col.name+'<td><td>'+col.age+'</td></tr>'*!/

        for (var idx = 0; idx < this.data.length; idx++) {
            tableContent += '<tr><td>' + this.data[idx].name + '</td><td>' + this.data[idx].age + '</td></tr>';
        }

        tableContent += '</table>'
        //console.log(this.tableContent);

        document.getElementById("content").innerHTML = tableContent;
    }
};
patient.showTable();*/
//document.getElementById("content").innerHTML=patient.showTable();

/*
function showTable() {
    patient.data.forEach(col=>{
        console.log(col.name+" "+col.age);
    })
}*/

//hospitalJsLib

/*
(function () {
    hospitalJsLib.loadData().call({
        dataUrl:"organization"
    })

})();*/
