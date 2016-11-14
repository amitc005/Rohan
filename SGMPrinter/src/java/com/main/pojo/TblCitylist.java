package com.main.pojo;
// Generated Nov 14, 2016 5:08:08 PM by Hibernate Tools 4.3.1


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
 * TblCitylist generated by hbm2java
 */
@Entity
@Table(name="tbl_citylist"
    ,catalog="offsetmanager"
)
public class TblCitylist  implements java.io.Serializable {


     private Integer cityId;
     private String cityName;
     private String latitude;
     private String longitude;
     private String stateId;
     private char isActive;
     private Set<TblClient> tblClients = new HashSet<TblClient>(0);

    public TblCitylist() {
    }

	
    public TblCitylist(char isActive) {
        this.isActive = isActive;
    }
    public TblCitylist(String cityName, String latitude, String longitude, String stateId, char isActive, Set<TblClient> tblClients) {
       this.cityName = cityName;
       this.latitude = latitude;
       this.longitude = longitude;
       this.stateId = stateId;
       this.isActive = isActive;
       this.tblClients = tblClients;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="city_id", unique=true, nullable=false)
    public Integer getCityId() {
        return this.cityId;
    }
    
    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    
    @Column(name="city_name", length=100)
    public String getCityName() {
        return this.cityName;
    }
    
    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    
    @Column(name="latitude", length=10)
    public String getLatitude() {
        return this.latitude;
    }
    
    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    
    @Column(name="longitude", length=10)
    public String getLongitude() {
        return this.longitude;
    }
    
    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    
    @Column(name="state_id", length=50)
    public String getStateId() {
        return this.stateId;
    }
    
    public void setStateId(String stateId) {
        this.stateId = stateId;
    }

    
    @Column(name="is_active", nullable=false, length=1)
    public char getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(char isActive) {
        this.isActive = isActive;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="tblCitylist")
    public Set<TblClient> getTblClients() {
        return this.tblClients;
    }
    
    public void setTblClients(Set<TblClient> tblClients) {
        this.tblClients = tblClients;
    }




}


