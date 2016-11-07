/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.generator;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

/**
 *
 * @author pptumsare
 */
public class ViewPageGenerator {

    public static void main(String[] args) {
        String show_table = "SHOW Tables";
        try {
            ResultSet executeQuery = SingoltonConnection.makePreparedStatement(show_table).executeQuery();
            while (executeQuery.next()) {
                String string = executeQuery.getString("Tables_in_offsetmanager");
                getTableMetaData(string);
                break;
            }
        } catch (Exception e) {
            System.out.println("e = " + e.getMessage());
        }
    }

    public static void getTableMetaData(String table) {
        try {
            String table_query = "select * from " + table;
            ResultSet executeQuery = SingoltonConnection.makePreparedStatement(table_query).executeQuery();
            ResultSetMetaData metaData = executeQuery.getMetaData();
            int columnCount = metaData.getColumnCount();
            System.out.println("========================FOR TABLE " + table.toUpperCase() + " =================================");
            for (int i = 1; i <= columnCount; i++) {
                boolean autoIncrement = metaData.isAutoIncrement(i);
                if (!autoIncrement) {
                    String columnName = metaData.getColumnName(i);
                    int columnDisplaySize = metaData.getColumnDisplaySize(i);

                    String toLowerCase = columnName.toLowerCase();
                    String toUpperCase = columnName.replace("_", " ").toUpperCase();
                    String formField = "<label class=\"control-label \">" + toUpperCase + " :</label>\n"
                            + "<div class=\"controls\">\n"
                            + "<input type=\"text\" name=\"" + toLowerCase + "\" maxlength=\"" + columnDisplaySize + "\" class=\"span11\"  required=\"\" placeholder=\"" + toUpperCase + "\" />\n"
                            + "</div>";
                    System.out.println(formField);
                    System.out.println("");
                }
            }
            System.out.println("========================FOR TABLE " + table.toUpperCase() + " =================================");
        } catch (Exception e) {
            System.out.println("e = " + e.getMessage());
        }
    }

    public static void getDropDownMetaData(String table) {

        try {
            String[] split = table.split("_");
            String tblName = "tbl_" + split[0];
            String table_query = "select * from " + tblName;
            System.out.println("table_query = " + table_query);
            ResultSet executeQuery = SingoltonConnection.makePreparedStatement(table_query).executeQuery();
            ResultSetMetaData metaData = executeQuery.getMetaData();
            int columnCount = metaData.getColumnCount();

            String idName = "";
            String clmName = "";
            for (int i = 1; i <= columnCount; i++) {
                if (metaData.isAutoIncrement(i)) {
                    idName = metaData.getColumnName(i);
                }
                if (metaData.getColumnDisplaySize(i) == 100) {
                    clmName = metaData.getColumnName(i);
                }
            }
            StringBuilder builder = new StringBuilder();
            while (executeQuery.next()) {
                builder.append("<option value=\"").append(executeQuery.getString(idName)).append("\">").append("</option>");
            }
            String string = "<div class=\"span6\">\n"
                    + "<label class=\"control-label\">Last Name :</label>\n"
                    + "<div class=\"controls\">\n"
                    + "<select class=\"span11\">\n"
                    + "<option></option>\n"
                    + "</select>\n"
                    + "</div>\n"
                    + "</div>";

        } catch (Exception e) {
            System.out.println("e = " + e.getMessage());
        }
    }
}
