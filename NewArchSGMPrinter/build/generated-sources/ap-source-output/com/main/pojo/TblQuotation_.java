package com.main.pojo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(TblQuotation.class)
public abstract class TblQuotation_ {

	public static volatile SetAttribute<TblQuotation, TblAccount> tblAccounts;
	public static volatile SingularAttribute<TblQuotation, String> paper;
	public static volatile SingularAttribute<TblQuotation, String> quotationFor;
	public static volatile SingularAttribute<TblQuotation, TblClient> tblClient;
	public static volatile SetAttribute<TblQuotation, TblOrder> tblOrders;
	public static volatile SetAttribute<TblQuotation, TblParcel> tblParcels;
	public static volatile SingularAttribute<TblQuotation, Integer> QId;
	public static volatile SingularAttribute<TblQuotation, String> postPress;
	public static volatile SingularAttribute<TblQuotation, String> otherDesc;

}

