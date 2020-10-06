package com.hospital.ws.HospitalRestApi;

import com.hospital.EJB.PatientBeanI;
import com.hospital.EJB.UserBeanI;
import com.hospital.model.Patient;
import com.hospital.model.Room;
import com.hospital.model.User;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/user")
public class UserApi {

    @EJB
    private UserBeanI userBean;

    @GET
    @Path("/getUsers")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(){
        return Response.status(200).entity(userBean.list()).build();
    }

    @GET
    @Path("/getUserByUserName/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response listByUserName(@PathParam("param") String userName){
        return Response.status(200).entity(userBean.getUserByUserName(userName)).build();
    }

    @GET
    @Path("/getUserByName/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response listByName(@PathParam("param") String name){
        return Response.status(200).entity(userBean.getUserByName(name)).build();
    }

    @GET
    @Path("/validateLogin/")
    @Produces(MediaType.APPLICATION_JSON)
    public Response validateLogin(User user){
        return Response.status(200).entity(userBean.getUser(user)).build();
    }


    @POST
    @Path("/deleteUser")
    @Produces(MediaType.APPLICATION_JSON)
    public Response deleteUser(User user){
        return Response.status(200).entity(userBean.removeUser(user)).build();
    }


    @POST
    @Path("/changePassword")
    @Produces(MediaType.APPLICATION_JSON)
    public Response changePassword(User user){
        return Response.status(200).entity(userBean.changePassword(user)).build();
    }


    @POST
    @Path("/addUser")
    @Produces(MediaType.APPLICATION_JSON)
    public String save(User user){
        try{
            userBean.registerUser(user);
        } catch (Exception e) {
            return "{\"FAILURE\":\"" + e.getMessage()+"\"}";
        }
        return "{\"SUCCESS\":\"OK\"}";
    }
}
