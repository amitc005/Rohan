/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.Offsetuser;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginService {

    public static void main(String[] args) {
        HashMap<String,String> hashMap =  new HashMap<String,String>();
        hashMap.put("username", "pravintumsare@gmail.com");
        hashMap.put("password", "james@0071");
        
        Offsetuser offsetuser = loginService(hashMap);
        System.out.println("offsetuser = " + offsetuser);
    }
    
    
    public static Offsetuser loginService(HashMap<String, String> searchMap) {
        List<Offsetuser> offsetusers = null;
        try {
            offsetusers = SuperConnection.searchEntityExactEqual(new Offsetuser(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(LoginService.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (offsetusers.isEmpty()) {
            return null;
        }
        return offsetusers.get(0);
    }
}
