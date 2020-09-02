package com.hospital.room.bean;

import com.hospital.Employee.model.Employee;
import com.hospital.room.model.Room;

import java.sql.Connection;
import java.util.List;

public interface RoomBeanI {
    public String add(Connection connection, Room room);
    public List<Room> list(Connection connection);
}
