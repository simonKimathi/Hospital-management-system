package com.hospital.servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class helloListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext servletContext=sce.getServletContext();
        servletContext.setAttribute("connect","connection will be made here");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
