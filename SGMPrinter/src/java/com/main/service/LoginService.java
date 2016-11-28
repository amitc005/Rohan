/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblOffsetuser;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginService {

    public static void main(String[] args) {
        HashMap<String,String> hashMap =  new HashMap<String,String>();
        hashMap.put("username", "pravintumsare@gmail.com");
        hashMap.put("password", "james@007");
        
        TblOffsetuser offsetuser = loginService(hashMap);
        System.out.println("offsetuser = " + offsetuser);
    }
    
    
    public static TblOffsetuser loginService(HashMap<String, String> searchMap) {
        List<TblOffsetuser> offsetusers = null;
        try {
            offsetusers = SuperConnection.searchEntityExactEqual(new TblOffsetuser(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(LoginService.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (offsetusers.isEmpty()) {
            return null;
        }
        return offsetusers.get(0);
    }
}
