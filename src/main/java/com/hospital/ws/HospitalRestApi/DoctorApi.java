package com.hospital.ws.HospitalRestApi;

import com.hospital.EJB.DoctorBeanI;
import com.hospital.model.Doctor;
import com.hospital.model.Patient;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/doctor")
public class DoctorApi {

    @EJB
    private DoctorBeanI doctorBean;

    @GET
    @Path("/getDoctors")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(){
        return Response.status(200).entity(doctorBean.list()).build();
    }

    @GET
    @Path("/getDoctorById")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getDoctorById(String id){
        return Response.status(200).entity(doctorBean.getDoctorById(id)).build();
    }

    @GET
    @Path("/getDoctorByName")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getDoctorByName(String name){
        return Response.status(200).entity(doctorBean.getDoctorByName(name)).build();
    }

    @GET
    @Path("/getDoctorsPatients/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response listPatients(@PathParam("param") String param){
        switch (param) {
            case "all":
                return null;
            case "waiting":
                return null;
            case "attended":
                return null;
            default:
                return null;
        }


    }

    @POST
    @Path("/deleteDoctor")
    @Produces(MediaType.APPLICATION_JSON)
    public Response deletePatient(Doctor doctor){
        return Response.status(200).entity(doctorBean.removeDoctor(doctor)).build();
    }

    @POST
    @Path("/UpdateDoctor")
    @Produces(MediaType.APPLICATION_JSON)
    public Response deleteUser(Doctor doctor){
        return null;
    }



    @POST
    @Path("/addDoctor")
    @Produces(MediaType.APPLICATION_JSON)
    public String save(Doctor doctor){
        try{
            doctorBean.add(doctor);
        } catch (Exception e) {
            return "{\"FAILURE\":\"" + e.getMessage()+"\"}"; //return "{\"ERROR\":\"" + "address not found"+"\"}";
        }
        return "{\"SUCCESS\":\"OK\"}";
    }
}
