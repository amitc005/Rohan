/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SMS;

import java.net.*;
import java.io.*;

public class SendSms {

    public static void main(String[] args) {
        sendSMS("9373282933");
        
            SendSms.sendSMS("enter mobile no");
    }

    static public void sendSMS(String mobileNo) {
        String username = "sagar00786";
        String password = "james@00786";

//        String username = "pravin00786";
//        String password = "james@00786";
        String sms = "Pravin Tumsare BJP Election SMA Marketing Test";
        try {
            // Construct data
            String data = "";
            /*
             * Note the suggested encoding for certain parameters, notably
             * the username, password and especially the message.  ISO-8859-1
             * is essentially the character set that we use for message bodies,
             * with a few exceptions for e.g. Greek characters.  For a full list,
             * see:  http://developer.bulksms.com/eapi/submission/character-encoding/
             */
            data += "username=" + URLEncoder.encode(username, "ISO-8859-1");
            data += "&password=" + URLEncoder.encode(password, "ISO-8859-1");
            data += "&message=" + URLEncoder.encode(sms, "ISO-8859-1");
            data += "&want_report=1";
            data += "&msisdn=91" + mobileNo;

            // Send data
            // Please see the FAQ regarding HTTPS (port 443) and HTTP (port 80/5567)
            URL url = new URL("https://bulksms.vsms.net/eapi/submission/send_sms/2/2.0");

            URLConnection conn = url.openConnection();
            conn.setDoOutput(true);
            OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
            wr.write(data);
            wr.flush();

            // Get the response
            BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = rd.readLine()) != null) {
                // Print the response output...
                System.out.println(line);
            }
            wr.close();
            rd.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
