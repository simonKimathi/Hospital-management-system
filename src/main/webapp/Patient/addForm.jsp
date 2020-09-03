
<div class="container">
    <div class="card-header">
        <h4 class="card-title">
            Add Patient </h4>
        <a class="heading-elements-toggle" href="#"> <i class="la la-ellipsis-h font-medium-3"> </i> </a>
    </div>
    <div class="card-body">
        <form id="addForm" method="post" action="${request.contextPath}/Hospital-management-system/patient">
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputFName">First Name</label>
                    <input type="text" class="form-control" id="inputFName" placeholder="first name" name="firstName">
                </div>
                <div class="form-group col-md-4">
                    <label for="inputLName">Last Name</label>
                    <input type="text" class="form-control" id="inputLName" placeholder="Last name" name="lastName">
                </div>
                <div class="form-group col-md-4">
                    <label for="inputSName">Surname</label>
                    <input type="text" class="form-control" id="inputSName" placeholder="sur-name" name="surName">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputId">National Id Number</label>
                    <input class="form-control" id="InputId" ype="number" placeholder="ID Number" name="id"/>
                </div>
                <div class="form-group col-md-4">
                    <label for="inputGender">Gender</label>
                    <select id="inputGender" class="form-control" placeholder="choose..." name="gender">
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                </div>
                <div class="form-group col-md-4">
                    <label for="dob">
                        Date Of Birth:
                    </label>
                    <input class="form-control required" id="dob" name="DOB" type="date"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="InputContact"> Contact Number:</label>
                    <input class="form-control" id="InputContact" type="number" placeholder="+254..." name="contact"/>
                </div>
                <div class="form-group col-md-4">
                    <label for="InputEmergencyContact"> Emergency Number: </label>
                    <input class="form-control" id="InputEmergencyContact" type="number" placeholder="+254..." name="emergencyContact"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputCounty">County</label>
                    <input type="text" class="form-control" id="inputCounty" placeholder="enter patient county" name="county">
                </div>
                <div class="form-group col-md-4">
                    <label for="inputSub_county">Sub-county</label>
                    <input type="text" class="form-control" id="inputSub_county" placeholder="enter patient sub-county" name="subCounty">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="inputVillage">Village</label>
                    <input type="text" class="form-control" id="inputVillage" placeholder="enter patient village" name="village">
                </div>
            </div>
            <br/>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
</div>

