package com.hospital.EJB;

import com.hospital.model.Room;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Stateless
@Remote
public class RoomBean implements RoomBeanI {

    @PersistenceContext
    private EntityManager entityManager;


    @Override
    public String add(Room room) {
        //insert into database
        entityManager.merge(room);
        return "ok";
    }

    @Override
    public Room findById(int id){
        return entityManager.find(Room.class, id);
    }

    @Override
    public String delete(int id) throws Exception{
        if (id == 0)
            throw new Exception("Invalid faculty details!!");

        entityManager.remove(entityManager.find(Room.class, id));

        return "OK";
    }

    @Override
    public List<Room> list() {

        /*Patient patient=new Patient();
        //patient.setBioData();
        //select * from db*/

        return entityManager.createQuery("FROM Room r").getResultList();
    }
}
