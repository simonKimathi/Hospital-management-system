package com.hospital.ws.HospitalRestApi;

import com.hospital.EJB.PatientBeanI;
import com.hospital.model.Patient;
import com.hospital.model.User;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/patient")
public class PatientApi {
    @EJB
    private PatientBeanI patientBean;

    @GET
    @Path("/getPatients")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(){
        return Response.status(200).entity(patientBean.list()).build();
    }

    @GET
    @Path("/getPatientById/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getPatientById(@PathParam("param") int id){
        return Response.status(200).entity(patientBean.getPatientById(id)).build();
    }

    @GET
    @Path("/getPatientByName/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getPatientByName(@PathParam("param") String name){
        return Response.status(200).entity(patientBean.getPatientByName(name)).build();
    }

    @GET
    @Path("/getPatientsVisits/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response listPatients(@PathParam("param") String param){
        switch (param) {
            case "all":
                return null;
            case "pending":
                return null;
            case "complete":
                return null;
            default:
                return null;
        }


    }

    @POST
    @Path("/deletePatient")
    @Produces(MediaType.APPLICATION_JSON)
    public Response deletePatient(Patient patient){
        return Response.status(200).entity(patientBean.removePatient(patient)).build();
    }

    @POST
    @Path("/UpdatePatient")
    @Produces(MediaType.APPLICATION_JSON)
    public Response deleteUser(Patient patient){
        return Response.status(200).entity(patientBean.add(patient)).build();
    }



    @POST
    @Path("/addPatient")
    @Produces(MediaType.APPLICATION_JSON)
    public String save(Patient patient){
        try{
            patientBean.add(patient);
        } catch (Exception e) {
            return "{\"FAILURE\":\"" + e.getMessage()+"\"}";
        }
        return "{\"SUCCESS\":\"OK\"}";
    }
}
