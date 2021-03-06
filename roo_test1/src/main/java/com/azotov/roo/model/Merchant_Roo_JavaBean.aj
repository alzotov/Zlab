// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.azotov.roo.model;

import com.azotov.roo.model.Branch;
import com.azotov.roo.model.IssuerAgent;
import com.azotov.roo.model.Merchant;
import com.azotov.roo.model.Terminal;
import java.util.Date;

privileged aspect Merchant_Roo_JavaBean {
    
    public String Merchant.getName() {
        return this.Name;
    }
    
    public void Merchant.setName(String Name) {
        this.Name = Name;
    }
    
    public String Merchant.getCompanyName() {
        return this.CompanyName;
    }
    
    public void Merchant.setCompanyName(String CompanyName) {
        this.CompanyName = CompanyName;
    }
    
    public Long Merchant.getCompanyRegisterNumber() {
        return this.CompanyRegisterNumber;
    }
    
    public void Merchant.setCompanyRegisterNumber(Long CompanyRegisterNumber) {
        this.CompanyRegisterNumber = CompanyRegisterNumber;
    }
    
    public String Merchant.getBusinessNature() {
        return this.BusinessNature;
    }
    
    public void Merchant.setBusinessNature(String BusinessNature) {
        this.BusinessNature = BusinessNature;
    }
    
    public String Merchant.getBusinessRegisterDocument() {
        return this.BusinessRegisterDocument;
    }
    
    public void Merchant.setBusinessRegisterDocument(String BusinessRegisterDocument) {
        this.BusinessRegisterDocument = BusinessRegisterDocument;
    }
    
    public String Merchant.getContactPerson() {
        return this.ContactPerson;
    }
    
    public void Merchant.setContactPerson(String ContactPerson) {
        this.ContactPerson = ContactPerson;
    }
    
    public String Merchant.getAddress() {
        return this.Address;
    }
    
    public void Merchant.setAddress(String Address) {
        this.Address = Address;
    }
    
    public String Merchant.getContact() {
        return this.Contact;
    }
    
    public void Merchant.setContact(String Contact) {
        this.Contact = Contact;
    }
    
    public String Merchant.getEmail() {
        return this.Email;
    }
    
    public void Merchant.setEmail(String Email) {
        this.Email = Email;
    }
    
    public String Merchant.getBillingCycle() {
        return this.BillingCycle;
    }
    
    public void Merchant.setBillingCycle(String BillingCycle) {
        this.BillingCycle = BillingCycle;
    }
    
    public Long Merchant.getAccountNumber() {
        return this.AccountNumber;
    }
    
    public void Merchant.setAccountNumber(Long AccountNumber) {
        this.AccountNumber = AccountNumber;
    }
    
    public Date Merchant.getDateJoin() {
        return this.DateJoin;
    }
    
    public void Merchant.setDateJoin(Date DateJoin) {
        this.DateJoin = DateJoin;
    }
    
    public Date Merchant.getNextBillingDate() {
        return this.NextBillingDate;
    }
    
    public void Merchant.setNextBillingDate(Date NextBillingDate) {
        this.NextBillingDate = NextBillingDate;
    }
    
    public String Merchant.getRemarks() {
        return this.Remarks;
    }
    
    public void Merchant.setRemarks(String Remarks) {
        this.Remarks = Remarks;
    }
    
    public Double Merchant.getRate() {
        return this.Rate;
    }
    
    public void Merchant.setRate(Double Rate) {
        this.Rate = Rate;
    }
    
    public Terminal Merchant.getTerminals() {
        return this.Terminals;
    }
    
    public void Merchant.setTerminals(Terminal Terminals) {
        this.Terminals = Terminals;
    }
    
    public Branch Merchant.getBranches() {
        return this.Branches;
    }
    
    public void Merchant.setBranches(Branch Branches) {
        this.Branches = Branches;
    }
    
    public IssuerAgent Merchant.getIssuerAgent() {
        return this.IssuerAgent;
    }
    
    public void Merchant.setIssuerAgent(IssuerAgent IssuerAgent) {
        this.IssuerAgent = IssuerAgent;
    }
    
}
