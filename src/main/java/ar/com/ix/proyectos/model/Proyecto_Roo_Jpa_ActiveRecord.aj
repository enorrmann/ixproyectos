// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.ix.proyectos.model;

import ar.com.ix.proyectos.model.Proyecto;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Proyecto_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Proyecto.entityManager;
    
    public static final List<String> Proyecto.fieldNames4OrderClauseFilter = java.util.Arrays.asList("codigo");
    
    public static final EntityManager Proyecto.entityManager() {
        EntityManager em = new Proyecto().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Proyecto.countProyectoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Proyecto o", Long.class).getSingleResult();
    }
    
    public static List<Proyecto> Proyecto.findAllProyectoes() {
        return entityManager().createQuery("SELECT o FROM Proyecto o", Proyecto.class).getResultList();
    }
    
    public static List<Proyecto> Proyecto.findAllProyectoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Proyecto o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Proyecto.class).getResultList();
    }
    
    public static Proyecto Proyecto.findProyecto(Long id) {
        if (id == null) return null;
        return entityManager().find(Proyecto.class, id);
    }
    
    public static List<Proyecto> Proyecto.findProyectoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Proyecto o", Proyecto.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Proyecto> Proyecto.findProyectoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Proyecto o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Proyecto.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Proyecto.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Proyecto.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Proyecto attached = Proyecto.findProyecto(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Proyecto.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Proyecto.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Proyecto Proyecto.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Proyecto merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
