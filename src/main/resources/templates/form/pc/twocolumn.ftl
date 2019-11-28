<#setting number_format="#">
<div class="form" id="form_main" relationtype="main">
    <table cellspacing="1" cellpadding="0" class="table-detail column-four ${color}">
        <caption>
            ${ent.comment}
        </caption>
        <tbody>
        	<#assign index=0>
        	<#list ent.sysBoAttrs as field>
	        	<#if index % 2 == 0>
	            <tr>
	            </#if>
	                <td>${field.comment}</td>
	                <td><@fieldCtrl field=field inTable=false /></td>
	            	<#if index % 2 == 0 && !field_has_next>
					<td></td>
					<td></td>
					</#if>
				<#if index % 2 == 1 || !field_has_next>
				</tr>
				</#if>
				<#assign index=index+1>
			</#list>
        </tbody>
    </table>
</div>