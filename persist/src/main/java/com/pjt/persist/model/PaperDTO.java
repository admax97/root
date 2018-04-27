package com.pjt.persist.model;

import java.io.Serializable;
import java.util.List;

public class PaperDTO implements Serializable{

    /*试卷编号*/
    private Integer id;

    /*试卷名称*/
    private String paperName;

    /*创建人编号*/
    private Integer createrID;

    /*简答题数量*/
    private Integer shortQuestionCount;

    /*单选题数量*/
    private Integer singleChoiceCount;

    /*简答题总分*/
    private Integer shortQuestionScore;

    /*单选题总分*/
    private Integer singleChoiceScore;

    /*试卷总分*/
    private Integer totalScore;

    /*单选题类型*/
    private String singleChoiceType;

    /*单选题题库类型*/
    private String singleChoiceLibraryType;

    /*简答题类型*/
    private String shortQuestionType;

    /*简答题题库类型*/
    private String shortQuestionLibraryType;


    /*简答题集合*/
    private List<Question> shortQuestionList;


    /*单选题集合*/
    private List<Question> singleChoiceList;

    /*试卷备注*/
    private String title;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPaperName() {
        return paperName;
    }

    public void setPaperName(String paperName) {
        this.paperName = paperName;
    }

    public Integer getCreaterID() {
        return createrID;
    }

    public void setCreaterID(Integer createrID) {
        this.createrID = createrID;
    }

    public Integer getShortQuestionCount() {
        return shortQuestionCount;
    }

    public void setShortQuestionCount(Integer shortQuestionCount) {
        this.shortQuestionCount = shortQuestionCount;
    }

    public Integer getSingleChoiceCount() {
        return singleChoiceCount;
    }

    public void setSingleChoiceCount(Integer singleChoiceCount) {
        this.singleChoiceCount = singleChoiceCount;
    }

    public Integer getShortQuestionScore() {
        return shortQuestionScore;
    }

    public void setShortQuestionScore(Integer shortQuestionScore) {
        this.shortQuestionScore = shortQuestionScore;
    }

    public Integer getSingleChoiceScore() {
        return singleChoiceScore;
    }

    public void setSingleChoiceScore(Integer singleChoiceScore) {
        this.singleChoiceScore = singleChoiceScore;
    }

    public String getSingleChoiceType() {
        return singleChoiceType;
    }

    public void setSingleChoiceType(String singleChoiceType) {
        this.singleChoiceType = singleChoiceType;
    }

    public String getShortQuestionType() {
        return shortQuestionType;
    }

    public void setShortQuestionType(String shortQuestionType) {
        this.shortQuestionType = shortQuestionType;
    }

    public List<Question> getShortQuestionList() {
        return shortQuestionList;
    }

    public void setShortQuestionList(List<Question> shortQuestionList) {
        this.shortQuestionList = shortQuestionList;
    }

    public List<Question> getSingleChoiceList() {
        return singleChoiceList;
    }

    public void setSingleChoiceList(List<Question> singleChoiceList) {
        this.singleChoiceList = singleChoiceList;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSingleChoiceLibraryType() {
        return singleChoiceLibraryType;
    }

    public void setSingleChoiceLibraryType(String singleChoiceLibraryType) {
        this.singleChoiceLibraryType = singleChoiceLibraryType;
    }

    public String getShortQuestionLibraryType() {
        return shortQuestionLibraryType;
    }

    public void setShortQuestionLibraryType(String shortQuestionLibraryType) {
        this.shortQuestionLibraryType = shortQuestionLibraryType;
    }

    public Integer getTotalScore() {

        if(getShortQuestionScore() == null){
            shortQuestionScore = 0;
        }

        if(getSingleChoiceScore() == null){
            singleChoiceScore = 0;
        }

        return  getShortQuestionScore() + getSingleChoiceScore();
    }

    public void setTotalScore(Integer totalScore) {
        this.totalScore = totalScore;
    }
}
