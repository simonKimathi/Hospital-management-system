package com.hospital.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "hospital_clerk")
public class Clerk extends Employee implements Serializable {

}
