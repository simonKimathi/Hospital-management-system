package com.hospital.ws.soap;


import com.hospital.EJB.DoctorBeanI;
import com.hospital.EJB.PatientBeanI;
import com.hospital.EJB.RoomBeanI;
import com.hospital.model.Doctor;
import com.hospital.model.Patient;
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

    @EJB
    private PatientBeanI patientBean;

    @EJB
    private DoctorBeanI doctorBean;


   /* @WebMethod
    public List<Room> rooms(@WebParam String name){
        if(name.equals("findRoom")){
            return roomBean.list();
        }
        return roomBean.list();
    }*/

    @WebMethod
    public List<Room> viewRooms(){
        return roomBean.list();
    }

    @WebMethod
    public List<Patient> viewPatients(){
        return patientBean.list();
    }

    @WebMethod
    public List<Doctor> viewDoctors(){
        return doctorBean.list();
    }

    @WebMethod
    public String addRoom(Room room){
        try{
            roomBean.add(room);
        } catch (Exception e) {
            return "{\"FAILURE\":\"" + e.getMessage()+"\"}";
        }
        return "{\"SUCCESS\":\"OK\"}";
    }

    @WebMethod
    public String addPatient(Patient patient){
        try{
            patientBean.add(patient);
        } catch (Exception e) {
            return "{\"FAILURE\":\"" + e.getMessage()+"\"}";
        }
        return "{\"SUCCESS\":\"OK\"}";
    }

    @WebMethod
    public String addDoctor(Doctor doctor){
        try{
            doctorBean.add(doctor);
        } catch (Exception e) {
            return "{\"FAILURE\":\"" + e.getMessage()+"\"}";
        }
        return "{\"SUCCESS\":\"OK\"}";
    }

}
