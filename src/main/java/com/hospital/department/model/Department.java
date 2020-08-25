package com.hospital.department.model;

import java.io.PrintWriter;

public class Department {
    //declare variables
    String id;
    String name;

    //getters and setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String msg(){
        String stringBuilder="";
        for(int i=0;i<10;i++){
            stringBuilder  +=( "im loop number :"+i+"<br/>");
        }
        return stringBuilder;
    }
}
