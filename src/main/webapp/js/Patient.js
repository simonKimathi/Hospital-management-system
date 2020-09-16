(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: '../patient',
        gridStyle:'customers',
        gridColumns:[{
            header:'id number',
            dataIndex:'id'
        },{
            header:'first name',
            dataIndex:'firstName'
        },{
            header:'Last Name',
            dataIndex:'lastName'
        },{
            header:'sur Name',
            dataIndex:'surName'
        },{
            header:'gender',
            dataIndex:'gender'
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
        }]
    });
})();