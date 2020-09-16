package com.hospital.model;

import com.hospital.commonClasses.BaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "hospital_medicine")
public class Medicine extends BaseEntity implements Serializable {

    @Column
    private String quantity;

    @Column
    private Double price;
}