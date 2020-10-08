document.getElementById("search_patient_button").addEventListener('click', event => {
    event.preventDefault();
    console.log("button clicked")

    var searchValue = document.getElementById('search-input').value;

    console.log("search value ="+searchValue)

    HospitalSystemJsLib.showGrid.call({
        dataUrl: 'patient/getPatientByName/'+searchValue,
        gridStyle:'datatable table table-hover table-center mb-0',
        contentId:'module-content',
        dataHref:'patient-profile.jsp',
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
            header:'date of birth',
            dataIndex:'bioData.DOB'
        },{
            header:'contact',
            dataIndex:'contact.phoneNumber'
        }]
    });

    $(document).ready(function($) {
        $(".table-row").click(function() {
            window.document.location = $(this).data("href");
        });
    });



});




