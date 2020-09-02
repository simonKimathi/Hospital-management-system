package com.hospital.room.bean;

import com.hospital.department.model.Department;
import com.hospital.room.model.Room;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoomBean implements RoomBeanI {

    @Override
    public String add(Connection connection, Room room) {
        if (connection==null || room==null)
            return "fail";

        try {
            PreparedStatement statement = connection.prepareStatement("insert into room(id,rType) values(?,?)");
            statement.setString(1,room.getId());
            statement.setString(2,room.getrType());
            statement.executeUpdate();

        }catch (SQLException sqlEx){
            sqlEx.printStackTrace();
        }
        return "ok";
    }

    @Override
    public List<Room> list(Connection connection) {
        //create array list of departments
        List<Room> roomList = new ArrayList<Room>();
        try {
            //get data from database
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM room");
            preparedStatement.execute();
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()) {
                Room room = new Room();
                room.setId(resultSet.getString("id"));
                room.setrType(resultSet.getString("rType"));
                room.setAssigned(resultSet.getString("assigned"));

                roomList.add(room);
            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return roomList;
    }
}
