package com.hospital.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class PatientVitals {

    @Column
    private Double height;

    @Column
    private Double weight;

    @Column
    private Double BMI;

    @Column
    private Double temperature;

    @Column
    private Double pulse;

    @Column
    private Double respiratoryRate;

    @Column
    private Double bloodPressure;

    @Column
    private Double bloodOxygenSaturation;

    public Double getHeight() {
        return height;
    }

    public void setHeight(Double height) {
        this.height = height;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Double getBMI() {
        return BMI;
    }

    public void setBMI(Double BMI) {
        this.BMI = BMI;
    }

    public Double getTemperature() {
        return temperature;
    }

    public void setTemperature(Double temperature) {
        this.temperature = temperature;
    }

    public Double getPulse() {
        return pulse;
    }

    public void setPulse(Double pulse) {
        this.pulse = pulse;
    }

    public Double getRespiratoryRate() {
        return respiratoryRate;
    }

    public void setRespiratoryRate(Double respiratoryRate) {
        this.respiratoryRate = respiratoryRate;
    }

    public Double getBloodPressure() {
        return bloodPressure;
    }

    public void setBloodPressure(Double bloodPressure) {
        this.bloodPressure = bloodPressure;
    }

    public Double getBloodOxygenSaturation() {
        return bloodOxygenSaturation;
    }

    public void setBloodOxygenSaturation(Double bloodOxygenSaturation) {
        this.bloodOxygenSaturation = bloodOxygenSaturation;
    }
}
