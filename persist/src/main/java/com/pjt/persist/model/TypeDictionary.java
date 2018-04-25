package com.pjt.persist.model;

public class TypeDictionary {
    private Integer id;

    private String typeCd;

    private String typeName;

    private String typeSubCd;

    private String typeSubName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypeCd() {
        return typeCd;
    }

    public void setTypeCd(String typeCd) {
        this.typeCd = typeCd == null ? null : typeCd.trim();
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName == null ? null : typeName.trim();
    }

    public String getTypeSubCd() {
        return typeSubCd;
    }

    public void setTypeSubCd(String typeSubCd) {
        this.typeSubCd = typeSubCd == null ? null : typeSubCd.trim();
    }

    public String getTypeSubName() {
        return typeSubName;
    }

    public void setTypeSubName(String typeSubName) {
        this.typeSubName = typeSubName == null ? null : typeSubName.trim();
    }
}