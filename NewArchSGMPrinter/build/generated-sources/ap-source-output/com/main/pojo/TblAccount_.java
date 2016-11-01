package com.main.pojo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(TblAccount.class)
public abstract class TblAccount_ {

	public static volatile SingularAttribute<TblAccount, String> orderAmount;
	public static volatile SingularAttribute<TblAccount, TblOrder> tblOrder;
	public static volatile SingularAttribute<TblAccount, TblQuotation> tblQuotation;
	public static volatile SingularAttribute<TblAccount, TblClient> tblClient;
	public static volatile SingularAttribute<TblAccount, Integer> AId;
	public static volatile SingularAttribute<TblAccount, String> balanceAmount;
	public static volatile SingularAttribute<TblAccount, String> paidAmount;

}

