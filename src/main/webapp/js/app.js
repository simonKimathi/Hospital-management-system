var HospitalSystemJsLib = HospitalSystemJsLib || {};

HospitalSystemJsLib.showGrid = function(){
    //local scope
    var me = this;

    //variable to store dat from get method
    var requestResponse = [];

    //ajax request to get data from get method
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState==XMLHttpRequest.DONE){
            if(xhr.status==200){
                requestResponse=eval('('+xhr.responseText+')')
            }
        }
    }

    //call get method from servlet specified by url
    xhr.open('get', me.dataUrl, false);
    xhr.send();

    //stor data from ajax request to grid data object which will be later used in table populating
    me.gridData = requestResponse;

    var tableContent = ``;

    //add button for add
    me.gridButtons.forEach( button=>{
        tableContent += `<Button class="${button.cssClass}" id="${button.id}"><i class="fa ${button.fontawesomeIcon}"></i> ${button.label}</Button>`;

    })

    //beginning of table content for html
    tableContent += `<br/><table class='${me.gridStyle}'><tr>`;

    //creating table headers
    me.gridColumns.forEach(col => {
        tableContent += `<th>${col.header}</th>`;
    });
    tableContent += `</tr>`;

    me.gridData.forEach(row => {

        tableContent += `<tr>`;

        me.gridColumns.forEach(col => {
            tableContent += `<td>${row[col.dataIndex]}</td>`;
        });

        tableContent += `</tr>`;
    });

    tableContent += `</table>`;

    document.getElementById('module-content').innerHTML = tableContent;

    me.gridButtons.forEach(button => {
        console.log('Registing event for adding form');
        if (button.handler == 'addButton') {
            document.getElementById(button.id).addEventListener('click', function () {
                HospitalSystemJsLib.Form.call(me);
            });
        }

    });

}

HospitalSystemJsLib.Form = function(){
    var me = this;

    var formContent = `<form action="#">`;

    me.formField.forEach(field =>{
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

    document.getElementById(me.componentId).addEventListener('click', event => {
        event.preventDefault();

        var formData = '';
        me.formField.forEach(field =>{
            formData += field.name + '=' + document.getElementById(field.id).value + '&';
        });

        var xhr = new XMLHttpRequest();

        var requestResponse = [];
        xhr.onreadystatechange = function(){
            if (xhr.readyState == XMLHttpRequest.DONE){
                if (xhr.status == 200){
                    requestResponse = eval('(' + xhr.responseText + ')');

                }
            }
        }

        console.log(formData);

        xhr.open('post', me.dataUrl, false);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send(formData);

        HospitalSystemJsLib.showGrid.call(me);

    });
}

