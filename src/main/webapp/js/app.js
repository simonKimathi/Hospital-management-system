var HospitalSystemJsLib = HospitalSystemJsLib || {};

//By default show table on clicking the to navbar buttons
HospitalSystemJsLib.showGrid = function(){

    /*puts the scope of this in another variable me to avoid confusing,
    basically know the exact this that is being referred to.*/
    var me = this;

    //store for the request response for the data table
    var requestResponse = [];

    //ajax request to load table data from servlet
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function(){
        if (xhr.readyState == XMLHttpRequest.DONE){
            if (xhr.status == 200){
                requestResponse = eval('(' + xhr.responseText + ')');
            }
        }
    }

    //its a get method hence calls servlet doGet method
    xhr.open('get','/Hospital-management-system/rest/'+ me.dataUrl , false);
    xhr.send();

    //append the ajax response to the current object gridData, that later populates the table
    me.gridData = requestResponse;

    var tableContent = ``;
/*
    //add buttons on top of the table, that is add button
    me.gridButtons.forEach(button => {
        tableContent += `<a href="${button.linkAddress}"><button class="${button.cssClass}" id="${button.id}"><i class="fa ${button.fontAwesomeIcon}"></i> ${button.label}</button></a>`;
    });*/

    //beginning of creating the table html
    tableContent += `<br/><table class='${me.gridStyle}'><tr>`;

    //Creating the table headers from gridColumns property 'header'
    me.gridColumns.forEach(col => {
        tableContent += `<th>${col.header}</th>`;
    });
    /*tableContent += `<th></th><th></th>`;*/

    tableContent += `</tr>`;

    /*store for row action details, for which to append row action event of edit and delete,
    we are storing it because we will need to add the events listener later after rendering the table*/
    var actionEvents = [];

    /* loop through the gridData, which was assign from the table ajax request, to create
    the table rows */
    me.gridData.forEach(row => {

        /*if(!row.bioData.nationalId){

            row.bioData.nationalId = 0;
        }*/


        if(me.idFieldName){
            hrefValue=me.dataHref+"?id="+row.idFieldName;

        }else if (me.rowFieldName){
            hrefValue=me.dataHref+"?id="+row.rowFieldName;
        }else if (me.idRoomName){
            hrefValue=me.dataHref+"?id="+row.idRoomName;
        }else {
            hrefValue=me.dataHref+"?id="+row.bioData.nationalId;

        }



        tableContent += `<tr class="table-row" data-href="${hrefValue}">`;

        ///finding out which data row belongs to which header or column and appending it

        var rowDataContent;
        me.gridColumns.forEach(col => {

            var objectDrillDown = (col.dataIndex).split('.');

            var rowObj = true;
            objectDrillDown.forEach(arrEl => {
                if (rowObj){
                    rowDataContent = row[arrEl];
                    rowObj = false;
                }else{
                    rowDataContent = rowDataContent[arrEl];
                }
            });

/*
            console.log(rowDataContent);
*/

            //console.log("href id"+me.dataHref +" :"+row.id);

            tableContent += `<td>${rowDataContent}</td>`;
            /*
            */
            /*var objectDrillDown=(col.dataIndex).split('.');

            var objectIndex='';
            objectDrillDown.forEach(arrEl=>{
                objectIndex=`[${arrEl}]`;
            })

            console.log(objectIndex);
            var rowDataContent='';

            if (objectIndex){
                rowDataContent=row+`${objectIndex}`
            }
            else {
                rowDataContent='';
            }
            console.log(rowDataContent);
            tableContent += `<td data-href="${row.dataHref}?id=${row[col]}.nationalId" >${row[col.dataIndex]}</td>`;
       */ });

        /*Creating the row edit and delete buttons id for which to append event listeners for editing
        and deleting respectively, the ids needs to be unique for each row*/
        /*var editBtnId = me.componentId + '-edit-' + row.id;
        var deleteBtnId = me.componentId + '-del-' + row.id;*/

        /* adding the edit and delete buttons in each row for which the unique button id created above will be append
        in order to attach and event listener for either editing or deleting*/
        /*tableContent += `<td><button class="btn" id="${editBtnId}"><i class="fa fa-edit"></i></button></td>`
            + `<td><button class="btn" id="${deleteBtnId}"><i class="fa fa-trash"></button></td>`;*/

        tableContent += `</tr>`;

        /*Storing then edit and delete button in action event so that we can attach event listener to the row
        edit and delete button once the table is rendered*/
        /*actionEvents.push({editBtnId: editBtnId, deleteBtnId: deleteBtnId, recordId: row.id});*/

    });

    tableContent += `</table>`;

    //rendering the table
    var tableView = document.getElementById(`${me.contentId}`);
    if(tableView){
        tableView.innerHTML = tableContent;
    }


/*
    //adding events listeners to the button on top of the table, that is add button
    me.gridButtons.forEach(button => {
        if (button.handler == 'addButton'){
            var buttonView=document.getElementById(button.id);
            if(buttonView){
                buttonView.addEventListener('click', function(){
                    HospitalSystemJsLib.Form.call(me);
                });
            }
        }
    });
*/

    //adding events listeners to each row of the table, from actionEvents store
   /* actionEvents.forEach(button => {

        //row edit event listeners
        document.getElementById(button.editBtnId).addEventListener('click', function(){
            //make ajax request to load record to update

            var loadedFormData = {};
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function(){
                if (xhr.readyState == XMLHttpRequest.DONE){
                    if (xhr.status == 200){
                        loadedFormData = eval('(' + xhr.responseText + ')');
                    }
                }
            }

            xhr.open('get', me.dataUrl + '?action=load&id=' + button.recordId, false);
            xhr.send();

            me.loadedFormData = loadedFormData;
            HospitalSystemJsLib.Form.call(me);

        });

        //row delete event listeners
        document.getElementById(button.deleteBtnId).addEventListener('click', function(){

            //make ajax request to delete record
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function(){
                if (xhr.readyState == XMLHttpRequest.DONE){
                    if (xhr.status == 200){
                        console.log(xhr.responseText);
                    }
                }
            }

            console.log(button.recordId);
            xhr.open('delete', me.dataUrl, false);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.send("id=" + button.recordId);

            //show the module table once done, this will auto refresh the table
            HospitalSystemJsLib.showGrid.call(me);

        });
    });*/

}


//Form creation function
HospitalSystemJsLib.Form = function(){
    var me = this;

    var formContent = `<form action="#">`;

    //loop through the form field to know the type and details of form input types to render
    me.formField.forEach(field =>{

        formContent += `<div class="row">`
            + `<div class="col-25">`
            + `<label for="${field.name}">${field.label}</label>`
            + `</div>`
            + `<div class="col-75">`;

        if (field.type == 'select'){ //in case the form field is a select box the requires other data from ajax
            //load the data and create the options of the select box

            //store the select options, once the data is loaded from servlet for later use on populating the select box options
            var selectStore = [];

            //load the select box options from the servlet url provided through ajax
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function(){
                if (xhr.readyState == XMLHttpRequest.DONE){
                    if (xhr.status == 200){
                        selectStore = eval('(' + xhr.responseText + ')');
                    }
                }
            }

            xhr.open('get', field.storeModel.url, false);
            xhr.send();

            //open the select box html element and give id and name value
            formContent += `<select id="${field.id}" name="${field.name}">`;

            //loop through ajax response to create select box options with the id value and display text
            selectStore.forEach(row => {
                formContent += `<option value="${row[field.storeModel.dataBinding.id]}">${row[field.storeModel.dataBinding.display]}</option>`;
            });

            //close the select box html element
            formContent += `</select>`;

        }else{
            //for any other form input just create input with the type
            formContent += `<input type="${field.type}" id="${field.id}" name="${field.name}">`
        }

        formContent += `</div></div>`;

    });

    formContent +=  `<div class="row">`
        + `<input type="submit" class="button addButton" value="Submit" id="${me.componentId}">` //the form submit button
        + `</div>`
        + ` </form>`;

    //render the form to html
    document.getElementById('module-content').innerHTML = formContent;

    //if data load from servlet populate form
    if (me.loadedFormData){
        me.formField.forEach(field =>{
            if(me.loadedFormData[field.name])
                document.getElementById(field.id).value = me.loadedFormData[field.name];
        });
    }

    //create the form submit button event, that is add event to the form submit button to be able to send data to servlet
    document.getElementById(me.componentId).addEventListener('click', event => {
        event.preventDefault();

        var formData = undefined;

        if (me.formContentType == 'application/json'){
            //variable to hold the form data to create json for saving rest endpoint
            formData = {};

            //loop through the form fields to create json object for saving
            me.formField.forEach(field =>{
                populateFormJson(formData, field.name, document.getElementById(field.id).value);

            });

        }else{

            //variable to hold the form data to be sent to the servlet for saving
            formData = '';

            //loop through the form fields to get the form input field name and value and append with an equal sign
            me.formField.forEach(field =>{
                formData += field.name + '=' + document.getElementById(field.id).value + '&';
            });

        }

        //send the form data to servlet through ajax
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
            if (xhr.readyState == XMLHttpRequest.DONE){
                if (xhr.status == 200){
                    console.log(xhr.responseText)
                }
            }
        }
        xhr.open('post', '/Hospital-management-system/rest/hospital/save/' + me.dataUrlSave , false);

        //add this to submit the data sent through ajax as form
        xhr.setRequestHeader("Content-type",  me.formContentType? me.formContentType : "application/x-www-form-urlencoded");

        console.log("form data"+formData);
        if (me.formContentType == 'application/json')
            xhr.send(JSON.stringify(formData));
        else
            xhr.send(formData);

        //auto render the grid table to auto load the table store and show all the added records
        HospitalSystemJsLib.showGrid.call(me);

    });

    function populateFormJson(formData, fieldName, fieldValue) {
        var formFieldNameParts = fieldName.split('.');

        lastFieldNamePartIdx = formFieldNameParts.length-1;
        for (var i = 0; i < lastFieldNamePartIdx; ++ i) {
            currentFieldNamePart = formFieldNameParts[i];

            if (!(currentFieldNamePart in formData)){
                formData[currentFieldNamePart] = {}
            }

            formData = formData[currentFieldNamePart];
        }

        formData[formFieldNameParts[lastFieldNamePartIdx]] = fieldValue;

    }

}


/*function submitForm(formDataRaw, formContentType){

    var me = this;
    //send the form data to servlet through ajax
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function(){
        if (xhr.readyState == XMLHttpRequest.DONE){
            if (xhr.status == 200){
                console.log(xhr.responseText)
            }
        }
    }
    xhr.open('post', '/Hospital-management-system/rest/hospital/save/' + me.dataUrlSave, false);

    //add this to submit the data sent through ajax as form
    xhr.setRequestHeader("Content-type",  me.formContentType? me.formContentType : "application/x-www-form-urlencoded");

    console.log("form data x"+formDataRaw);
    if (me.formContentType == 'application/json') {
        xhr.send(JSON.stringify(formDataRaw));
    }
    else {
        xhr.send(formDataRaw);
    }

    //auto render the grid table to auto load the table store and show all the added records
    //HospitalSystemJsLib.showGrid.call(me);

}*/



