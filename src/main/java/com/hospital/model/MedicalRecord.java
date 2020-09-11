package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Hospital")
public class MedicalRecord extends BaseEntity implements Serializable {

    @Column
    private String


    @ManyToOne(cascade = CascadeType.ALL)
    @NotFound( action = NotFoundAction.IGNORE)
    private Patient patient;



    @Transient
    private int patientId;

}
