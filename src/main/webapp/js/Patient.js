(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'patient/getPatients',
        gridStyle:'datatable table table-hover table-center mb-0',
        contentId:'module-content',
        dataHref:'PatientProfile.jsp',
        gridColumns:[{
            header:'id number',
            dataIndex:'id'
        },{
            header:'first name',
            dataIndex:'bioData.firstName'
        },{
            header:'Last Name',
            dataIndex:'bioData.lastName'
        },{
            header:'sur Name',
            dataIndex:'bioData.surName'
        },{
            header:'gender',
            dataIndex:'bioData.gender'
        },{
            header:'date of birth',
            dataIndex:'dob'
        },{
            header:'contact',
            dataIndex:'contact.phoneNumber'
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