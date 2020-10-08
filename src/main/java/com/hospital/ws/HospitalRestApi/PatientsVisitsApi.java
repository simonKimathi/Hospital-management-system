package com.hospital.ws.HospitalRestApi;


import com.hospital.EJB.PatientVisitBeanI;
import com.hospital.model.PatientVisits;
import com.hospital.model.User;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/patientsVisits")
public class PatientsVisitsApi {


    @EJB
    private PatientVisitBeanI patientVisitBean;

    @GET
    @Path("/getVisits")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(){
        return Response.status(200).entity(patientVisitBean.list()).build();
    }

    @GET
    @Path("/getVisitByPatient/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getVisitByPatient(@PathParam("param") String id){
        return Response.status(200).entity(patientVisitBean.getVisitByPatient(id)).build();
    }

    @GET
    @Path("/getVisitByDoctor/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getVisitByDoctor(String id){
        return Response.status(200).entity(patientVisitBean.getVisitByDoctor(id)).build();
    }

    @POST
    @Path("/deleteVisit")
    @Produces(MediaType.APPLICATION_JSON)
    public Response deleteVisit(PatientVisits visits){
        return Response.status(200).entity(patientVisitBean.deleteVisit(visits)).build();
    }


    @POST
    @Path("/findById/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response changePassword(@PathParam("param") int id){
        return Response.status(200).entity(patientVisitBean.findById(id)).build();
    }


    @POST
    @Path("/addPatientVisit")
    @Produces(MediaType.APPLICATION_JSON)
    public String save(PatientVisits visits){
        try{
            patientVisitBean.add(visits);
        } catch (Exception e) {
            return "{\"FAILURE\":\"" + e.getMessage()+"\"}";
        }
        return "{\"SUCCESS\":\"OK\"}";
    }
}
