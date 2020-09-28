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

document.getElementById("saveDoctor").addEventListener('click', event => {
    event.preventDefault();

    var firstName = document.getElementById('firstName');
    var lastName = document.getElementById('lastName');
    var surName = document.getElementById('surName');
    var nationalId = document.getElementById('nationalId');
    var gender = document.getElementById('gender');
    var phoneNo = document.getElementById('phoneNo');
    var address = document.getElementById('address');

    var formData = {
        bioData: {
            firstName: firstName,
            lastName: lastName,
            surName: surName,
            nationalId: nationalId,
            gender: gender,
        },
        contact: {
            phoneNo: phoneNo,
            address:address
        }
    }

    submitForm(formData, 'application/json');
});