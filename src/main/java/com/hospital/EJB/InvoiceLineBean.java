package com.hospital.EJB;

import com.hospital.model.InvoiceLine;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
@Remote
public class InvoiceLineBean  implements InvoiceLineBeanI{

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public String add(InvoiceLine invoiceLine) {

        entityManager.merge(invoiceLine);
        return "ok";
    }
}
