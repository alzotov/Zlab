package com.azotov.roo.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson(deepSerialize = true)
public class IssuerAgent {

    /**
     */
    @NotNull
    private String Name;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Issuer> Issuers = new HashSet<Issuer>();
}
