########### DROP TABLE css;

CREATE TABLE  css (
  id NUMBER NOT NULL,
  rid varchar2(32) NOT NULL,
  cid varchar2(64) NOT NULL,
  v varchar2(780) NOT NULL,
  PRIMARY KEY  (id));

CREATE SEQUENCE seq_css_id;

# Oracle creates b-tree indices by default (I think)
CREATE INDEX css_rowkey ON css(rid,cid);
# Can't create an index on a substring of a field from what I can see.
# Something else may be intended with cid_locate_i by Ian. He can correct me.
CREATE INDEX css_cid_locate_i ON css(v,cid);

############ DROP TABLE au_css;

CREATE TABLE  au_css (
  id NUMBER NOT NULL,
  rid varchar2(32) NOT NULL,
  cid varchar2(64) NOT NULL,
  v varchar2(780) NOT NULL,
  PRIMARY KEY  (id));

CREATE SEQUENCE seq_au_css_id;

CREATE INDEX au_css_rowkey ON au_css(rid,cid);
CREATE INDEX au_css_cid_locate_i ON au_css(v,cid);

######### DROP TABLE cn_css;

CREATE TABLE  cn_css (
  id NUMBER NOT NULL,
  rid varchar2(32) NOT NULL,
  cid varchar2(64) NOT NULL,
  v varchar2(780) NOT NULL,
  PRIMARY KEY  (id))
;

CREATE SEQUENCE seq_cn_css_id;

CREATE INDEX cn_css_rowkey ON cn_css(rid,cid);
CREATE INDEX cn_css_cid_locate_i ON cn_css(v,cid);

########### DROP TABLE ac_css;

CREATE TABLE  ac_css (
  id NUMBER NOT NULL,
  rid varchar2(32) NOT NULL,
  cid varchar2(64) NOT NULL,
  v varchar2(780) NOT NULL,
  PRIMARY KEY  (id))
;

CREATE SEQUENCE seq_ac_css_id;

CREATE INDEX ac_css_rowkey ON ac_css(rid,cid);
CREATE INDEX ac_css_cid_locate_i ON ac_css(v,cid);

########### DROP TABLE lk_css;

CREATE TABLE  lk_css (
  id NUMBER NOT NULL,
  rid varchar2(32) NOT NULL,
  cid varchar2(64) NOT NULL,
  v varchar2(780) NOT NULL,
  PRIMARY KEY  (id))
;

CREATE SEQUENCE seq_ac_css_id;

CREATE INDEX lk_css_rowkey ON lk_css(rid,cid);
CREATE INDEX lk_css_cid_locate_i ON lk_css(v,cid);

########### DROP TABLE css_b;

CREATE TABLE  css_b (
  rid varchar2(32) NOT NULL,
  b blob,
  PRIMARY KEY (rid) )
;

########## DROP TABLE cn_css_b;

CREATE TABLE  cn_css_b (
  rid varchar2(32) NOT NULL,
  b blob,
  PRIMARY KEY (rid) )
;

########### DROP TABLE au_css_b;

CREATE TABLE  au_css_b (
  rid varchar2(32) NOT NULL,
  b blob,
  PRIMARY KEY (rid) )
;

########### DROP TABLE ac_css_b;

CREATE TABLE  ac_css_b (
  rid varchar2(32) NOT NULL,
  b blob,
  PRIMARY KEY (rid) )
;


########### DROP TABLE lk_css_b;

CREATE TABLE  lk_css_b (
  rid varchar2(32) NOT NULL,
  b blob,
  PRIMARY KEY (rid) )
;


