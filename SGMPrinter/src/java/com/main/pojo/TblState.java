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
 * TblState generated by hbm2java
 */
@Entity
@Table(name="tbl_state"
    ,catalog="offsetmanager"
)
public class TblState  implements java.io.Serializable {


     private Integer stateId;
     private String stateName;
     private char isActive;
     private Set<TblClient> tblClients = new HashSet<TblClient>(0);

    public TblState() {
    }

	
    public TblState(String stateName, char isActive) {
        this.stateName = stateName;
        this.isActive = isActive;
    }
    public TblState(String stateName, char isActive, Set<TblClient> tblClients) {
       this.stateName = stateName;
       this.isActive = isActive;
       this.tblClients = tblClients;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="state_id", unique=true, nullable=false)
    public Integer getStateId() {
        return this.stateId;
    }
    
    public void setStateId(Integer stateId) {
        this.stateId = stateId;
    }

    
    @Column(name="state_name", nullable=false, length=100)
    public String getStateName() {
        return this.stateName;
    }
    
    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    
    @Column(name="is_active", nullable=false, length=1)
    public char getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(char isActive) {
        this.isActive = isActive;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="tblState")
    public Set<TblClient> getTblClients() {
        return this.tblClients;
    }
    
    public void setTblClients(Set<TblClient> tblClients) {
        this.tblClients = tblClients;
    }




}


