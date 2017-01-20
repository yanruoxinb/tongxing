package com.siweisoft.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReceiptExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ReceiptExample() {
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

        public Criteria andTaskIdIsNull() {
            addCriterion("task_id is null");
            return (Criteria) this;
        }

        public Criteria andTaskIdIsNotNull() {
            addCriterion("task_id is not null");
            return (Criteria) this;
        }

        public Criteria andTaskIdEqualTo(Integer value) {
            addCriterion("task_id =", value, "taskId");
            return (Criteria) this;
        }

        public Criteria andTaskIdNotEqualTo(Integer value) {
            addCriterion("task_id <>", value, "taskId");
            return (Criteria) this;
        }

        public Criteria andTaskIdGreaterThan(Integer value) {
            addCriterion("task_id >", value, "taskId");
            return (Criteria) this;
        }

        public Criteria andTaskIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("task_id >=", value, "taskId");
            return (Criteria) this;
        }

        public Criteria andTaskIdLessThan(Integer value) {
            addCriterion("task_id <", value, "taskId");
            return (Criteria) this;
        }

        public Criteria andTaskIdLessThanOrEqualTo(Integer value) {
            addCriterion("task_id <=", value, "taskId");
            return (Criteria) this;
        }

        public Criteria andTaskIdIn(List<Integer> values) {
            addCriterion("task_id in", values, "taskId");
            return (Criteria) this;
        }

        public Criteria andTaskIdNotIn(List<Integer> values) {
            addCriterion("task_id not in", values, "taskId");
            return (Criteria) this;
        }

        public Criteria andTaskIdBetween(Integer value1, Integer value2) {
            addCriterion("task_id between", value1, value2, "taskId");
            return (Criteria) this;
        }

        public Criteria andTaskIdNotBetween(Integer value1, Integer value2) {
            addCriterion("task_id not between", value1, value2, "taskId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeIsNull() {
            addCriterion("reimburse_type is null");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeIsNotNull() {
            addCriterion("reimburse_type is not null");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeEqualTo(Integer value) {
            addCriterion("reimburse_type =", value, "reimburseType");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeNotEqualTo(Integer value) {
            addCriterion("reimburse_type <>", value, "reimburseType");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeGreaterThan(Integer value) {
            addCriterion("reimburse_type >", value, "reimburseType");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("reimburse_type >=", value, "reimburseType");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeLessThan(Integer value) {
            addCriterion("reimburse_type <", value, "reimburseType");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeLessThanOrEqualTo(Integer value) {
            addCriterion("reimburse_type <=", value, "reimburseType");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeIn(List<Integer> values) {
            addCriterion("reimburse_type in", values, "reimburseType");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeNotIn(List<Integer> values) {
            addCriterion("reimburse_type not in", values, "reimburseType");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeBetween(Integer value1, Integer value2) {
            addCriterion("reimburse_type between", value1, value2, "reimburseType");
            return (Criteria) this;
        }

        public Criteria andReimburseTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("reimburse_type not between", value1, value2, "reimburseType");
            return (Criteria) this;
        }

        public Criteria andReimburseDateIsNull() {
            addCriterion("reimburse_date is null");
            return (Criteria) this;
        }

        public Criteria andReimburseDateIsNotNull() {
            addCriterion("reimburse_date is not null");
            return (Criteria) this;
        }

        public Criteria andReimburseDateEqualTo(Date value) {
            addCriterion("reimburse_date =", value, "reimburseDate");
            return (Criteria) this;
        }

        public Criteria andReimburseDateNotEqualTo(Date value) {
            addCriterion("reimburse_date <>", value, "reimburseDate");
            return (Criteria) this;
        }

        public Criteria andReimburseDateGreaterThan(Date value) {
            addCriterion("reimburse_date >", value, "reimburseDate");
            return (Criteria) this;
        }

        public Criteria andReimburseDateGreaterThanOrEqualTo(Date value) {
            addCriterion("reimburse_date >=", value, "reimburseDate");
            return (Criteria) this;
        }

        public Criteria andReimburseDateLessThan(Date value) {
            addCriterion("reimburse_date <", value, "reimburseDate");
            return (Criteria) this;
        }

        public Criteria andReimburseDateLessThanOrEqualTo(Date value) {
            addCriterion("reimburse_date <=", value, "reimburseDate");
            return (Criteria) this;
        }

        public Criteria andReimburseDateIn(List<Date> values) {
            addCriterion("reimburse_date in", values, "reimburseDate");
            return (Criteria) this;
        }

        public Criteria andReimburseDateNotIn(List<Date> values) {
            addCriterion("reimburse_date not in", values, "reimburseDate");
            return (Criteria) this;
        }

        public Criteria andReimburseDateBetween(Date value1, Date value2) {
            addCriterion("reimburse_date between", value1, value2, "reimburseDate");
            return (Criteria) this;
        }

        public Criteria andReimburseDateNotBetween(Date value1, Date value2) {
            addCriterion("reimburse_date not between", value1, value2, "reimburseDate");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyIsNull() {
            addCriterion("reimburse_money is null");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyIsNotNull() {
            addCriterion("reimburse_money is not null");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyEqualTo(Float value) {
            addCriterion("reimburse_money =", value, "reimburseMoney");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyNotEqualTo(Float value) {
            addCriterion("reimburse_money <>", value, "reimburseMoney");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyGreaterThan(Float value) {
            addCriterion("reimburse_money >", value, "reimburseMoney");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyGreaterThanOrEqualTo(Float value) {
            addCriterion("reimburse_money >=", value, "reimburseMoney");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyLessThan(Float value) {
            addCriterion("reimburse_money <", value, "reimburseMoney");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyLessThanOrEqualTo(Float value) {
            addCriterion("reimburse_money <=", value, "reimburseMoney");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyIn(List<Float> values) {
            addCriterion("reimburse_money in", values, "reimburseMoney");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyNotIn(List<Float> values) {
            addCriterion("reimburse_money not in", values, "reimburseMoney");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyBetween(Float value1, Float value2) {
            addCriterion("reimburse_money between", value1, value2, "reimburseMoney");
            return (Criteria) this;
        }

        public Criteria andReimburseMoneyNotBetween(Float value1, Float value2) {
            addCriterion("reimburse_money not between", value1, value2, "reimburseMoney");
            return (Criteria) this;
        }

        public Criteria andRmarkIsNull() {
            addCriterion("rmark is null");
            return (Criteria) this;
        }

        public Criteria andRmarkIsNotNull() {
            addCriterion("rmark is not null");
            return (Criteria) this;
        }

        public Criteria andRmarkEqualTo(String value) {
            addCriterion("rmark =", value, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkNotEqualTo(String value) {
            addCriterion("rmark <>", value, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkGreaterThan(String value) {
            addCriterion("rmark >", value, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkGreaterThanOrEqualTo(String value) {
            addCriterion("rmark >=", value, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkLessThan(String value) {
            addCriterion("rmark <", value, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkLessThanOrEqualTo(String value) {
            addCriterion("rmark <=", value, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkLike(String value) {
            addCriterion("rmark like", value, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkNotLike(String value) {
            addCriterion("rmark not like", value, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkIn(List<String> values) {
            addCriterion("rmark in", values, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkNotIn(List<String> values) {
            addCriterion("rmark not in", values, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkBetween(String value1, String value2) {
            addCriterion("rmark between", value1, value2, "rmark");
            return (Criteria) this;
        }

        public Criteria andRmarkNotBetween(String value1, String value2) {
            addCriterion("rmark not between", value1, value2, "rmark");
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

        public Criteria andHandedIsNull() {
            addCriterion("handed is null");
            return (Criteria) this;
        }

        public Criteria andHandedIsNotNull() {
            addCriterion("handed is not null");
            return (Criteria) this;
        }

        public Criteria andHandedEqualTo(Integer value) {
            addCriterion("handed =", value, "handed");
            return (Criteria) this;
        }

        public Criteria andHandedNotEqualTo(Integer value) {
            addCriterion("handed <>", value, "handed");
            return (Criteria) this;
        }

        public Criteria andHandedGreaterThan(Integer value) {
            addCriterion("handed >", value, "handed");
            return (Criteria) this;
        }

        public Criteria andHandedGreaterThanOrEqualTo(Integer value) {
            addCriterion("handed >=", value, "handed");
            return (Criteria) this;
        }

        public Criteria andHandedLessThan(Integer value) {
            addCriterion("handed <", value, "handed");
            return (Criteria) this;
        }

        public Criteria andHandedLessThanOrEqualTo(Integer value) {
            addCriterion("handed <=", value, "handed");
            return (Criteria) this;
        }

        public Criteria andHandedIn(List<Integer> values) {
            addCriterion("handed in", values, "handed");
            return (Criteria) this;
        }

        public Criteria andHandedNotIn(List<Integer> values) {
            addCriterion("handed not in", values, "handed");
            return (Criteria) this;
        }

        public Criteria andHandedBetween(Integer value1, Integer value2) {
            addCriterion("handed between", value1, value2, "handed");
            return (Criteria) this;
        }

        public Criteria andHandedNotBetween(Integer value1, Integer value2) {
            addCriterion("handed not between", value1, value2, "handed");
            return (Criteria) this;
        }

        public Criteria andHandedDateIsNull() {
            addCriterion("handed_date is null");
            return (Criteria) this;
        }

        public Criteria andHandedDateIsNotNull() {
            addCriterion("handed_date is not null");
            return (Criteria) this;
        }

        public Criteria andHandedDateEqualTo(Date value) {
            addCriterion("handed_date =", value, "handedDate");
            return (Criteria) this;
        }

        public Criteria andHandedDateNotEqualTo(Date value) {
            addCriterion("handed_date <>", value, "handedDate");
            return (Criteria) this;
        }

        public Criteria andHandedDateGreaterThan(Date value) {
            addCriterion("handed_date >", value, "handedDate");
            return (Criteria) this;
        }

        public Criteria andHandedDateGreaterThanOrEqualTo(Date value) {
            addCriterion("handed_date >=", value, "handedDate");
            return (Criteria) this;
        }

        public Criteria andHandedDateLessThan(Date value) {
            addCriterion("handed_date <", value, "handedDate");
            return (Criteria) this;
        }

        public Criteria andHandedDateLessThanOrEqualTo(Date value) {
            addCriterion("handed_date <=", value, "handedDate");
            return (Criteria) this;
        }

        public Criteria andHandedDateIn(List<Date> values) {
            addCriterion("handed_date in", values, "handedDate");
            return (Criteria) this;
        }

        public Criteria andHandedDateNotIn(List<Date> values) {
            addCriterion("handed_date not in", values, "handedDate");
            return (Criteria) this;
        }

        public Criteria andHandedDateBetween(Date value1, Date value2) {
            addCriterion("handed_date between", value1, value2, "handedDate");
            return (Criteria) this;
        }

        public Criteria andHandedDateNotBetween(Date value1, Date value2) {
            addCriterion("handed_date not between", value1, value2, "handedDate");
            return (Criteria) this;
        }

        public Criteria andTicketNumIsNull() {
            addCriterion("ticket_num is null");
            return (Criteria) this;
        }

        public Criteria andTicketNumIsNotNull() {
            addCriterion("ticket_num is not null");
            return (Criteria) this;
        }

        public Criteria andTicketNumEqualTo(String value) {
            addCriterion("ticket_num =", value, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumNotEqualTo(String value) {
            addCriterion("ticket_num <>", value, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumGreaterThan(String value) {
            addCriterion("ticket_num >", value, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumGreaterThanOrEqualTo(String value) {
            addCriterion("ticket_num >=", value, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumLessThan(String value) {
            addCriterion("ticket_num <", value, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumLessThanOrEqualTo(String value) {
            addCriterion("ticket_num <=", value, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumLike(String value) {
            addCriterion("ticket_num like", value, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumNotLike(String value) {
            addCriterion("ticket_num not like", value, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumIn(List<String> values) {
            addCriterion("ticket_num in", values, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumNotIn(List<String> values) {
            addCriterion("ticket_num not in", values, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumBetween(String value1, String value2) {
            addCriterion("ticket_num between", value1, value2, "ticketNum");
            return (Criteria) this;
        }

        public Criteria andTicketNumNotBetween(String value1, String value2) {
            addCriterion("ticket_num not between", value1, value2, "ticketNum");
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