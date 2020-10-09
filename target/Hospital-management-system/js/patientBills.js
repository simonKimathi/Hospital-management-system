(function(){

    var pid=document.getElementById("pid").value;

    console.log("**pid="+pid)

    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'invoice/getBillByPatient/'+pid,
        gridStyle:'datatable table table-hover table-center mb-0',
        contentId:'patient-bills',
        dataHref:'#pay-bill',
        rowFieldName:'id',
        gridColumns:[{
            header:'Patient Id',
            dataIndex:'patientId'
        },{
            header:'Particular',
            dataIndex:'particular'
        },{
            header:'price',
            dataIndex:'price'
        },{
            header:'bill status',
            dataIndex:'status'
        }]
    });

    $(document).ready(function($) {
        $(".table-row").click(function() {
            window.document.location = $(this).data("href");
        });
    });

})();