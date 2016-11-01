package com.main.application;

import java.awt.Desktop;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FileProcess {

    public static void writeFile(String path, String fileName, String fileContains, Integer openFile) {
        String DQT = "\"";
        try {
            System.out.println("" + DQT + "");
            File file = new File(path + fileName);
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(fileContains);
            fileWriter.close();

            if (openFile == 1) {
                try {
                    Desktop.getDesktop().open(file);
                } catch (Exception e) {
                }
            }
        } catch (IOException ex) {
            Logger.getLogger(FileProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static String copyFile(String sourcePath, String fileName, String destinationPath) {
        try {
            long time = new Date().getTime();
            String fullPath = destinationPath + "/" + time + fileName;
            File sourceFile = new File(sourcePath);
            FileInputStream fileInputStream = new FileInputStream(sourceFile);
            byte[] bs = new byte[fileInputStream.available()];
            fileInputStream.read(bs);
            File writeFile = new File(fullPath);
            FileOutputStream fileOutputStream = new FileOutputStream(writeFile);
            fileOutputStream.write(bs);
            fileInputStream.close();
            fileOutputStream.close();
            return fullPath;
        } catch (Exception e) {
            return null;
        }
    }

    public static StringBuilder readMatter(String sourcePath) {
        StringBuilder matter = null;
        try {
            File sourceFile = new File(sourcePath);
            FileInputStream fileInputStream = new FileInputStream(sourceFile);
            byte[] bs = new byte[fileInputStream.available()];
            fileInputStream.read(bs);
            matter = new StringBuilder(new String(bs).toString() + "");
        } catch (Exception e) {
        }
        return matter;
    }

}
