package com.azotov.roo.model;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson(deepSerialize = true)
public class Merchant {

    /**
     */
    @NotNull
    private String Name;

    /**
     */
    @NotNull
    private String CompanyName;

    /**
     */
    private Long CompanyRegisterNumber;

    /**
     */
    @NotNull
    private String BusinessNature;

    /**
     */
    @NotNull
    private String BusinessRegisterDocument;

    /**
     */
    @NotNull
    private String ContactPerson;

    /**
     */
    @NotNull
    private String Address;

    /**
     */
    @NotNull
    private String Contact;

    /**
     */
    @NotNull
    private String Email;

    /**
     */
    @NotNull
    private String BillingCycle;

    /**
     */
    private Long AccountNumber;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date DateJoin;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date NextBillingDate;

    /**
     */
    private String Remarks;

    /**
     */
    private Double Rate;

    
    @ManyToOne
    private Issuer Issuer;
    
}
