(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'roomServlet',
        gridStyle:'customers',
        gridColumns:[{
            header:'db ID',
            dataIndex:'id'
        },{
            header:'Room ID',
            dataIndex:'roomId'
        },{
            header:'Room Type',
            dataIndex:'rType'
        }],
        gridButtons: [{
            label: 'Add Rooom',
            cssClass: 'action-btn',
            fontAwesomeIcon: 'fa-plus',
            handler: 'addButton',
            id: 'org-addButton',
        }],
    });
})();