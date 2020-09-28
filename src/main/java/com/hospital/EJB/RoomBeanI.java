package com.hospital.EJB;

import com.hospital.model.Room;

import java.util.List;

public interface RoomBeanI {
    public String add(Room room);

    Room findById(int roomId);

    String delete(int roomId) throws Exception;

    public List<Room> list();
}
