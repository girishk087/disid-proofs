// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.relatedreadonly.repository;

import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.relatedreadonly.domain.Vet;
import org.springframework.roo.relatedreadonly.repository.VetRepository;
import org.springframework.roo.relatedreadonly.repository.VetRepositoryCustom;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VetRepository_Roo_Jpa_Repository {
    
    declare parents: VetRepository extends DetachableJpaRepository<Vet, Long>;
    
    declare parents: VetRepository extends VetRepositoryCustom;
    
    declare @type: VetRepository: @Transactional(readOnly = true);
    
}
