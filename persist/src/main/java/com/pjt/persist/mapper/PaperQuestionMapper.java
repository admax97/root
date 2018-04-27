package com.pjt.persist.mapper;

import com.pjt.persist.model.PaperQuestion;
import com.pjt.persist.model.PaperQuestionExample;
import com.pjt.persist.model.Question;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;
@Repository
public interface PaperQuestionMapper {
    int countByExample(PaperQuestionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PaperQuestion record);

    int insertSelective(PaperQuestion record);

    List<PaperQuestion> selectByExample(PaperQuestionExample example);

    PaperQuestion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PaperQuestion record);

    int updateByPrimaryKey(PaperQuestion record);

    /**
     * 随机试题
     * @param questionType 试题类型
     * @param count 随机试题数量
     * @return 试题集合
     */
    @Select("SELECT * FROM `question` WHERE question_type = #{questionType} AND library_type = #{libraryType} ORDER BY id * RAND() LIMIT #{count}")
    List<Question> randomQuestion(@Param("questionType") String questionType, @Param("count") Integer count,
                                  @Param("libraryType") String libraryType);

    /**
     * 插入试题与试卷关系记录
     * @param question  试题编号
     * @param pager 试卷编号
     * @param score 此题分数
     * @param number 题号
     * @return
     */
    @Insert("INSERT INTO paper_question (question_id, paper_id, question_number, score) VALUES(#{question}, #{pager}, #{number}, #{score})")
    Integer add(@Param("question") Integer question, @Param("pager") Integer pager, @Param("score") Integer score, @Param("number") Integer number);

    /**
     *  查询某个试卷的单选题集合
     * @param paperID 试卷编号
     * @param questionType 题型
     * @return
     */
    @Select("SELECT q.title, q.answer_a answerA, q.answer_b answerB, q.answer_c answerC,answer_d answerD, pq.question_number,pq.score score " +
            "FROM question q, paper_question pq WHERE q.id = pq.question_id AND pq.paper_id = #{id} AND q.question_type = #{questionType} " +
            "ORDER BY pq.question_number")
    List<Question> selectSignle(@Param("id") Integer paperID, @Param("questionType") String questionType);

    /**
     *  查询某个试卷的简答题题集合
     * @param paperID 试卷编号
     * @param questionType 题型
     * @return
     */
    @Select("SELECT q.title, pq.score " +
            "FROM question q, paper_question pq WHERE q.id = pq.question_id AND pq.paper_id = #{id} AND q.question_type = #{questionType} " +
            "ORDER BY pq.question_number")
    List<Question> selectShort( @Param("id")Integer paperID, @Param("questionType") String questionType);

    /**
     * 根据试卷编号批量删除试卷和试题关系记录
     * @param ids 试卷编号
     */
    void batchDeleteByPaperID( List<Serializable> ids);

}