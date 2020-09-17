package com.hospital.ws.soap;


import com.hospital.EJB.RoomBeanI;
import com.hospital.model.Room;

import javax.ejb.EJB;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import java.util.List;

@WebService
public class HospitalSoapApi {

    @EJB
    private RoomBeanI roomBean;

    @WebMethod
    public List<Room> rooms(){
        return roomBean.list();
    }

    @WebMethod
    public List<Room> roomsParam(@WebParam String name){

        return roomBean.list();
    }

}
