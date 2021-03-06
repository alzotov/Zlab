// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.azotov.roo.model;

import com.azotov.roo.model.Issuer;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Issuer_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Issuer.entityManager;
    
    public static final List<String> Issuer.fieldNames4OrderClauseFilter = java.util.Arrays.asList("Name", "Rate");
    
    public static final EntityManager Issuer.entityManager() {
        EntityManager em = new Issuer().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Issuer.countIssuers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Issuer o", Long.class).getSingleResult();
    }
    
    public static List<Issuer> Issuer.findAllIssuers() {
        return entityManager().createQuery("SELECT o FROM Issuer o", Issuer.class).getResultList();
    }
    
    public static List<Issuer> Issuer.findAllIssuers(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Issuer o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Issuer.class).getResultList();
    }
    
    public static Issuer Issuer.findIssuer(Long id) {
        if (id == null) return null;
        return entityManager().find(Issuer.class, id);
    }
    
    public static List<Issuer> Issuer.findIssuerEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Issuer o", Issuer.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Issuer> Issuer.findIssuerEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Issuer o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Issuer.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Issuer.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Issuer.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Issuer attached = Issuer.findIssuer(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Issuer.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Issuer.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Issuer Issuer.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Issuer merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
