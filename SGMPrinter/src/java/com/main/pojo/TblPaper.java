package com.main.pojo;
// Generated 4 Nov, 2016 4:39:20 PM by Hibernate Tools 4.3.1


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
 * TblPaper generated by hbm2java
 */
@Entity
@Table(name="tbl_paper"
    ,catalog="offsetmanager"
)
public class TblPaper  implements java.io.Serializable {


     private Integer paperId;
     private String paperName;
     private Date PAddedDate;
     private char isActive;
     private Set<TblOrder> tblOrders = new HashSet<TblOrder>(0);

    public TblPaper() {
    }

	
    public TblPaper(String paperName, Date PAddedDate, char isActive) {
        this.paperName = paperName;
        this.PAddedDate = PAddedDate;
        this.isActive = isActive;
    }
    public TblPaper(String paperName, Date PAddedDate, char isActive, Set<TblOrder> tblOrders) {
       this.paperName = paperName;
       this.PAddedDate = PAddedDate;
       this.isActive = isActive;
       this.tblOrders = tblOrders;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="paper_id", unique=true, nullable=false)
    public Integer getPaperId() {
        return this.paperId;
    }
    
    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    
    @Column(name="paper_name", nullable=false, length=100)
    public String getPaperName() {
        return this.paperName;
    }
    
    public void setPaperName(String paperName) {
        this.paperName = paperName;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="p_added_date", nullable=false, length=10)
    public Date getPAddedDate() {
        return this.PAddedDate;
    }
    
    public void setPAddedDate(Date PAddedDate) {
        this.PAddedDate = PAddedDate;
    }

    
    @Column(name="is_active", nullable=false, length=1)
    public char getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(char isActive) {
        this.isActive = isActive;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="tblPaper")
    public Set<TblOrder> getTblOrders() {
        return this.tblOrders;
    }
    
    public void setTblOrders(Set<TblOrder> tblOrders) {
        this.tblOrders = tblOrders;
    }




}


