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
        <form id="addForm" method="post" action="<%=request.getContextPath()%>/roomServlet">
            <div class="form-row">
                <div class="form-group">
                    <label for="rid">Room ID</label>
                    <input type="text" class="form-control" id="rid" placeholder="enter room id" name="id">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="inputGender">Gender</label>
                    <select id="inputGender" class="form-control" placeholder="choose..." name="rType">
                        <option>Billing</option>
                        <option>Laboratory</option>
                        <option>Pharmacy</option>
                        <option>medical</option>
                    </select>
                </div>
            </div>
            <br/>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
</div>
