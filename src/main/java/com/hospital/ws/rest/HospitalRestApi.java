package com.hospital.ws.rest;

import com.hospital.EJB.DoctorBeanI;
import com.hospital.EJB.PatientBeanI;
import com.hospital.EJB.RoomBeanI;
import com.hospital.model.Doctor;
import com.hospital.model.Patient;
import com.hospital.model.Room;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/hospital")
public class HospitalRestApi {

    @EJB
    private RoomBeanI roomBean;

    @EJB
    private PatientBeanI patientBean;

    @EJB
    private DoctorBeanI doctorBean;



    @GET
    @Path("/list/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(@PathParam("param") String param){

        if(param.equals("viewRooms")) {
            return Response.status(200).entity(roomBean.list()).build();
        }
        else if(param.equals("viewPatients")){
            return Response.status(200).entity(patientBean.list()).build();
        }else if(param.equals("viewDoctors")){
            return Response.status(200).entity(doctorBean.list()).build();
        }else{
            return null;
        }
    }

    @POST
    @Path("/save/{param}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public String save(@PathParam("param") String param, Room room, Patient patient, Doctor doctor){

        if (param.equals("addRoom")){
            try{
                roomBean.add(room);
            } catch (Exception e) {
                return "{\"FAILURE\":\"" + e.getMessage()+"\"}";
            }
            return "{\"SUCCESS\":\"OK\"}";
        }
        else if (param.equals("addPatient")){
            try{
                patientBean.add(patient);
            } catch (Exception e) {
                return "{\"FAILURE\":\"" + e.getMessage()+"\"}";
            }
            return "{\"SUCCESS\":\"OK\"}";
        }
        else if (param.equals("addDoctor")){
            try{
                doctorBean.add(doctor);
            } catch (Exception e) {
                return "{\"FAILURE\":\"" + e.getMessage()+"\"}";
            }
            return "{\"SUCCESS\":\"OK\"}";
        }
            return "{\"ERROR\":\"" + "address not found"+"\"}";
    }
}
