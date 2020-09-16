(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'doctor',
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
            header:'Address',
            dataIndex:'address'
        },{
            header:'contact',
            dataIndex:'contact'
        }]
    });
})();