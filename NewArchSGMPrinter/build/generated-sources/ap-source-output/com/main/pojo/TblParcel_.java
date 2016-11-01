package com.main.pojo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(TblParcel.class)
public abstract class TblParcel_ {

	public static volatile SingularAttribute<TblParcel, String> delivery;
	public static volatile SingularAttribute<TblParcel, TblOrder> tblOrder;
	public static volatile SingularAttribute<TblParcel, TblQuotation> tblQuotation;
	public static volatile SingularAttribute<TblParcel, String> leftStock;
	public static volatile SingularAttribute<TblParcel, String> fullPayment;
	public static volatile SingularAttribute<TblParcel, TblClient> tblClient;
	public static volatile SingularAttribute<TblParcel, Integer> PId;
	public static volatile SingularAttribute<TblParcel, String> balanceAmount;
	public static volatile SingularAttribute<TblParcel, String> deliveryDate;

}

