// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.azotov.roo.model;

import com.azotov.roo.model.IssuerAgent;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect IssuerAgent_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager IssuerAgent.entityManager;
    
    public static final List<String> IssuerAgent.fieldNames4OrderClauseFilter = java.util.Arrays.asList("Name", "Issuers");
    
    public static final EntityManager IssuerAgent.entityManager() {
        EntityManager em = new IssuerAgent().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long IssuerAgent.countIssuerAgents() {
        return entityManager().createQuery("SELECT COUNT(o) FROM IssuerAgent o", Long.class).getSingleResult();
    }
    
    public static List<IssuerAgent> IssuerAgent.findAllIssuerAgents() {
        return entityManager().createQuery("SELECT o FROM IssuerAgent o", IssuerAgent.class).getResultList();
    }
    
    public static List<IssuerAgent> IssuerAgent.findAllIssuerAgents(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM IssuerAgent o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, IssuerAgent.class).getResultList();
    }
    
    public static IssuerAgent IssuerAgent.findIssuerAgent(Long id) {
        if (id == null) return null;
        return entityManager().find(IssuerAgent.class, id);
    }
    
    public static List<IssuerAgent> IssuerAgent.findIssuerAgentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM IssuerAgent o", IssuerAgent.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<IssuerAgent> IssuerAgent.findIssuerAgentEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM IssuerAgent o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, IssuerAgent.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void IssuerAgent.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void IssuerAgent.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            IssuerAgent attached = IssuerAgent.findIssuerAgent(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void IssuerAgent.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void IssuerAgent.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public IssuerAgent IssuerAgent.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        IssuerAgent merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}