<%-- 
    Document   : 系统树节点编辑页
    Created on : 2015-3-21, 0:11:48
    Author     : csx
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>系统树节点编辑</title>
<%@include file="/commons/edit.jsp"%>
</head>
<body>
	<div class="topToolBar">
		<div>
		<a class="mini-button" onclick="onSave">保存</a>
<!-- 		<a class="mini-button btn-red"  onclick="onClose">关闭</a> -->
		</div>
	</div>
	<div class="mini-fit">
	<div id="p1" class="form-container">
		<form id="form1" method="post">
				<input id="pkId" name="treeId" class="mini-hidden" value="${sysTree.treeId}" />
				<input name="parentId" value="${sysTree.parentId}" class="mini-hidden"/>
				<input name="catKey" value="${param['catKey']}" class="mini-hidden" />
				<table class="table-detail column-two" cellspacing="1" cellpadding="0">
					<tr>
						<td>
							分类名称 <span class="star">*</span>
						</td>
						<td><input name="name" value="${sysTree.name}" class="mini-textbox" vtype="maxLength:128" required="true" emptyText="请输入名称" style="width:80%"/></td>
					</tr>
					<tr>
						<td>
							分类Key <span class="star">*</span>
						</td>
						<td><input name="key" value="${sysTree.key}" class="mini-textbox" vtype="maxLength:64" required="true" emptyText="请输入分类Key" style="width:80%"/></td>
					</tr>
					<tr>
						<td>
							序　　号 <span class="star">*</span>
						</td>
						<td><input name="sn" value="${sysTree.sn}" class="mini-spinner" vtype="maxLength:10" required="true" minValue="1" maxValue="10000" emptyText="请输入序号" style="width:120px"/></td>
					</tr>
				</table>

		</form>
	</div>

	</div>
	
	
	
	<script type="text/javascript">
		addBody();
		mini.parse();
		var form=new mini.Form('form1');
		function onSave(){
			form.validate();
			if(!form.isValid()){
				return ;
			}
			_SubmitJson({
				url:__rootPath+'/sys/core/sysTree/saveKmsType.do',
				method:'POST',
				data:form.getData(),
				success:function(repText){
					CloseWindow('ok');
				}
			});
		}
		
		function onClose(){
			CloseWindow();
		}
	</script>
</body>
</html>