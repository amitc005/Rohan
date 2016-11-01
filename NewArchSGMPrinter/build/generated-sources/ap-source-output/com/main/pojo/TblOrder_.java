package com.main.pojo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(TblOrder.class)
public abstract class TblOrder_ {

	public static volatile SingularAttribute<TblOrder, String> orderPayment;
	public static volatile SetAttribute<TblOrder, TblAccount> tblAccounts;
	public static volatile SingularAttribute<TblOrder, TblQuotation> tblQuotation;
	public static volatile SingularAttribute<TblOrder, TblClient> tblClient;
	public static volatile SingularAttribute<TblOrder, String> payment;
	public static volatile SetAttribute<TblOrder, TblParcel> tblParcels;
	public static volatile SingularAttribute<TblOrder, Integer> OId;

}

