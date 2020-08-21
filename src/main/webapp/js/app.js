var hospitalJsLib = hospitalJsLib || {};

hospitalJsLib.showGrid = function(){
    var me = this;

    var xhr = new XMLHttpRequest();

    var requestResponse = [];
    xhr.onreadystatechange = function(){
        if (xhr.readyState == XMLHttpRequest.DONE){
            if (xhr.status == 200){
                requestResponse = eval('(' + xhr.responseText + ')');

            }
        }
    }

    xhr.open('get', me.dataUrl, false);
    xhr.send();

    me.gridData = requestResponse;

    var tableContent = ``;
    me.gridButtons.forEach(button => {
        tableContent += `<button class="button ${button.cssClass}" id="${button.id}">${button.label}</button>`;
    });

    tableContent = `<br><table id="${me.gridStyle}"><tr>`;

    //create headers
    me.grid.columns.forEach(col=>{
        tableContent+=`<th>col.header</th>`;
    });
    tableContent += `</tr>`

    //create table data #row
    me.gridColumns.forEach(row=> {

        tableContent += `<tr>`;
        //create table data #columns in that row
        me.gridColumns.forEach(col=>{
            tableContent+=`<td>row[col.colIndex]</td>`;
        });
        tableContent+=`</tr>`
    });
    //close table
    tableContent += `</table>`;

    //change content by id
    document.getElementById('module-content').innerHTML = tableContent;
    //add buttons for form actions(save,cancel)
    me.gridButtons.forEach(button =>{
        if(button.handler=='addButton'){
            document.getElementById(button.id).addEventListener('click',function () {
                hospitalJsLib.Form.call(me);
            });
        }
    });

}

hospitalJsLib.Form = function(){
    var me=this;

    var formContent=`<form action="#">`;

    me.formField.forEach(field=>{
        formContent += `<div class="row">`
            + `<div class="col-25">`
                    + `<label for="${field.name}">${field.label}</label>`
                + `</div>`
                + `<div class="col-75">`
                    + `<input type="${field.type}" id="${field.id}" name="${field.name}">`
                + `</div>`
            + `</div>`;
    });

    formContent +=  `<div class="row">`
                + `<input type="submit" value="Submit" id="${me.componentId}">`
            + `</div>`
        + ` </form>`;
    document.getElementById('module-content').innerHTML = formContent;

    document.getElementById(me.componentId).addEventListener('click',event=> {
        event.preventDefault();

        var formData=``;
        me.formField.forEach(field=>{
            formData += field.name + '=' +document.getElementById(field.id).value + '&';
        });
        var me = this;

        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
            if (xhr.readyState == XMLHttpRequest.DONE){
                if (xhr.status == 200){
                    hospitalJsLib.data = eval('(' + xhr.responseText + ')');
                }
            }
        }

        xhr.open('post',me.dataUrl,false);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send(formData);

        hospitalJsLib.showGrid().call(me);


    });


}

