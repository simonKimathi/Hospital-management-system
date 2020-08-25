<%@page import="com.hospital.department.*" %>
<%@ page import="com.hospital.department.model.Department" %>
<%@ page import="com.hospital.user.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<%@ include file="./page/header.html" %>
<body>
<h2>Hospital management system</h2>
<div id="module-content"> table loading...</div>
<jsp:useBean id="userInfo" class="com.hospital.user.model.User"/>
<jsp:setProperty name="userInfo" property="*" />

my id is: <jsp:getProperty name="userInfo" property="id"/><br/>
my name is: <jsp:getProperty name="userInfo" property="name"/><br/>
my address is: <jsp:getProperty name="userInfo" property="address"/><br/>
my email is: <jsp:getProperty name="userInfo" property="email"/><br/>
<%--my age is:<%= %>--%>

<%--    <%Department department=new Department();%>
    <%=(department.msg())%>--%>
<%
    List<User> users;
    if(session.getAttribute("users")==null){
        users=new ArrayList<User>();
    }
    else{
        users=(List<User>) session.getAttribute("users");
    }

    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String address=request.getParameter("address");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    /*User user2 = new User();*/
    if (name != null || email != null || address != null || password != null){
        User user = new User();
        user.setName(id);
        user.setName(name);
        user.setEmail(email);
        user.setAddress(address);
        user.setPassword(password);

        users.add(user);

    }

    for(User user1: users){
        out.println(userInfo.showUser(user1));
    }
    session.setAttribute("users", users);


%>

<form action="#" method="post">
    Id: <input type="text" name="id"/>
    Name: <input type="text" name="name"/>
    Address: <input type="text" name="address"/>
    Email: <input type="text" name="email"/>
    Password: <input type="password" name="password"/>
    <input type="submit" value="Submit">
</form>

<script src="./js/department.js"></script>
</body>

</html>
