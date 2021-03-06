<%-- 
    Document   : [KdDocDir]列表页
    Created on : 2015-3-21, 0:11:48
    Author     : csx
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="redxun" uri="http://www.redxun.cn/gridFun" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>[KdDocDir]列表管理</title>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />\
        <%@include file="/commons/dynamic.jspf" %>
        <link href="${ctxPath}/styles/commons.css" rel="stylesheet" type="text/css" />
        <link href="${ctxPath}/styles/list.css" rel="stylesheet" type="text/css" />
        <link href="${ctxPath}/styles/icons.css" rel="stylesheet" type="text/css" />
        <script src="${ctxPath}/scripts/boot.js" type="text/javascript"></script> 
        <script src="${ctxPath}/scripts/share.js" type="text/javascript"></script>
        <script src="${ctxPath}/scripts/jquery/plugins/jQuery.download.js" type="text/javascript"></script>
    </head>
    <body>
        
        <redxun:toolbar entityName="com.redxun.kms.core.entity.KdDocDir"/>
        
        <div class="mini-fit" style="height:100%;">
            <div id="datagrid1" class="mini-datagrid" style="width:100%;height:100%;" allowResize="false"
                 url="${ctxPath}/kms/core/kdDocDir/listData.do"  idField="dirId" multiSelect="true" showColumnsMenu="true"
                 sizeList="[5,10,20,50,100,200,500]" pageSize="20" allowAlternating="true" pagerButtons="#pagerButtons">
                <div property="columns">
                    <div type="checkcolumn" width="20"></div>
                    <div name="action" cellCls="actionIcons" width="22" headerAlign="center" align="center" renderer="onActionRenderer" cellStyle="padding:0;">#</div>        
	                 											 																		<div field="docId" width="120" headerAlign="center" allowSort="true">文档ID</div>
																	 																		<div field="level" width="120" headerAlign="center" allowSort="true">标题等级
            1级标题
            2组标题</div>
																	 																		<div field="subject" width="120" headerAlign="center" allowSort="true">标题</div>
																	 																		<div field="anchor" width="120" headerAlign="center" allowSort="true">标题连接锚点</div>
																	 																		<div field="parentId" width="120" headerAlign="center" allowSort="true">上级目录ID</div>
																	 																							 																							 																							 																							 																							                  </div>
            </div>
        </div>
        
        <script type="text/javascript">
        	//行功能按钮
	        function onActionRenderer(e) {
	            var record = e.record;
	            var pkId = record.pkId;
	            var s = '<span  title="明细" onclick="detailRow(\'' + pkId + '\')"></span>'
	                    + ' <span  title="编辑" onclick="editRow(\'' + pkId + '\')"></span>'
	                    + ' <span  title="删除" onclick="delRow(\'' + pkId + '\')"></span>';
	            return s;
	        }
        </script>
        <script src="${ctxPath}/scripts/common/list.js" type="text/javascript"></script>
        <redxun:gridScript gridId="datagrid1" entityName="com.redxun.kms.core.entity.KdDocDir" 
        	winHeight="450" winWidth="700"
          	entityTitle="[KdDocDir]" baseUrl="kms/core/kdDocDir"/>
    </body>
</html>