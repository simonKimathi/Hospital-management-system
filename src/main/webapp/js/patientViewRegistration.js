(function(){

    var pid=document.getElementById("pid").value;

    console.log("**pid="+pid)

    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'patientsVisits/getVisitByPatient/'+pid,
        gridStyle:'datatable table table-hover table-center mb-0',
        contentId:'medical_record',
        dataHref:'',
        gridColumns:[{
            header:'visit Id',
            dataIndex:'id'
        },{
            header:'Patient Id',
            dataIndex:'patientId'
        },{
            header:'reason for visit',
            dataIndex:'type'
        }]
    });
})();