package com.hospital.EJB;

import com.hospital.model.Room;
import com.hospital.model.User;

import java.util.List;

public interface RoomBeanI {
    public String add(Room room);

    Room findById(int roomId);

    String delete(int roomId) throws Exception;

    public List<Room> list();

    Room getRoomByType(String name);

    Room getRoomById(int name);

    String deleteRoom(Room room);
}
