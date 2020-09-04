<%--
  Created by IntelliJ IDEA.
  User: symoh
  Date: 04/09/2020
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
!--Navbar-->
<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow" style="margin-bottom: 10px" >
    <%--<nav class="navbar navbar-expand-lg navbar-light bg-light">--%>
        <!-- Just an image -->
        <nav class="navbar navbar-light bg-light">
            <a class="navbar-brand" href="#">
                <img src="../index.png" width="30" height="30" alt="">
            </a>
        </nav>
        <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
                <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <li><a href="#">HTML</a></li>
                <li><a href="#">CSS</a></li>
                <li><a href="#">JavaScript</a></li>
            </ul>
        </div>
        <%--<a href="#home">Home</a>
        <a href="#news">News</a>
        &lt;%&ndash;drop down&ndash;%&gt;
        <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Dropdown Example
                <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <li><a href="#">HTML</a></li>
                <li><a href="#">CSS</a></li>
                <li><a href="#">JavaScript</a></li>
            </ul>
        </div>--%>
        <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            </form>


</nav>