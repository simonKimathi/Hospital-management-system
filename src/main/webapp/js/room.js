(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'room',
        gridStyle:'customers',
        gridColumns:[{
            header:'Room ID',
            dataIndex:'id'
        },{
            header:'Room Type',
            dataIndex:'rType'
        },{
            header:'Doctor assigned',
            dataIndex:'assigned'
        }]
    });
})();