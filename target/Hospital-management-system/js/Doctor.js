(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'viewDoctors',
        gridStyle:'customers',
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
            linkAddress:'../doctor/addDoctor.jsp',
            label: 'Add a doctor',
            cssClass: 'btn btn-info add-new fa fa-plus',
            id: 'org-addButton',
        }],
        gridData:[{
            dataHref:'../doctorProfile.jsp'
        }]
    });
})();