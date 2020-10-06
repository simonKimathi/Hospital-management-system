document.getElementById("saveRoom").addEventListener('click', event => {
    event.preventDefault();
    console.log("button clicked")

    var roomId = document.getElementById('roomId').value;
    console.log("romId:"+roomId);

    var rType = document.getElementById('rType').value;
    console.log("roomtype:"+rType);


    var formDataRaw = {
        roomId:roomId,
        rType:rType
    };
    var formDataJson=JSON.stringify(formDataRaw)

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
    xhr.open('post', '/Hospital-management-system/rest/hospital/save/addRoom', false);

    //add this to submit the data sent through ajax as json
    xhr.setRequestHeader("Content-type",   "application/json");

    xhr.send(formDataJson);

    HospitalSystemJsLib.showGrid.call(me);
});