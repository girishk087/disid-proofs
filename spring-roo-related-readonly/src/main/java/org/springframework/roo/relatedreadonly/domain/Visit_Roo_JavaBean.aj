// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.relatedreadonly.domain;

import java.util.Date;
import org.springframework.roo.relatedreadonly.domain.Pet;
import org.springframework.roo.relatedreadonly.domain.Vet;
import org.springframework.roo.relatedreadonly.domain.Visit;

privileged aspect Visit_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Visit.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void Visit.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer Visit.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void Visit.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Visit.getDescription() {
        return this.description;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param description
     */
    public void Visit.setDescription(String description) {
        this.description = description;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Date
     */
    public Date Visit.getVisitDate() {
        return this.visitDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param visitDate
     */
    public void Visit.setVisitDate(Date visitDate) {
        this.visitDate = visitDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Pet
     */
    public Pet Visit.getPet() {
        return this.pet;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     */
    public void Visit.setPet(Pet pet) {
        this.pet = pet;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Vet
     */
    public Vet Visit.getVet() {
        return this.vet;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param vet
     */
    public void Visit.setVet(Vet vet) {
        this.vet = vet;
    }
    
}
