(function(){
    HospitalSystemJsLib.showGrid.call({
        /*dataUrl: '../room',*/
        dataUrl: 'room/getRooms',/*
        dataUrlSave : 'addRoom',*/
        contentId:'module-content',/*
        componentId: 'roomComponent',*/
        gridStyle:'customers',
        formContentType: 'application/json',
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
            handler:'addButton',
            label: 'Add room',
            cssClass: 'btn btn-info add-new fa fa-plus',
            id: 'org-addButton',
        }]/*,
        formField:[{
            label: 'Room ID',
            name: 'roomId',
            type: 'text',
            id: 'org-name'
        },{
            label: 'Room Type',
            name: 'contact.rType',
            type: 'text',
            id: 'org-name'
        }]*/
    });
})();





