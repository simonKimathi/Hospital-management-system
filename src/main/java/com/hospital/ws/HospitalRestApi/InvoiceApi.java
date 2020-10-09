package com.hospital.ws.HospitalRestApi;

import com.hospital.EJB.InvoiceLineBeanI;
import com.hospital.model.InvoiceLine;

import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/invoice")
public class InvoiceApi {

    @EJB
    private InvoiceLineBeanI invoiceLineBean;

    @GET
    @Path("/getBills")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(){
        return Response.status(200).entity(invoiceLineBean.list()).build();
    }


    @GET
    @Path("/getBillByPatient/{param}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getBillByPatient(@PathParam("param") String id){
        return Response.status(200).entity(invoiceLineBean.getBillByPatient(id)).build();
    }


    @POST
    @Path("/deleteBill")
    @Produces(MediaType.APPLICATION_JSON)
    public Response deleteBill(InvoiceLine invoiceLine){
        return Response.status(200).entity(invoiceLineBean.deleteBill(invoiceLine)).build();
    }
}
