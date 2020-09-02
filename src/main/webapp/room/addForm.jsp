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
            Add Patient </h4>
        <a class="heading-elements-toggle" href="#"> <i class="la la-ellipsis-h font-medium-3"> </i> </a>
    </div>
    <div class="card-body">
        <form id="addForm" method="post" action="/room">
            <div class="form-row">
                <div class="form-group">
                    <label for="rid">Room ID</label>
                    <input type="text" class="form-control" id="rid" placeholder="enter room id" name="village">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="rt">Room Type</label>
                    <input type="text" class="form-control" id="rt" placeholder="enter room type" name="rType">
                </div>
            </div>
            <br/>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
</div>
