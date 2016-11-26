package com.main.pojo;
// Generated Nov 24, 2016 11:14:27 PM by Hibernate Tools 3.6.0


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

/**
 * TblCard generated by hbm2java
 */
@Entity
@Table(name="tbl_card"
    ,catalog="offsetmanager"
)
public class TblCard  implements java.io.Serializable {


     private Integer cardId;
     private String cardName;
     private char isActive;
     private Set<TblOrder> tblOrders = new HashSet<TblOrder>(0);

    public TblCard() {
    }

	
    public TblCard(String cardName, char isActive) {
        this.cardName = cardName;
        this.isActive = isActive;
    }
    public TblCard(String cardName, char isActive, Set<TblOrder> tblOrders) {
       this.cardName = cardName;
       this.isActive = isActive;
       this.tblOrders = tblOrders;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="card_id", unique=true, nullable=false)
    public Integer getCardId() {
        return this.cardId;
    }
    
    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    
    @Column(name="card_name", nullable=false, length=100)
    public String getCardName() {
        return this.cardName;
    }
    
    public void setCardName(String cardName) {
        this.cardName = cardName;
    }

    
    @Column(name="is_active", nullable=false, length=1)
    public char getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(char isActive) {
        this.isActive = isActive;
    }

@OneToMany(fetch=FetchType.EAGER, mappedBy="tblCard")
    public Set<TblOrder> getTblOrders() {
        return this.tblOrders;
    }
    
    public void setTblOrders(Set<TblOrder> tblOrders) {
        this.tblOrders = tblOrders;
    }




}


