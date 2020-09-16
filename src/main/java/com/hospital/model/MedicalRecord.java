package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Hospital_medical_record")
public class MedicalRecord extends BaseEntity implements Serializable {

    @Embedded
    private PatientVitals patientVitals;

    @Column
    private String Examination;

    @Column
    private String Diagnosis;


    @ManyToOne(cascade = CascadeType.ALL)
    @NotFound( action = NotFoundAction.IGNORE)
    private Patient patient;



    @Transient
    private int patientId;

}
