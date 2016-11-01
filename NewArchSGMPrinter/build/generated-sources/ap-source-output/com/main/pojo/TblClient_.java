package com.main.pojo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(TblClient.class)
public abstract class TblClient_ {

	public static volatile SetAttribute<TblClient, TblAccount> tblAccounts;
	public static volatile SingularAttribute<TblClient, String> city;
	public static volatile SingularAttribute<TblClient, Integer> contact;
	public static volatile SingularAttribute<TblClient, String> name;
	public static volatile SingularAttribute<TblClient, String> shopName;
	public static volatile SetAttribute<TblClient, TblOrder> tblOrders;
	public static volatile SingularAttribute<TblClient, String> emailId;
	public static volatile SetAttribute<TblClient, TblParcel> tblParcels;
	public static volatile SetAttribute<TblClient, TblQuotation> tblQuotations;
	public static volatile SingularAttribute<TblClient, String> officeAddress;
	public static volatile SingularAttribute<TblClient, Integer> CId;

}

