package com.hospital.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "hospital_pharmacist")
public class Pharmacist extends Employee {

}
