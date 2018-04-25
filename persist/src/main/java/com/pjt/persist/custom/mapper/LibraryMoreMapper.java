package com.pjt.persist.custom.mapper;

import com.pjt.common.utils.Page;
import com.pjt.persist.mapper.LibraryMapper;
import com.pjt.persist.model.Library;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LibraryMoreMapper  extends LibraryMapper{
    Integer getLibraryListCount(Page page);
    List<Library> getLibraryList(Page page);
    String getTitlebyType(String libraryType);
}
