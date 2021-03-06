<%-- 
    Document   : [CalGrant]明细页
    Created on : 2017-1-6, 17:42:57
    Author     : 陈茂昌
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="rx" uri="http://www.redxun.cn/detailFun" %>
<%@taglib prefix="rxc" uri="http://www.redxun.cn/commonFun"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>[CalGrant]明细</title>
        <%@include file="/commons/dynamic.jspf" %>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> 
        <link href="${ctxPath}/styles/icons.css" rel="stylesheet" type="text/css" />
        <script src="${ctxPath}/scripts/boot.js" type="text/javascript"></script>
        <script src="${ctxPath}/scripts/share.js" type="text/javascript"></script>
        <link href="${ctxPath}/styles/form.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <rx:toolbar toolbarId="toolbar1"/>
        <div id="form1" class="form-outer">
             <div style="padding:5px;">
                    <table style="width:100%" class="table-detail" cellpadding="0" cellspacing="1">
                    	<caption>[CalGrant]基本信息</caption>
                        																														<tr>
						 		<th>
						 			设定ID：
						 		</th>
	                            <td>
	                                ${calGrant.settingId}
	                            </td>
						</tr>
																																				<tr>
						 		<th>
						 			分配类型 USER/GROUP：
						 		</th>
	                            <td>
	                                ${calGrant.grantType}
	                            </td>
						</tr>
																																				<tr>
						 		<th>
						 			被分配者   GROUPID/USERID：
						 		</th>
	                            <td>
	                                ${calGrant.belongWho}
	                            </td>
						</tr>
																																																																																																																																										                     </table>
                 </div>
	            <div style="padding:5px">
					 <table class="table-detail" cellpadding="0" cellspacing="1">
					 	<caption>更新信息</caption>
						<tr>
							<th>创建人</th>
							<td><rxc:userLabel userId="${calGrant.createBy}"/></td>
							<th>创建时间</th>
							<td><fmt:formatDate value="${calGrant.createTime}" pattern="yyyy-MM-dd HH:mm" /></td>
						</tr>
						<tr>
							<th>更新人</th>
							<td><rxc:userLabel userId="${calGrant.updateBy}"/></td>
							<th>更新时间</th>
							<td><fmt:formatDate value="${calGrant.updateTime}" pattern="yyyy-MM-dd HH:mm" /></td>
						</tr>
					</table>
	        	</div>
        	</div>
        <rx:detailScript baseUrl="oa/calendar/calGrant" 
        entityName="com.redxun.oa.calendar.entity.CalGrant"
        formId="form1"/>
    </body>
</html>