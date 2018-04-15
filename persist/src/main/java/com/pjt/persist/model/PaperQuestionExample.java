package com.pjt.persist.model;

import java.util.ArrayList;
import java.util.List;

public class PaperQuestionExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PaperQuestionExample() {
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

        public Criteria andQuestionIdIsNull() {
            addCriterion("question_id is null");
            return (Criteria) this;
        }

        public Criteria andQuestionIdIsNotNull() {
            addCriterion("question_id is not null");
            return (Criteria) this;
        }

        public Criteria andQuestionIdEqualTo(Integer value) {
            addCriterion("question_id =", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdNotEqualTo(Integer value) {
            addCriterion("question_id <>", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdGreaterThan(Integer value) {
            addCriterion("question_id >", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("question_id >=", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdLessThan(Integer value) {
            addCriterion("question_id <", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdLessThanOrEqualTo(Integer value) {
            addCriterion("question_id <=", value, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdIn(List<Integer> values) {
            addCriterion("question_id in", values, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdNotIn(List<Integer> values) {
            addCriterion("question_id not in", values, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdBetween(Integer value1, Integer value2) {
            addCriterion("question_id between", value1, value2, "questionId");
            return (Criteria) this;
        }

        public Criteria andQuestionIdNotBetween(Integer value1, Integer value2) {
            addCriterion("question_id not between", value1, value2, "questionId");
            return (Criteria) this;
        }

        public Criteria andPaperIdIsNull() {
            addCriterion("paper_id is null");
            return (Criteria) this;
        }

        public Criteria andPaperIdIsNotNull() {
            addCriterion("paper_id is not null");
            return (Criteria) this;
        }

        public Criteria andPaperIdEqualTo(Integer value) {
            addCriterion("paper_id =", value, "paperId");
            return (Criteria) this;
        }

        public Criteria andPaperIdNotEqualTo(Integer value) {
            addCriterion("paper_id <>", value, "paperId");
            return (Criteria) this;
        }

        public Criteria andPaperIdGreaterThan(Integer value) {
            addCriterion("paper_id >", value, "paperId");
            return (Criteria) this;
        }

        public Criteria andPaperIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("paper_id >=", value, "paperId");
            return (Criteria) this;
        }

        public Criteria andPaperIdLessThan(Integer value) {
            addCriterion("paper_id <", value, "paperId");
            return (Criteria) this;
        }

        public Criteria andPaperIdLessThanOrEqualTo(Integer value) {
            addCriterion("paper_id <=", value, "paperId");
            return (Criteria) this;
        }

        public Criteria andPaperIdIn(List<Integer> values) {
            addCriterion("paper_id in", values, "paperId");
            return (Criteria) this;
        }

        public Criteria andPaperIdNotIn(List<Integer> values) {
            addCriterion("paper_id not in", values, "paperId");
            return (Criteria) this;
        }

        public Criteria andPaperIdBetween(Integer value1, Integer value2) {
            addCriterion("paper_id between", value1, value2, "paperId");
            return (Criteria) this;
        }

        public Criteria andPaperIdNotBetween(Integer value1, Integer value2) {
            addCriterion("paper_id not between", value1, value2, "paperId");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberIsNull() {
            addCriterion("question_number is null");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberIsNotNull() {
            addCriterion("question_number is not null");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberEqualTo(String value) {
            addCriterion("question_number =", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberNotEqualTo(String value) {
            addCriterion("question_number <>", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberGreaterThan(String value) {
            addCriterion("question_number >", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberGreaterThanOrEqualTo(String value) {
            addCriterion("question_number >=", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberLessThan(String value) {
            addCriterion("question_number <", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberLessThanOrEqualTo(String value) {
            addCriterion("question_number <=", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberLike(String value) {
            addCriterion("question_number like", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberNotLike(String value) {
            addCriterion("question_number not like", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberIn(List<String> values) {
            addCriterion("question_number in", values, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberNotIn(List<String> values) {
            addCriterion("question_number not in", values, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberBetween(String value1, String value2) {
            addCriterion("question_number between", value1, value2, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberNotBetween(String value1, String value2) {
            addCriterion("question_number not between", value1, value2, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andSingleScoreIsNull() {
            addCriterion("single_score is null");
            return (Criteria) this;
        }

        public Criteria andSingleScoreIsNotNull() {
            addCriterion("single_score is not null");
            return (Criteria) this;
        }

        public Criteria andSingleScoreEqualTo(Integer value) {
            addCriterion("single_score =", value, "singleScore");
            return (Criteria) this;
        }

        public Criteria andSingleScoreNotEqualTo(Integer value) {
            addCriterion("single_score <>", value, "singleScore");
            return (Criteria) this;
        }

        public Criteria andSingleScoreGreaterThan(Integer value) {
            addCriterion("single_score >", value, "singleScore");
            return (Criteria) this;
        }

        public Criteria andSingleScoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("single_score >=", value, "singleScore");
            return (Criteria) this;
        }

        public Criteria andSingleScoreLessThan(Integer value) {
            addCriterion("single_score <", value, "singleScore");
            return (Criteria) this;
        }

        public Criteria andSingleScoreLessThanOrEqualTo(Integer value) {
            addCriterion("single_score <=", value, "singleScore");
            return (Criteria) this;
        }

        public Criteria andSingleScoreIn(List<Integer> values) {
            addCriterion("single_score in", values, "singleScore");
            return (Criteria) this;
        }

        public Criteria andSingleScoreNotIn(List<Integer> values) {
            addCriterion("single_score not in", values, "singleScore");
            return (Criteria) this;
        }

        public Criteria andSingleScoreBetween(Integer value1, Integer value2) {
            addCriterion("single_score between", value1, value2, "singleScore");
            return (Criteria) this;
        }

        public Criteria andSingleScoreNotBetween(Integer value1, Integer value2) {
            addCriterion("single_score not between", value1, value2, "singleScore");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreIsNull() {
            addCriterion("short_answer_score is null");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreIsNotNull() {
            addCriterion("short_answer_score is not null");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreEqualTo(Integer value) {
            addCriterion("short_answer_score =", value, "shortAnswerScore");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreNotEqualTo(Integer value) {
            addCriterion("short_answer_score <>", value, "shortAnswerScore");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreGreaterThan(Integer value) {
            addCriterion("short_answer_score >", value, "shortAnswerScore");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("short_answer_score >=", value, "shortAnswerScore");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreLessThan(Integer value) {
            addCriterion("short_answer_score <", value, "shortAnswerScore");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreLessThanOrEqualTo(Integer value) {
            addCriterion("short_answer_score <=", value, "shortAnswerScore");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreIn(List<Integer> values) {
            addCriterion("short_answer_score in", values, "shortAnswerScore");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreNotIn(List<Integer> values) {
            addCriterion("short_answer_score not in", values, "shortAnswerScore");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreBetween(Integer value1, Integer value2) {
            addCriterion("short_answer_score between", value1, value2, "shortAnswerScore");
            return (Criteria) this;
        }

        public Criteria andShortAnswerScoreNotBetween(Integer value1, Integer value2) {
            addCriterion("short_answer_score not between", value1, value2, "shortAnswerScore");
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