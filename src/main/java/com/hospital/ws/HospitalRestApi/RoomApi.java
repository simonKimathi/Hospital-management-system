package com.hospital.ws.HospitalRestApi;

import com.hospital.EJB.RoomBeanI;
import com.hospital.model.Doctor;
import com.hospital.model.Patient;
import com.hospital.model.Room;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/room")
public class RoomApi {

    @EJB
    RoomBeanI roomBean;

    @GET
    @Path("/getRooms")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(){
        return Response.status(200).entity(roomBean.list()).build();
    }

    @GET
    @Path("/getRoomById/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getRoomById(@PathParam("param") int roomId){
        return Response.status(200).entity(roomBean.getRoomById(roomId)).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getRoomByName(String type){
        return Response.status(200).entity(roomBean.getRoomByType(type)).build();
    }


    @POST
    @Path("/assignDoctor")
    @Produces(MediaType.APPLICATION_JSON)
    public Response assignRoom(Room room){
        return null;
    }

    @POST
    @Path("/deleteRoom")
    @Produces(MediaType.APPLICATION_JSON)
    public Response deleteRoom(Room room){
        return Response.status(200).entity(roomBean.deleteRoom(room)).build();
    }

    @POST
    @Path("/UpdateRoom")
    @Produces(MediaType.APPLICATION_JSON)
    public Response deleteUser(Room room){
        return null;
    }




    @POST
    @Path("/addDoctor")
    @Produces(MediaType.APPLICATION_JSON)
    public String save(Room room){
        try{
            roomBean.add(room);
        } catch (Exception e) {
            return "{\"FAILURE\":\"" + e.getMessage()+"\"}";
        }
        return "{\"SUCCESS\":\"OK\"}";
    }
}
