<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
    int pageNo    = Integer.parseInt(request.getParameter("pageNo") == null ? "1" : request.getParameter("pageNo"));
    int pageSize  = Integer.parseInt(request.getParameter("pageSize") == null ?  "10" : request.getParameter("pageSize"));
    int totalCnt  = Integer.parseInt(request.getParameter("totalCnt") == null ? "0" : request.getParameter("totalCnt"));
    String pageId = request.getParameter("pageId") == null ? "listPaging" : request.getParameter("pageId");
    //页数
    int pageCnt = 0;

    if (totalCnt % pageSize == 0)
        pageCnt = totalCnt / pageSize;
    else
        pageCnt = totalCnt / pageSize + 1;

    //上一页
    int prePageNo = 0;
    if (pageNo > 1)
        prePageNo = pageNo - 1;

    //下一页
    int nextPageNo = 0;
    if (pageNo < pageCnt)
        nextPageNo = pageNo + 1;

    //首页
    int fstPage = 1;
    //末页
    int endPage = pageCnt;

%>
<script type="text/javascript">

    var pageId = '<%=pageId%>';
    function paging(pageNo){
        var pageSize = parseInt($("#"+pageId+" select[name=pageSize]").val());
        if(pageId == 'modalPaging'){
            goModalPaging(pageNo,pageSize);
        }else{
            goPage(pageNo,pageSize);
        }
    }
</script>
<div class="col-md-12" id="<%=pageId%>">
    <div class="text-left pull-left col-md-4">
        <div class="col-xs-3">
            <select class="form-control input-sm" name="pageSize"  onchange="paging(1);">
                                        <option <%if(pageSize ==10 ) {%>selected <%}%> >10</option>
                                        <option <%if(pageSize ==15 ) {%>selected <%}%> >15</option>
                                        <option <%if(pageSize ==20 ) {%>selected <%}%> >20</option>
                                        <option <%if(pageSize ==30 ) {%>selected <%}%> >30</option>
                                        <option <%if(pageSize ==50 ) {%>selected <%}%> >50</option>
             </select>
        </div>
        <div>共<%=totalCnt%>条记录</div>
    </div>
    <!--pagleft end-->
    <div class="pull-right col-md-8">
            <ul class="pagination">
                <% if(pageNo == 1){%>
                <li>
                    <a href="javascript:void(0)" aria-label="Previous">
                        <span aria-hidden="true">首页</span>
                    </a>
                </li>
                <% }else{%>
                <li>
                    <a href="javascript:paging('1')" aria-label="Previous">
                        <span aria-hidden="true">首页</span>
                    </a>
                </li>
                <%}%>

                <% if(pageNo >1){%>
                <li>
                    <a href="javascript:paging('<%=prePageNo%>');" aria-label="Previous">
                        <span aria-hidden="true">上一页</span>
                    </a>
                </li>
                <% }else{%>
                <li>
                    <a href="javascript:void(0)" >
                        <span aria-hidden="true">上一页</span>
                    </a>
                </li>
                <%}%>
                <li>
                            <%
                                for(int p = 1; p <= pageCnt ; p++ ){
                            %>
                       <li>
                           <a href="javascript:paging('<%=p%>');" >
                               <span aria-hidden="true"><%=p%></span>
                           </a>
                       </li>
                            <%
                                }
                            %>
                </li>
                <% if(pageNo < pageCnt){%>
                <li>
                    <a href="javascript:paging('<%=nextPageNo%>');" >
                        <span aria-hidden="true">下一页</span>
                    </a>
                </li>
                <% }else{%>
                <li>
                    <a href="javascript:void(0)" >
                        <span aria-hidden="true">下一页</span>
                    </a>
                </li>
                <%}%>

                <% if(pageNo == pageCnt){%>
                <li>
                    <a href="javascript:void(0)" >
                        <span aria-hidden="true">末页</span>
                    </a>
                </li>
                <% }else{%>
                <li>
                    <a href="javascript:paging('<%=pageCnt%>');" >
                        <span aria-hidden="true">末页</span>
                    </a>
                </li>
                <%}%>
            </ul>
    </div>
    <!--pagright end-->
</div>