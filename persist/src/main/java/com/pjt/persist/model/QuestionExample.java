package com.pjt.persist.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class QuestionExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public QuestionExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andLibraryIdIsNull() {
            addCriterion("library_id is null");
            return (Criteria) this;
        }

        public Criteria andLibraryIdIsNotNull() {
            addCriterion("library_id is not null");
            return (Criteria) this;
        }

        public Criteria andLibraryIdEqualTo(Integer value) {
            addCriterion("library_id =", value, "libraryId");
            return (Criteria) this;
        }

        public Criteria andLibraryIdNotEqualTo(Integer value) {
            addCriterion("library_id <>", value, "libraryId");
            return (Criteria) this;
        }

        public Criteria andLibraryIdGreaterThan(Integer value) {
            addCriterion("library_id >", value, "libraryId");
            return (Criteria) this;
        }

        public Criteria andLibraryIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("library_id >=", value, "libraryId");
            return (Criteria) this;
        }

        public Criteria andLibraryIdLessThan(Integer value) {
            addCriterion("library_id <", value, "libraryId");
            return (Criteria) this;
        }

        public Criteria andLibraryIdLessThanOrEqualTo(Integer value) {
            addCriterion("library_id <=", value, "libraryId");
            return (Criteria) this;
        }

        public Criteria andLibraryIdIn(List<Integer> values) {
            addCriterion("library_id in", values, "libraryId");
            return (Criteria) this;
        }

        public Criteria andLibraryIdNotIn(List<Integer> values) {
            addCriterion("library_id not in", values, "libraryId");
            return (Criteria) this;
        }

        public Criteria andLibraryIdBetween(Integer value1, Integer value2) {
            addCriterion("library_id between", value1, value2, "libraryId");
            return (Criteria) this;
        }

        public Criteria andLibraryIdNotBetween(Integer value1, Integer value2) {
            addCriterion("library_id not between", value1, value2, "libraryId");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andScoreIsNull() {
            addCriterion("score is null");
            return (Criteria) this;
        }

        public Criteria andScoreIsNotNull() {
            addCriterion("score is not null");
            return (Criteria) this;
        }

        public Criteria andScoreEqualTo(String value) {
            addCriterion("score =", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreNotEqualTo(String value) {
            addCriterion("score <>", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreGreaterThan(String value) {
            addCriterion("score >", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreGreaterThanOrEqualTo(String value) {
            addCriterion("score >=", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreLessThan(String value) {
            addCriterion("score <", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreLessThanOrEqualTo(String value) {
            addCriterion("score <=", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreLike(String value) {
            addCriterion("score like", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreNotLike(String value) {
            addCriterion("score not like", value, "score");
            return (Criteria) this;
        }

        public Criteria andScoreIn(List<String> values) {
            addCriterion("score in", values, "score");
            return (Criteria) this;
        }

        public Criteria andScoreNotIn(List<String> values) {
            addCriterion("score not in", values, "score");
            return (Criteria) this;
        }

        public Criteria andScoreBetween(String value1, String value2) {
            addCriterion("score between", value1, value2, "score");
            return (Criteria) this;
        }

        public Criteria andScoreNotBetween(String value1, String value2) {
            addCriterion("score not between", value1, value2, "score");
            return (Criteria) this;
        }

        public Criteria andAnswerAIsNull() {
            addCriterion("answer_a is null");
            return (Criteria) this;
        }

        public Criteria andAnswerAIsNotNull() {
            addCriterion("answer_a is not null");
            return (Criteria) this;
        }

        public Criteria andAnswerAEqualTo(String value) {
            addCriterion("answer_a =", value, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerANotEqualTo(String value) {
            addCriterion("answer_a <>", value, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerAGreaterThan(String value) {
            addCriterion("answer_a >", value, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerAGreaterThanOrEqualTo(String value) {
            addCriterion("answer_a >=", value, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerALessThan(String value) {
            addCriterion("answer_a <", value, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerALessThanOrEqualTo(String value) {
            addCriterion("answer_a <=", value, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerALike(String value) {
            addCriterion("answer_a like", value, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerANotLike(String value) {
            addCriterion("answer_a not like", value, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerAIn(List<String> values) {
            addCriterion("answer_a in", values, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerANotIn(List<String> values) {
            addCriterion("answer_a not in", values, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerABetween(String value1, String value2) {
            addCriterion("answer_a between", value1, value2, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerANotBetween(String value1, String value2) {
            addCriterion("answer_a not between", value1, value2, "answerA");
            return (Criteria) this;
        }

        public Criteria andAnswerBIsNull() {
            addCriterion("answer_b is null");
            return (Criteria) this;
        }

        public Criteria andAnswerBIsNotNull() {
            addCriterion("answer_b is not null");
            return (Criteria) this;
        }

        public Criteria andAnswerBEqualTo(String value) {
            addCriterion("answer_b =", value, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBNotEqualTo(String value) {
            addCriterion("answer_b <>", value, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBGreaterThan(String value) {
            addCriterion("answer_b >", value, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBGreaterThanOrEqualTo(String value) {
            addCriterion("answer_b >=", value, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBLessThan(String value) {
            addCriterion("answer_b <", value, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBLessThanOrEqualTo(String value) {
            addCriterion("answer_b <=", value, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBLike(String value) {
            addCriterion("answer_b like", value, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBNotLike(String value) {
            addCriterion("answer_b not like", value, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBIn(List<String> values) {
            addCriterion("answer_b in", values, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBNotIn(List<String> values) {
            addCriterion("answer_b not in", values, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBBetween(String value1, String value2) {
            addCriterion("answer_b between", value1, value2, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerBNotBetween(String value1, String value2) {
            addCriterion("answer_b not between", value1, value2, "answerB");
            return (Criteria) this;
        }

        public Criteria andAnswerCIsNull() {
            addCriterion("answer_c is null");
            return (Criteria) this;
        }

        public Criteria andAnswerCIsNotNull() {
            addCriterion("answer_c is not null");
            return (Criteria) this;
        }

        public Criteria andAnswerCEqualTo(String value) {
            addCriterion("answer_c =", value, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCNotEqualTo(String value) {
            addCriterion("answer_c <>", value, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCGreaterThan(String value) {
            addCriterion("answer_c >", value, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCGreaterThanOrEqualTo(String value) {
            addCriterion("answer_c >=", value, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCLessThan(String value) {
            addCriterion("answer_c <", value, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCLessThanOrEqualTo(String value) {
            addCriterion("answer_c <=", value, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCLike(String value) {
            addCriterion("answer_c like", value, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCNotLike(String value) {
            addCriterion("answer_c not like", value, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCIn(List<String> values) {
            addCriterion("answer_c in", values, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCNotIn(List<String> values) {
            addCriterion("answer_c not in", values, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCBetween(String value1, String value2) {
            addCriterion("answer_c between", value1, value2, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerCNotBetween(String value1, String value2) {
            addCriterion("answer_c not between", value1, value2, "answerC");
            return (Criteria) this;
        }

        public Criteria andAnswerDIsNull() {
            addCriterion("answer_d is null");
            return (Criteria) this;
        }

        public Criteria andAnswerDIsNotNull() {
            addCriterion("answer_d is not null");
            return (Criteria) this;
        }

        public Criteria andAnswerDEqualTo(String value) {
            addCriterion("answer_d =", value, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDNotEqualTo(String value) {
            addCriterion("answer_d <>", value, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDGreaterThan(String value) {
            addCriterion("answer_d >", value, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDGreaterThanOrEqualTo(String value) {
            addCriterion("answer_d >=", value, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDLessThan(String value) {
            addCriterion("answer_d <", value, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDLessThanOrEqualTo(String value) {
            addCriterion("answer_d <=", value, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDLike(String value) {
            addCriterion("answer_d like", value, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDNotLike(String value) {
            addCriterion("answer_d not like", value, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDIn(List<String> values) {
            addCriterion("answer_d in", values, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDNotIn(List<String> values) {
            addCriterion("answer_d not in", values, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDBetween(String value1, String value2) {
            addCriterion("answer_d between", value1, value2, "answerD");
            return (Criteria) this;
        }

        public Criteria andAnswerDNotBetween(String value1, String value2) {
            addCriterion("answer_d not between", value1, value2, "answerD");
            return (Criteria) this;
        }

        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andRightAnswerIsNull() {
            addCriterion("right_answer is null");
            return (Criteria) this;
        }

        public Criteria andRightAnswerIsNotNull() {
            addCriterion("right_answer is not null");
            return (Criteria) this;
        }

        public Criteria andRightAnswerEqualTo(String value) {
            addCriterion("right_answer =", value, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerNotEqualTo(String value) {
            addCriterion("right_answer <>", value, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerGreaterThan(String value) {
            addCriterion("right_answer >", value, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerGreaterThanOrEqualTo(String value) {
            addCriterion("right_answer >=", value, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerLessThan(String value) {
            addCriterion("right_answer <", value, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerLessThanOrEqualTo(String value) {
            addCriterion("right_answer <=", value, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerLike(String value) {
            addCriterion("right_answer like", value, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerNotLike(String value) {
            addCriterion("right_answer not like", value, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerIn(List<String> values) {
            addCriterion("right_answer in", values, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerNotIn(List<String> values) {
            addCriterion("right_answer not in", values, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerBetween(String value1, String value2) {
            addCriterion("right_answer between", value1, value2, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andRightAnswerNotBetween(String value1, String value2) {
            addCriterion("right_answer not between", value1, value2, "rightAnswer");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIsNull() {
            addCriterion("question_type is null");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIsNotNull() {
            addCriterion("question_type is not null");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeEqualTo(String value) {
            addCriterion("question_type =", value, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeNotEqualTo(String value) {
            addCriterion("question_type <>", value, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeGreaterThan(String value) {
            addCriterion("question_type >", value, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeGreaterThanOrEqualTo(String value) {
            addCriterion("question_type >=", value, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeLessThan(String value) {
            addCriterion("question_type <", value, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeLessThanOrEqualTo(String value) {
            addCriterion("question_type <=", value, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeLike(String value) {
            addCriterion("question_type like", value, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeNotLike(String value) {
            addCriterion("question_type not like", value, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeIn(List<String> values) {
            addCriterion("question_type in", values, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeNotIn(List<String> values) {
            addCriterion("question_type not in", values, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeBetween(String value1, String value2) {
            addCriterion("question_type between", value1, value2, "questionType");
            return (Criteria) this;
        }

        public Criteria andQuestionTypeNotBetween(String value1, String value2) {
            addCriterion("question_type not between", value1, value2, "questionType");
            return (Criteria) this;
        }

        public Criteria andCreateIdIsNull() {
            addCriterion("create_id is null");
            return (Criteria) this;
        }

        public Criteria andCreateIdIsNotNull() {
            addCriterion("create_id is not null");
            return (Criteria) this;
        }

        public Criteria andCreateIdEqualTo(Integer value) {
            addCriterion("create_id =", value, "createId");
            return (Criteria) this;
        }

        public Criteria andCreateIdNotEqualTo(Integer value) {
            addCriterion("create_id <>", value, "createId");
            return (Criteria) this;
        }

        public Criteria andCreateIdGreaterThan(Integer value) {
            addCriterion("create_id >", value, "createId");
            return (Criteria) this;
        }

        public Criteria andCreateIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("create_id >=", value, "createId");
            return (Criteria) this;
        }

        public Criteria andCreateIdLessThan(Integer value) {
            addCriterion("create_id <", value, "createId");
            return (Criteria) this;
        }

        public Criteria andCreateIdLessThanOrEqualTo(Integer value) {
            addCriterion("create_id <=", value, "createId");
            return (Criteria) this;
        }

        public Criteria andCreateIdIn(List<Integer> values) {
            addCriterion("create_id in", values, "createId");
            return (Criteria) this;
        }

        public Criteria andCreateIdNotIn(List<Integer> values) {
            addCriterion("create_id not in", values, "createId");
            return (Criteria) this;
        }

        public Criteria andCreateIdBetween(Integer value1, Integer value2) {
            addCriterion("create_id between", value1, value2, "createId");
            return (Criteria) this;
        }

        public Criteria andCreateIdNotBetween(Integer value1, Integer value2) {
            addCriterion("create_id not between", value1, value2, "createId");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andUpdateIdIsNull() {
            addCriterion("update_id is null");
            return (Criteria) this;
        }

        public Criteria andUpdateIdIsNotNull() {
            addCriterion("update_id is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateIdEqualTo(Integer value) {
            addCriterion("update_id =", value, "updateId");
            return (Criteria) this;
        }

        public Criteria andUpdateIdNotEqualTo(Integer value) {
            addCriterion("update_id <>", value, "updateId");
            return (Criteria) this;
        }

        public Criteria andUpdateIdGreaterThan(Integer value) {
            addCriterion("update_id >", value, "updateId");
            return (Criteria) this;
        }

        public Criteria andUpdateIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("update_id >=", value, "updateId");
            return (Criteria) this;
        }

        public Criteria andUpdateIdLessThan(Integer value) {
            addCriterion("update_id <", value, "updateId");
            return (Criteria) this;
        }

        public Criteria andUpdateIdLessThanOrEqualTo(Integer value) {
            addCriterion("update_id <=", value, "updateId");
            return (Criteria) this;
        }

        public Criteria andUpdateIdIn(List<Integer> values) {
            addCriterion("update_id in", values, "updateId");
            return (Criteria) this;
        }

        public Criteria andUpdateIdNotIn(List<Integer> values) {
            addCriterion("update_id not in", values, "updateId");
            return (Criteria) this;
        }

        public Criteria andUpdateIdBetween(Integer value1, Integer value2) {
            addCriterion("update_id between", value1, value2, "updateId");
            return (Criteria) this;
        }

        public Criteria andUpdateIdNotBetween(Integer value1, Integer value2) {
            addCriterion("update_id not between", value1, value2, "updateId");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNull() {
            addCriterion("update_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNotNull() {
            addCriterion("update_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeEqualTo(Date value) {
            addCriterion("update_time =", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotEqualTo(Date value) {
            addCriterion("update_time <>", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThan(Date value) {
            addCriterion("update_time >", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("update_time >=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThan(Date value) {
            addCriterion("update_time <", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterion("update_time <=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIn(List<Date> values) {
            addCriterion("update_time in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotIn(List<Date> values) {
            addCriterion("update_time not in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeBetween(Date value1, Date value2) {
            addCriterion("update_time between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterion("update_time not between", value1, value2, "updateTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}