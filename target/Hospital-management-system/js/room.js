(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'room/getRooms',
        gridStyle:'datatable table table-hover table-center mb-0',
        contentId:'room-content',
        dataHref:'#assignRoom',
        idRoomName:"roomId",
        gridColumns:[{
            header:'Room ID',
            dataIndex:'roomId'
        },{
            header:'Room Type',
            dataIndex:'rType'
        },{
            header:'Assigned To',
            dataIndex:'assigned'
        }]
    });
})();





