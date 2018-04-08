<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	function loadListData2(event, p) {
		var e = event || window.event || arguments.callee.caller.arguments[0];
		if (e && (e.keyCode ==8))return;
		if (e && e.keyCode == 13) {			
			loadListData(p);
			return;
		}
		if (e && (e.keyCode < 47 || (e.keyCode<96 && e.keyCode > 57) || e.keyCode > 106)){
			p=1;
		}
			var totalPage = $("#totalPages").text();
			if (parseInt(p) > parseInt(totalPage)) {
				p = totalPage;
			}
			if(p<=0){
				p = 1;
			}		
		$("#fillPage").val(p);
		$("#fillPage").focus();
	}
	function selectOnChange(a) {
		$("#commonPageSize").val(a.value);
		loadListData(1);
		$("#selectPageSize").val($("#commonPageSize").val());
	}
	function loadListDataGo() {
		var p = $("#fillPage").val();
		loadListData(p);
		$("#fillPage").val(p);
		$("#fillPage").focus();
	}
</script>
<style>

.form-control{padding:4px 6px!important;}

</style>
<input type="hidden" id="commonPageSize" value="10">
<textarea id="table_pages" style="display: none;">
<div class="table-responsive pag-left text-left">
		<ul class="pagination">
			{if page.noDate >0}
			{if page.pre != -1}
				<!-- <li><a href="javascript:loadListData('1');">‹</a></li> -->
				<li><a href="javascript:loadListData('\${page.pre}');">«</a></li>
			{else}
				<!-- <li class="disabled"><a href="javascript:void(0);">‹</a></li> -->
				<li class="disabled"><a href="javascript:void(0)">«</a></li>
			{/if} 
			{for p in page.pageNo}
			{if p == page.current}
				 <li class="active"><a href="javascript:void(0);">\${p}</a></li>
			{else}
				 <li><a href="javascript:loadListData('\${p}');">\${p}</a></li>
			{/if}
			{/for}
		   	{if page.next != -1}
		    <li><a href="javascript:loadListData('\${page.next}');">»</a></li>
		     <!-- <li class="pag-down"><a href="javascript:loadListData('\${page.totalPage}');">›</a></li> -->
		    {else}
		      <li class="disabled"><a href="javascript:void(0)">»</a></li>
		      <!-- <li class="disabled"><a href="javascript:void(0);">›</a></li> -->
		   	{/if}
		{/if}
		</ul>		
	</div>	
	<div class="pag-right text-right">
	<div style="float: right" class="pag-num text-center">
			第 <input class="bord" type="text" placeholder="1" value="\${page.current}" id="fillPage"
				onkeyup='loadListData2(event,this.value)'> 页<a style="padding-top: 10px !important"
				href="javascript:loadListDataGo();"> 跳转</a>   共<span id='totalPages'>\${page.totalPage}</span>页
				<select style="margin-left: 10px; width: 55px!important; float:right" class="form-control" onchange="selectOnChange(this);" id="selectPageSize">
				{for item in page.sizeArr}
				{if page.pageSize == item}
					<option selected>\${page.pageSize}</option>
				{else}
					<option>\${item}</option>			
				{/if}
				{/for}

			</select>
		   	</div>
		<div >
			
		</div>
		</div>
 </textarea>