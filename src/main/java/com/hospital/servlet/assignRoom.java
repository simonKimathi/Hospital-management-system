package com.hospital.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
@WebServlet("/assign")
public class assignRoom extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext scx = getServletContext();
        Connection connection = (Connection) scx.getAttribute("dbConnection");
        String id=req.getParameter("eId");
        String room=req.getParameter("room");
        String name=req.getParameter("name");
        try {
            PreparedStatement preparedStatement=connection.prepareStatement("UPDATE hospital_doctor SET `roomAssigned`=? WHERE NationalId=?");
            preparedStatement.setString(1,room);
            preparedStatement.setString(2,id);
            preparedStatement.execute();

            PreparedStatement preparedStatement1=connection.prepareStatement("UPDATE hospital_room SET `assigned`=? WHERE roomId=?");
            preparedStatement1.setString(1,name);
            preparedStatement1.setString(2,room);
            preparedStatement1.execute();
            resp.sendRedirect("doctor/viewDoctors.jsp");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
