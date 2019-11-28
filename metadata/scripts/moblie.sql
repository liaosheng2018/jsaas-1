CREATE TABLE BPM_MOBILE_FORM  (
   ID_                  VARCHAR2(50),
   VIEW_ID_             VARCHAR2(50),
   NAME_                VARCHAR2(50),
   ALIAS_               VARCHAR2(50),
   FORM_HTML            CLOB,
   TENANT_ID_           VARCHAR2(50),
   TREE_ID_             VARCHAR2(50),
   CREATE_BY_           VARCHAR2(50),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(50),
   UPDATE_TIME_         DATE
);

COMMENT ON TABLE BPM_MOBILE_FORM IS
'�ֻ��������ñ�';

COMMENT ON COLUMN BPM_MOBILE_FORM.ID_ IS
'����';

COMMENT ON COLUMN BPM_MOBILE_FORM.VIEW_ID_ IS
'��������ID';

COMMENT ON COLUMN BPM_MOBILE_FORM.NAME_ IS
'����';

COMMENT ON COLUMN BPM_MOBILE_FORM.ALIAS_ IS
'����';

COMMENT ON COLUMN BPM_MOBILE_FORM.FORM_HTML IS
'����ģ��';

COMMENT ON COLUMN BPM_MOBILE_FORM.TENANT_ID_ IS
'�⻧ID';

COMMENT ON COLUMN BPM_MOBILE_FORM.TREE_ID_ IS
'��������ID';

COMMENT ON COLUMN BPM_MOBILE_FORM.CREATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_MOBILE_FORM.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_MOBILE_FORM.UPDATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_MOBILE_FORM.UPDATE_TIME_ IS
'����ʱ��';



CREATE TABLE BPM_FORM_TEMPLATE  (
   ID_                  VARCHAR2(50)                    NOT NULL,
   NAME_                VARCHAR2(50),
   ALIAS_               VARCHAR2(50),
   TEMPLATE_            CLOB,
   TYPE_                VARCHAR2(50),
   INIT_                SMALLINT,
   TENANT_ID_           VARCHAR2(50),
   CREATE_BY_           VARCHAR2(50),
   CREATE_TIME_         DATE,
   UPDATE_BY_           VARCHAR2(50),
   UPDATE_TIME_         DATE,
   CATEGORY_            VARCHAR2(50),
   CONSTRAINT PK_BPM_FORM_TEMPLATE PRIMARY KEY (ID_)
);

COMMENT ON TABLE BPM_FORM_TEMPLATE IS
'����ģ��';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.ID_ IS
'����';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.NAME_ IS
'ģ������';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.ALIAS_ IS
'����';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.TEMPLATE_ IS
'ģ��';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.TYPE_ IS
'ģ������ (pc,mobile)';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.INIT_ IS
'��ʼ���ӵ�(1��,0��)';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.TENANT_ID_ IS
'�⻧ID';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.CREATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.CREATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.UPDATE_BY_ IS
'������';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.UPDATE_TIME_ IS
'����ʱ��';

COMMENT ON COLUMN BPM_FORM_TEMPLATE.CATEGORY_ IS
'���';

alter table ACT_RU_TASK add ENABLE_MOBILE_ INT;

COMMENT ON COLUMN ACT_RU_TASK.ENABLE_MOBILE_ IS
'�Ƿ�֧���ֻ�����';


alter table bpm_node_jump add ENABLE_MOBILE_ INT;


COMMENT ON COLUMN bpm_node_jump.ENABLE_MOBILE_ IS
'�Ƿ�֧���ֻ�����';

alter table bpm_sol_fv add MOBILE_ALIAS_ varchar(50);
COMMENT ON COLUMN bpm_sol_fv.MOBILE_ALIAS_ IS '�ֻ���������';

alter table bpm_sol_fv add MOBILE_NAME_ varchar(50);
COMMENT ON COLUMN bpm_sol_fv.MOBILE_NAME_ IS '�ֻ���������';