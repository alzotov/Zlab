// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.azotov.roo.model;

import com.azotov.roo.model.Merchant;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Merchant_Roo_Json {
    
    public String Merchant.toJson() {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(this);
    }
    
    public String Merchant.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static Merchant Merchant.fromJsonToMerchant(String json) {
        return new JSONDeserializer<Merchant>()
        .use(null, Merchant.class).deserialize(json);
    }
    
    public static String Merchant.toJsonArray(Collection<Merchant> collection) {
        return new JSONSerializer()
        .exclude("*.class").deepSerialize(collection);
    }
    
    public static String Merchant.toJsonArray(Collection<Merchant> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Merchant> Merchant.fromJsonArrayToMerchants(String json) {
        return new JSONDeserializer<List<Merchant>>()
        .use("values", Merchant.class).deserialize(json);
    }
    
}
