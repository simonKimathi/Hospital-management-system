package com.hospital.EJB;

import com.hospital.model.InvoiceLine;
import com.hospital.model.PatientVisits;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Stateless
@Remote
public class InvoiceLineBean  implements InvoiceLineBeanI{

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<InvoiceLine> list() {
        return entityManager.createQuery("FROM InvoiceLine i").getResultList();
    }

    @Override
    public String add(InvoiceLine invoiceLine) {

        entityManager.merge(invoiceLine);
        return "ok";
    }

    @Override
    public String payBill(int id) {
        int updatedEntities = entityManager.createQuery(
                "update InvoiceLine i " +
                        "set i.status = :status " +
                        "where i.id = :id" )
                .setParameter( "status", "Paid" )
                .setParameter( "id", id)
                .executeUpdate();
        return "ok";
    }

    @Override
    public List<InvoiceLine> getBillByPatient(String id) {
        return entityManager.createQuery("FROM InvoiceLine i where i.patientId = : id and i.status = : status")
                .setParameter("id",id)
                .setParameter("status","Not Paid")
                .getResultList();
    }

    @Override
    public String deleteBill(InvoiceLine invoiceLine) {
        entityManager.remove(entityManager.find(InvoiceLine.class, invoiceLine));
        return "Deleted";
    }
}
