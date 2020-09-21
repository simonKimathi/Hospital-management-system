(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: '../room',
        gridStyle:'customers',
        gridColumns:[{
            header:'Room ID',
            dataIndex:'roomId'
        },{
            header:'Room Type',
            dataIndex:'rType'
        },{
            header:'Assigned To',
            dataIndex:'assigned'
        }],
        gridButtons:[{
            linkAddress:'../room/addRoom.jsp',
            label: 'Add room',
            cssClass: 'btn btn-info add-new fa fa-plus',
            id: 'org-addButton',
        }]
    });
})();



