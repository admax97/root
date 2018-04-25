package com.pjt.service;

import com.pjt.common.utils.Page;
import com.pjt.persist.custom.mapper.LibraryMoreMapper;
import com.pjt.persist.model.Library;
import com.pjt.persist.model.LibraryExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LibraryService {
    @Autowired
    private LibraryMoreMapper libraryMoreMapper;
    public int countByExample(LibraryExample example){
        return libraryMoreMapper.countByExample(example);
    }

    public int deleteByPrimaryKey(Integer id){
        return libraryMoreMapper.deleteByPrimaryKey(id);
    }

    public int insert(Library record){
        return libraryMoreMapper.insert(record);
    }

    public int insertSelective(Library record){
        return libraryMoreMapper.insertSelective(record);
    }

    public List<Library> selectByExample(LibraryExample example){
        return libraryMoreMapper.selectByExample(example);
    }

    public Library selectByPrimaryKey(Integer id){
        return libraryMoreMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Library record){
        return libraryMoreMapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Library record){
        return libraryMoreMapper.updateByPrimaryKeySelective(record);
    }
    public Page selectList(Page page){
        page.setTotalCount(libraryMoreMapper.getLibraryListCount(page));
        page.setResult(libraryMoreMapper.getLibraryList(page));
        System.out.println("pagesize："+page.getPageSize());
        return page;
    }

    public String getTitlebyType(String libraryType){
        return libraryMoreMapper.getTitlebyType(libraryType);
    }

}
