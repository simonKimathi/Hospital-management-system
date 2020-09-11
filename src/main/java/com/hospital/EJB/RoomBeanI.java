package com.hospital.EJB;

import com.hospital.model.Room;

import java.util.List;

public interface RoomBeanI {
    public String add(Room room);
    public List<Room> list();
}
