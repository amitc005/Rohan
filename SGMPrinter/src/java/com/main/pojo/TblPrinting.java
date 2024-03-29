package com.main.pojo;
// Generated Nov 26, 2016 10:29:34 PM by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * TblPrinting generated by hbm2java
 */
@Entity
@Table(name="tbl_printing"
    ,catalog="offsetmanager"
)
public class TblPrinting  implements java.io.Serializable {


     private Integer printingId;
     private String printingName;
     private Date ptAddedDate;
     private char isActive;
     private Set<TblOrder> tblOrders = new HashSet<TblOrder>(0);

    public TblPrinting() {
    }

	
    public TblPrinting(String printingName, Date ptAddedDate, char isActive) {
        this.printingName = printingName;
        this.ptAddedDate = ptAddedDate;
        this.isActive = isActive;
    }
    public TblPrinting(String printingName, Date ptAddedDate, char isActive, Set<TblOrder> tblOrders) {
       this.printingName = printingName;
       this.ptAddedDate = ptAddedDate;
       this.isActive = isActive;
       this.tblOrders = tblOrders;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="printing_id", unique=true, nullable=false)
    public Integer getPrintingId() {
        return this.printingId;
    }
    
    public void setPrintingId(Integer printingId) {
        this.printingId = printingId;
    }

    
    @Column(name="printing_name", nullable=false, length=100)
    public String getPrintingName() {
        return this.printingName;
    }
    
    public void setPrintingName(String printingName) {
        this.printingName = printingName;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="pt_added_date", nullable=false, length=10)
    public Date getPtAddedDate() {
        return this.ptAddedDate;
    }
    
    public void setPtAddedDate(Date ptAddedDate) {
        this.ptAddedDate = ptAddedDate;
    }

    
    @Column(name="is_active", nullable=false, length=1)
    public char getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(char isActive) {
        this.isActive = isActive;
    }

@OneToMany(fetch=FetchType.EAGER, mappedBy="tblPrinting")
    public Set<TblOrder> getTblOrders() {
        return this.tblOrders;
    }
    
    public void setTblOrders(Set<TblOrder> tblOrders) {
        this.tblOrders = tblOrders;
    }




}


