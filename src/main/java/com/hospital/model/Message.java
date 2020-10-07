package com.hospital.model;

import java.io.Serializable;

public class Message implements Serializable {

    private String message;
    private Object object;
    private boolean success;

    public Message(boolean success, String message) {
        this.message = message;
        this.success = success;
    }

    public Message(boolean success, String message, Object object) {
        this.message = message;
        this.object = object;
        this.success = success;
    }

    /**
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * @return the success
     */
    public boolean isSuccess() {
        return success;
    }

    /**
     * @param success the success to set
     */
    public void setSuccess(boolean success) {
        this.success = success;
    }

    /**
     * @return the object
     */
    public Object getObject() {
        return object;
    }

    /**
     * @param object the object to set
     */
    public void setObject(Object object) {
        this.object = object;
    }
}