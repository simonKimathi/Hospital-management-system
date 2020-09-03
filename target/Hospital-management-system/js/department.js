(function(){
    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'department',
        gridStyle:'customers',
        componentId:'department',
        gridColumns:[{
                header:'id',
                dataIndex:'id'
            },{
                header:'Name',
                dataIndex:'name'
            }],
        gridButtons:[{
            label: 'Add department',
            cssClass: 'addButton',
            handler: 'addButton',
            id: 'org-addButton',
        },{
            label: 'Edit department',
            cssClass: 'editButton',
            handler: 'editButton',
            id: 'org-editButton',
        },{
            label: 'Delete department',
            cssClass: 'deleteButton',
            handler: 'deleteButton',
            id: 'org-deleteButton',
        }],
        formField:[{
            label: 'Organization Id',
            name: 'id',
            type: 'text',
            id: 'org-name'
        },{
            label: 'Organization Name',
            name: 'name',
            type: 'text',
            id: 'org-address'
        }]
    });
})();