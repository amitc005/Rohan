package com.main.application;

public interface IApplicationConstant {

    static String DATABASE_NAME = "db_sample";
    static String DATABASE_HOST = "localhost";
    static String DATABASE_PORT = "3306";

    final static String DATABASE_DRIVER = "com.mysql.jdbc.Driver";
    final static String DATABASE_URL = "jdbc:mysql://" + DATABASE_HOST + ":" + DATABASE_PORT + "/" + DATABASE_NAME;
    final static String DATABASE_USERNAME = "root";
    final static String DATABASE_PASSWORD = "";

    final static String FRAME_TITLE = "EEW TECHNOLOGIES | PROJECT MANAGEMENT TOOL VERSION 1.0";
    final static String LOOKUP_DOMAIN = "DOMAIN";
    final static String LOOKUP_FORSTREAM = "FORSTREAM";
    final static String LOOKUP_TECHNOLOGY = "TECHNOLOGY";

}
