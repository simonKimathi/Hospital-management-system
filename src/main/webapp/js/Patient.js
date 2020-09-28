(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'viewPatients',
        gridStyle:'customers',
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