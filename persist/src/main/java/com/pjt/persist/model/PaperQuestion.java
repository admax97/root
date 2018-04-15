package com.pjt.persist.model;

public class PaperQuestion {
    private Integer id;

    private Integer questionId;

    private Integer paperId;

    private String questionNumber;

    private Integer singleScore;

    private Integer shortAnswerScore;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public String getQuestionNumber() {
        return questionNumber;
    }

    public void setQuestionNumber(String questionNumber) {
        this.questionNumber = questionNumber == null ? null : questionNumber.trim();
    }

    public Integer getSingleScore() {
        return singleScore;
    }

    public void setSingleScore(Integer singleScore) {
        this.singleScore = singleScore;
    }

    public Integer getShortAnswerScore() {
        return shortAnswerScore;
    }

    public void setShortAnswerScore(Integer shortAnswerScore) {
        this.shortAnswerScore = shortAnswerScore;
    }
}