package com.main.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;


enum OrderStatus{
    NEW_Q, FINAL_Q, PENDING_Q, INPROGRESS_Q
}
enum QuotationStatus{
    NEW_Q, FINAL_Q, PENDING_Q, INPROGRESS_Q, REJECTED_Q
}
public class SuperConnection {

    public static Session session = null;
    public static Transaction transaction = null;

    static {
        session = DatabaseUnility.getSessionFactory().openSession();
    }

//    public static boolean checkStatus() {
//        try {
//            if (session == null) {
//                return false;
//            }
//            return true;
//        } catch (Exception e) {
//            return false;
//        }
//    }

    public static void saveEntity(Object entity) throws Exception {
        transaction = session.beginTransaction();
        session.save(entity);
        transaction.commit();
//        session.close();
    }

    public static void updateEntity(Object entity) throws Exception {
//        session = DatabaseUnility.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        session.update(entity);
        transaction.commit();
//        session.close();
    }

    public static void deleteEntity(Object entity) throws Exception {
//        session = DatabaseUnility.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        session.delete(entity);
        transaction.commit();
//        session.close();
    }

    public static <T> List<T> listEntity(T entity) throws Exception {
        session = DatabaseUnility.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        Criteria criteria = session.createCriteria(entity.getClass());
        List list = criteria.list();
//        session.close();
        return list;
    }

    public static <T> List<T> listEntityByLimiy(T entity, int limit) throws Exception {
        session = DatabaseUnility.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        Criteria criteria = session.createCriteria(entity.getClass());
        criteria.setMaxResults(limit);
        List list = criteria.list();
//        session.close();
        return list;
    }

    public static <T> List<T> searchEntity(T entity, HashMap<String, String> searchMap) throws Exception {
        session = DatabaseUnility.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        Criteria criteria = session.createCriteria(entity.getClass());
        Set<String> keySet = searchMap.keySet();
        for (String columnName : keySet) {
            criteria.add(Restrictions.like(columnName, searchMap.get(columnName) + "%", MatchMode.ANYWHERE));
        }
        List list = criteria.list();
//        session.close();
        return list;
    }

    public static <T> List<T> searchEntityExactEqual(T entity, HashMap<String, String> searchMap) throws Exception {
        session = DatabaseUnility.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        Criteria criteria = session.createCriteria(entity.getClass());
        Set<String> keySet = searchMap.keySet();
        for (String columnName : keySet) {
            criteria.add(Restrictions.eq(columnName, searchMap.get(columnName)));
        }
        List list = criteria.list();
//        session.close();
        return list;
    }

    public static Object getEntityById(Object entity, Integer id) {
//        session = DatabaseUnility.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        Object object;
//        try {
//            object = session.load(entity.getClass(), id);
//        } catch (Exception e) {
//            e.printStackTrace();
            object = session.get(entity.getClass(), id);
//        }
//        session.close();
        return object;
    }

    public static List<Object> listEntityByQuery(String query) throws Exception {
        session = DatabaseUnility.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        Query createQuery = session.createQuery(query);
        List list = createQuery.list();
//        session.close();
        return list;
    }

    public static Object uniqueRecordByQuery(String query) throws Exception {
        session = DatabaseUnility.getSessionFactory().openSession();
        transaction = session.beginTransaction();
        Query createQuery = session.createQuery(query);
        Object uniqueResult = createQuery.uniqueResult();
//        session.close();
        return uniqueResult;
    }

    public static String getMd5String() {
        String md5 = "" + new Date().getTime();
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(md5.getBytes());
            byte[] digest = instance.digest();
            for (int index = 0; index < digest.length; index++) {
                sb.append(Integer.toString((digest[index] & 0xff) + 0x100, 16).substring(1));
            }
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
        return sb.toString();
    }

}
