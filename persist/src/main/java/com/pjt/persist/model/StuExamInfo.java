package com.pjt.persist.model;

import java.util.Date;

public class StuExamInfo {
    private Integer id;

    private Integer studentId;

    private Integer examId;

    private Integer examDescribe;

    private Date examTime;

    private Integer score;

    private Integer singleScore;

    private Integer shortAnsScore;

    private Integer time;

    private Integer createId;

    private Date createTime;

    private Integer updateId;

    private Date updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getExamId() {
        return examId;
    }

    public void setExamId(Integer examId) {
        this.examId = examId;
    }

    public Integer getExamDescribe() {
        return examDescribe;
    }

    public void setExamDescribe(Integer examDescribe) {
        this.examDescribe = examDescribe;
    }

    public Date getExamTime() {
        return examTime;
    }

    public void setExamTime(Date examTime) {
        this.examTime = examTime;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getSingleScore() {
        return singleScore;
    }

    public void setSingleScore(Integer singleScore) {
        this.singleScore = singleScore;
    }

    public Integer getShortAnsScore() {
        return shortAnsScore;
    }

    public void setShortAnsScore(Integer shortAnsScore) {
        this.shortAnsScore = shortAnsScore;
    }

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public Integer getCreateId() {
        return createId;
    }

    public void setCreateId(Integer createId) {
        this.createId = createId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getUpdateId() {
        return updateId;
    }

    public void setUpdateId(Integer updateId) {
        this.updateId = updateId;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}