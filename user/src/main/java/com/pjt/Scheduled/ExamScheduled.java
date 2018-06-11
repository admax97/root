package com.pjt.Scheduled;

import com.pjt.persist.model.StuExamInfo;
import com.pjt.persist.model.StuExamInfoExample;
import com.pjt.service.StuExamInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.beans.Transient;
import java.util.Date;
import java.util.List;

@Component
public class ExamScheduled {
    @Autowired
    private StuExamInfoService stuExamInfoService;

    @Transactional
    @Scheduled(cron = "0/5 * * * * ? ") // 间隔5秒执行
    public void test(){
        StuExamInfoExample stuExamInfoExample = new StuExamInfoExample();
        List<StuExamInfo> stuExamInfos = stuExamInfoService.selectByExample(stuExamInfoExample);
        for (StuExamInfo stuExamInfo: stuExamInfos) {
            StuExamInfo s = new StuExamInfo();
            long time = stuExamInfo.getCreateTime().getTime() + stuExamInfo.getTime() * 60 *1000;
            if (stuExamInfo.getExamTime() == null && time >= System.currentTimeMillis()) {
                s.setExamTime(new Date());
            }
            stuExamInfoService.updateByPrimaryKeySelective(s);
        }
        System.out.println("haha...哈哈.。。。");
    }
}
