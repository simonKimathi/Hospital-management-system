<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 02/09/2020
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 02/09/2020
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>

<div class="container">
    <div class="card-header">
        <h4 class="card-title">
            Add Room </h4>
        <a class="heading-elements-toggle" href="#"> <i class="la la-ellipsis-h font-medium-3"> </i> </a>
    </div>
    <div class="card-body">
        <form id="addForm" action="#">
            <div class="form-row">
                <div class="form-group">
                    <label for="roomId">Room ID</label>
                    <input type="text" class="form-control" id="roomId" placeholder="enter room id" name="roomId">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="rType">room type</label>
                    <select id="rType" class="form-control" placeholder="choose..." name="rType">
                        <option>Billing</option>
                        <option>Laboratory</option>
                        <option>Pharmacy</option>
                        <option>medical</option>
                    </select>
                </div>
            </div>
            <br/>
            <button type="submit" class="btn btn-primary" id="saveRoom">Save</button>
        </form>
    </div>
</div>
<%--
<script>

    var roomId=$('input[name="roomId"]').val();
    var rType=$('input[name="rType"]').val();

    function formUpload () {
        // capture and pass your form data in this params object
        var params = {
            roomId: 'roomId',
            rType: 'rType'
        };

        //send data to server
        // endpointurl should be http://localhost:8080/....
        //If it fails, check how to set application/json header and making cross origin request
        $.post('http://localhost:8080/Hospital-management-system/rest/hospital/save/addRoom', {
            data: JSON.stringify(params)
        }, function (response) {
            console.log(response);
        });
    };
</script>--%>
