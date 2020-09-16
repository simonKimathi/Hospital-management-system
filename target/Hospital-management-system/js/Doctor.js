(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: '../doctor',
        gridStyle:'customers',
        gridColumns:[{
            header:'id number',
            dataIndex:'nationalId'
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
            header:'Address',
            dataIndex:'address'
        },{
            header:'contact',
            dataIndex:'contact'
        }],
        gridButtons:[{
            linkAddress:'../doctor/addDoctor.jsp',
            label: 'Add a doctor',
            cssClass: 'btn btn-info add-new fa fa-plus',
            id: 'org-addButton',
        }]
    });
})();