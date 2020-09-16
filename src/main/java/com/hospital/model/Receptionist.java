package com.hospital.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "hospital_receptionist")
public class Receptionist extends Employee implements Serializable {

}
