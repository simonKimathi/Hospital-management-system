(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'doctor/getDoctors',
        gridStyle:'datatable table table-hover table-center mb-0',
        contentId:'doctorsTable',
        dataHref:'doctorProfile.jsp',
        gridColumns:[{
            header:'id number',
            dataIndex:'bioData.nationalId'
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
            header:'Address',
            dataIndex:'contact.address'
        },{
            header:'contact',
            dataIndex:'contact.phoneNumber'
        }],
        gridButtons:[{
            linkAddress:'../admin/doctor-list.jsp',
            label: 'view Doctors',
            cssClass: 'btn btn-info add-new fa fa-menu',
            id: 'org-addButton',
        }],
        gridData:[{
            dataHref:'../doctorProfile.jsp'
        }]
    });
})();

(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'patient/getPatients',
        gridStyle:'datatable table table-hover table-center mb-0',
        contentId:'patientsTable',
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
            linkAddress:'../admin/patient-list.jsp',
            label: 'view Patients',
            cssClass: 'btn btn-info add-new fa fa-plus',
            id: 'org-addButton',
        }],
        gridData:[{
            dataHref:'../PatientProfile.jsp'
        }]
    });
})();
/*

(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'patient/getPatients',
        gridStyle:'datatable table table-hover table-center mb-0',
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
})();*/
