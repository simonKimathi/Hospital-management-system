(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'user/getUsers',
        gridStyle:'datatable table table-hover table-center mb-0',
        contentId:'module-content',
        dataHref:'PatientProfile.jsp',
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
            header:'date of birth',
            dataIndex:'bioData.DOB'
        },{
            header:'contact',
            dataIndex:'contact.phoneNumber'
        }],
        gridData:[{
            dataHref:'../PatientProfile.jsp'
        }]
    });
})();