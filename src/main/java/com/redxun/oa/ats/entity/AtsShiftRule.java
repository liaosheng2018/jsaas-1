



package com.redxun.oa.ats.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

import com.redxun.core.annotion.table.FieldDefine;
import com.redxun.core.annotion.table.TableDefine;
import com.redxun.core.entity.BaseTenantEntity;

/**
 * <pre>
 *  
 * 描述：轮班规则实体类定义
 * 作者：mansan
 * 邮箱: keitch@redxun.com
 * 日期:2018-03-26 16:50:46
 * 版权：广州红迅软件
 * </pre>
 */
@Entity
@Table(name = "ats_shift_rule")
@TableDefine(title = "轮班规则")
public class AtsShiftRule extends BaseTenantEntity {

	@FieldDefine(title = "主键")
	@Id
	@Column(name = "ID")
	protected String id;

	@FieldDefine(title = "编码")
	@Column(name = "CODE")
	protected String code; 
	@FieldDefine(title = "名称")
	@Column(name = "NAME")
	protected String name; 
	@FieldDefine(title = "状态")
	@Column(name = "STATUS")
	protected Short status; 
	@FieldDefine(title = "所属组织")
	@Column(name = "ORG_ID")
	protected String orgId; 
	@FieldDefine(title = "描述")
	@Column(name = "MEMO")
	protected String memo; 
	
	@FieldDefine(title = "轮班规则明细")
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "atsShiftRule", fetch = FetchType.LAZY)
	protected List<AtsShiftRuleDetail> atsShiftRuleDetails = new ArrayList<AtsShiftRuleDetail>();
	
	//组织名
	protected String orgName;
	
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	
	public String getOrgName() {
		return orgName;
	}
	
	public AtsShiftRule() {
	}

	/**
	 * Default Key Fields Constructor for class Orders
	 */
	public AtsShiftRule(String in_id) {
		this.setPkId(in_id);
	}
	
	@Override
	public String getIdentifyLabel() {
		return this.id;
	}

	@Override
	public Serializable getPkId() {
		return this.id;
	}

	@Override
	public void setPkId(Serializable pkId) {
		this.id = (String) pkId;
	}
	
	public String getId() {
		return this.id;
	}

	
	public void setId(String aValue) {
		this.id = aValue;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
	/**
	 * 返回 编码
	 * @return
	 */
	public String getCode() {
		return this.code;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * 返回 名称
	 * @return
	 */
	public String getName() {
		return this.name;
	}
	public void setStatus(Short status) {
		this.status = status;
	}
	
	/**
	 * 返回 状态
	 * @return
	 */
	public Short getStatus() {
		return this.status;
	}
	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}
	
	/**
	 * 返回 所属组织
	 * @return
	 */
	public String getOrgId() {
		return this.orgId;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	
	/**
	 * 返回 描述
	 * @return
	 */
	public String getMemo() {
		return this.memo;
	}
	
	public List<AtsShiftRuleDetail> getAtsShiftRuleDetails() {
		return atsShiftRuleDetails;
	}

	public void setAtsShiftRuleDetails(List<AtsShiftRuleDetail> in_atsShiftRuleDetail) {
		this.atsShiftRuleDetails = in_atsShiftRuleDetail;
	}
	
	
		

	/**
	 * @see java.lang.Object#equals(Object)
	 */
	@Override
	public boolean equals(Object object) {
		if (!(object instanceof AtsShiftRule)) {
			return false;
		}
		AtsShiftRule rhs = (AtsShiftRule) object;
		return new EqualsBuilder()
		.append(this.id, rhs.id) 
		.append(this.code, rhs.code) 
		.append(this.name, rhs.name) 
		.append(this.status, rhs.status) 
		.append(this.orgId, rhs.orgId) 
		.append(this.memo, rhs.memo) 
		.isEquals();
	}

	/**
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		return new HashCodeBuilder(-82280557, -700257973)
		.append(this.id) 
		.append(this.code) 
		.append(this.name) 
		.append(this.status) 
		.append(this.orgId) 
		.append(this.memo) 
		.toHashCode();
	}

	/**
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return new ToStringBuilder(this)
		.append("id", this.id) 
				.append("code", this.code) 
				.append("name", this.name) 
				.append("status", this.status) 
				.append("orgId", this.orgId) 
				.append("memo", this.memo) 
												.toString();
	}

}



