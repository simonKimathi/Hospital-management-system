<div class="container">
    <div class="card-header">
        <h4 class="card-title">
            Add Doctor </h4>
        <a class="heading-elements-toggle" href="#"> <i class="la la-ellipsis-h font-medium-3"> </i> </a>
    </div>
    <div class="card-body">
        <form id="addForm" method="post" action="<%=request.getContextPath()%>/doctor">
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
                    <label for="inputId">National Id</label>
                    <input class="form-control" id="InputId" ype="number" placeholder="doctor id" name="nationalId"/>
                </div>
                <div class="form-group col-md-4">
                    <label for="inputGender">Gender</label>
                    <select id="inputGender" class="form-control" placeholder="choose..." name="gender">
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                </div>
                <div class="form-group col-md-4">
                    <label for="address">Address:</label>
                    <input class="form-control required" id="address" name="address" type="text"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="InputContact"> Contact Number:</label>
                    <input class="form-control" id="InputContact" type="number" placeholder="+254..." name="phoneNumber"/>
                </div>
            </div>
            <br/>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
</div>