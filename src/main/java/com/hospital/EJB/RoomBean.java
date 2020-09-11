package com.hospital.EJB;

import com.hospital.model.Patient;
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
    public List<Room> list() {

        Patient patient=new Patient();
        //patient.setBioData();

        //select * from db
        return entityManager.createQuery("FROM Room r").getResultList();
    }
}
