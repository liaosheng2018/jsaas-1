<%-- 
    Document   : 内部短消息收件箱明细页,暂时没用
    Created on : 2015-3-28, 17:42:57
    Author     : csx
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="rx" uri="http://www.redxun.cn/detailFun"%>
<%@taglib prefix="rxc" uri="http://www.redxun.cn/commonFun"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>[InfInbox]明细</title>
<%@include file="/commons/dynamic.jspf"%>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="${ctxPath}/styles/icons.css" rel="stylesheet" type="text/css" />
<script src="${ctxPath}/scripts/boot.js" type="text/javascript"></script>
<script src="${ctxPath}/scripts/share.js" type="text/javascript"></script>
<link href="${ctxPath}/styles/form.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<rx:toolbar toolbarId="toolbar1" />
	<div id="form1" class="form-outer ">
		<div style="padding: 5px;">
			<table style="width: 100%" class="table-detail" cellpadding="0"
				cellspacing="1">
				<caption>内部短消息收件箱基本信息</caption>
				<tr>
					<th>消息ID：</th>
					<td>${infInbox.msgId}</td>
				</tr>
				<tr>
					<th>接收人ID：</th>
					<td>${infInbox.recUserId}</td>
				</tr>
				<tr>
					<th>接收人名称：</th>
					<td>${infInbox.fullname}</td>
				</tr>
				<tr>
					<th>用户组ID 0代表全公司：</th>
					<td>${infInbox.groupId}</td>
				</tr>
				<tr>
					<th>组名：</th>
					<td>${infInbox.groupName}</td>
				</tr>
				<tr>
					<th>是否阅读：</th>
					<td>${infInbox.isRead}</td>
				</tr>
				<tr>
					<th>是否删除：</th>
					<td>${infInbox.isDel}</td>
				</tr>
			</table>
		</div>
		<div style="padding: 5px">
			<table class="table-detail" cellpadding="0" cellspacing="1">
				<caption>更新信息</caption>
				<tr>
					<th>创建人</th>
					<td><rxc:userLabel userId="${infInbox.createBy}" /></td>
					<th>创建时间</th>
					<td><fmt:formatDate value="${infInbox.createTime}"
							pattern="yyyy-MM-dd HH:mm" /></td>
				</tr>
				<tr>
					<th>更新人</th>
					<td><rxc:userLabel userId="${infInbox.updateBy}" /></td>
					<th>更新时间</th>
					<td><fmt:formatDate value="${infInbox.updateTime}"
							pattern="yyyy-MM-dd HH:mm" /></td>
				</tr>
			</table>
		</div>
	</div>
	<rx:detailScript baseUrl="oa/info/infInbox" formId="form1" />
</body>
</html>