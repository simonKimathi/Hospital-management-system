(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: '../patient',
        gridStyle:'customers',
        gridColumns:[{
            header:'id number',
            dataIndex:'id'
        },{
            header:'first name',
            dataIndex:'bioData[0]'
        },{
            header:'Last Name',
            dataIndex:'bioData[1]'
        },{
            header:'sur Name',
            dataIndex:'bioData[2]'
        },{
            header:'gender',
            dataIndex:'bioData[3]'
        },{
            header:'date of birth',
            dataIndex:'dob'
        },{
            header:'contact',
            dataIndex:'contact'
        }],
        gridButtons:[{
            linkAddress:'../Patient/addPatient.jsp',
            label: 'Add a Patient',
            cssClass: 'btn btn-info add-new fa fa-plus',
            id: 'org-addButton',
        }],
        gridData:[{
            dataHref:'../PatientProfile.jsp'
        }]
    });
})();