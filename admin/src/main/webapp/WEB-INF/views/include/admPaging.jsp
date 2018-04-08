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
//        scrolltop(pageNo);
    }

    function scrolltop(top){
        var hei=25*top-25;
        $("#"+pageId+" #xab").scrollTop(hei);
    }

    function scrollFn(){
        $("#"+pageId+" #xab").toggle();scrolltop(parseInt($("#"+pageId+"#xiye").html()));

    }

</script>
<!DOCTYPE html>
<div class="row">
<div class="pag" id="<%=pageId%>">
    <div class="pag-left text-left pull-left ml-14">
        <span class="bor">
                  	     		 	<select name="pageSize"  onchange="paging(1);">
                                        <option <%if(pageSize ==10 ) {%>selected <%}%> >10</option>
                                        <option <%if(pageSize ==15 ) {%>selected <%}%> >15</option>
                                        <option <%if(pageSize ==20 ) {%>selected <%}%> >20</option>
                                        <option <%if(pageSize ==30 ) {%>selected <%}%> >30</option>
                                        <option <%if(pageSize ==50 ) {%>selected <%}%> >50</option>
                                    </select>
                  	     		 </span>
        <span>共<%=totalCnt%>条记录</span>
    </div>
    <!--pagleft end-->
    <div class="pull-right mr-14">
        <div class="fenye">
            <ul>
                <% if(pageNo == 1){%>
                <li class="bg-blue" id="first">首页</li>
                <% }else{%>
                <li class="bg-blue" onclick="paging('1');" id="first">首页</li>
                <%}%>

                <% if(pageNo >1){%>
                <li class="bg-blue" onclick="paging('<%=prePageNo%>');"id="top" >上一页</li>
                <% }else{%>
                <li class="bg-blue" id="top" >上一页</li>
                <%}%>

                <li class="xifenye" id="xifenye" onclick="scrollFn();">
                    <a id="xiye"><%=pageNo%></a>/<a id="mo"><%=pageCnt%></a>

                    <div class="xab" id="xab" style="display:none">
                        <ul id="uljia">
                            <%
                                for(int p = 1; p <= pageCnt ; p++ ){
                            %>

                            <li  onclick="paging('<%=p%>');"><%=p%></li>

                            <%
                                }
                            %>
                        </ul>
                    </div>
                </li>
                <% if(pageNo < pageCnt){%>
                <li class="bg-blue" onclick="paging('<%=nextPageNo%>');" id="down" >下一页</li>
                <% }else{%>
                <li class="bg-blue"  id="down" >下一页</li>
                <%}%>

                <% if(pageNo == pageCnt){%>
                <li class="bg-blue"  id="last">末页</li>
                <% }else{%>
                <li class="bg-blue" onclick="paging('<%=pageCnt%>');" id="last">末页</li>
                <%}%>

            </ul>
        </div>
    </div>
    <!--pagright end-->
</div>
</div>
</html>