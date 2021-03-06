<%-- 
    Document   : [INS_PORTAL_PERMISSION_TYPE]列表页
    Created on : 2018-06-05 18:30:18
    Author     : Tom_y
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<title>[INS_PORTAL_PERMISSION_TYPE]列表管理</title>
<%@include file="/commons/list.jsp"%>
</head>
<body>
	 <div class="mini-toolbar" >
         <table style="width:100%;">
             <tr>
                 <td style="width:100%;">
                     <a class="mini-button" iconCls="icon-create" plain="true" onclick="add()">增加</a>
                     <a class="mini-button" iconCls="icon-edit" plain="true" onclick="edit()">编辑</a>
                     <a class="mini-button" iconCls="icon-remove" plain="true" onclick="remove()">删除</a>
                     <a class="mini-button" iconCls="icon-search" plain="true" onclick="searchFrm()">查询</a>
                     <a class="mini-button" iconCls="icon-cancel" plain="true" onclick="clearForm()">清空查询</a>
                 </td>
             </tr>
              <tr>
                  <td class="search-form" >
                     <ul>
						<li><span>LAYOUT_ID_:</span><input class="mini-textbox" name="Q_LAYOUT_ID__S_LK"></li>
						<li><span>TYPE_:</span><input class="mini-textbox" name="Q_TYPE__S_LK"></li>
						<li><span>OWNER_ID_:</span><input class="mini-textbox" name="Q_OWNER_ID__S_LK"></li>
						<li><span>编辑还是查看:</span><input class="mini-textbox" name="Q_TYPE2__S_LK"></li>
					</ul>
                  </td>
              </tr>
         </table>
     </div>
	
	<div class="mini-fit" style="height: 100%;">
		<div id="datagrid1" class="mini-datagrid" style="width: 100%; height: 100%;" allowResize="false"
			url="${ctxPath}/filetray/authority/insPortalPermissionType/listData.do" idField="id"
			multiSelect="true" showColumnsMenu="true" sizeList="[5,10,20,50,100,200,500]" pageSize="20" allowAlternating="true" pagerButtons="#pagerButtons">
			<div property="columns">
				<div type="checkcolumn" width="20"></div>
				<div name="action" cellCls="actionIcons" width="50" headerAlign="center" align="center" renderer="onActionRenderer" cellStyle="padding:0;">#</div>
				<div field="layoutId"  sortField="LAYOUT_ID_"  width="120" headerAlign="center" allowSort="true">LAYOUT_ID_</div>
				<div field="type"  sortField="TYPE_"  width="120" headerAlign="center" allowSort="true">TYPE_</div>
				<div field="ownerId"  sortField="OWNER_ID_"  width="120" headerAlign="center" allowSort="true">OWNER_ID_</div>
				<div field="type2"  sortField="TYPE2_"  width="120" headerAlign="center" allowSort="true">编辑还是查看</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		//行功能按钮
		function onActionRenderer(e) {
			var record = e.record;
			var pkId = record.pkId;
			var s = '<span class="icon-detail" title="明细" onclick="detailRow(\'' + pkId + '\')"></span>'
					+'<span class="icon-edit" title="编辑" onclick="editRow(\'' + pkId + '\',true)"></span>'
					+'<span class="icon-remove" title="删除" onclick="delRow(\'' + pkId + '\')"></span>';
			return s;
		}
	</script>
	<redxun:gridScript gridId="datagrid1" entityName="com.airdrop.filetray.authority.entity.InsPortalPermissionType" winHeight="450"
		winWidth="700" entityTitle="INS_PORTAL_PERMISSION_TYPE" baseUrl="filetray/authority/insPortalPermissionType" />
</body>
</html>