package com.hospital.EJB;

import com.hospital.model.InvoiceLine;
import com.hospital.model.PatientVisits;

import java.util.List;

public interface InvoiceLineBeanI {

    List<InvoiceLine> list();

    String add(InvoiceLine invoiceLine);

    String payBill(int id);

    List<InvoiceLine> getBillByPatient(String id);

    String deleteBill(InvoiceLine invoiceLine);
}
