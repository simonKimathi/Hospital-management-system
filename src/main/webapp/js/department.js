(function(){
    hospitalJsLib.showGrid().call({
        dataUrl: 'department',
        gridStyle:'patients',
        componentId:'department',
        gridColumns:[{
                header:'id',
                colIndex:'id'
            },{
                header:'Name',
                colIndex:'name'
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
            name: 'name',
            type: 'text',
            id: 'org-name'
        },{
            label: 'Organization Name',
            name: 'address',
            type: 'text',
            id: 'org-address'
        }]
    });
})();