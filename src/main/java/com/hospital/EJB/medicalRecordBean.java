package com.hospital.EJB;

import com.fasterxml.jackson.databind.introspect.AnnotationMap;
import com.hospital.model.MedicalRecord;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
@Remote
public class medicalRecordBean implements medicalRecordBeanI {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public String add(MedicalRecord medicalRecord) {

        entityManager.merge(medicalRecord);
        return "ok";
    }
}
