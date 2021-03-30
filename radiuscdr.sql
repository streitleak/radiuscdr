CREATE DATABASE env('DB_DATABASE');
CREATE USER env('DB_USERNAME')@'localhost';
SET PASSWORD FOR env('DB_USERNAME')@'localhost' = PASSWORD(env('DB_PASSWORD'));

# The server can read any table in SQL
GRANT ALL ON env('DB_DATABASE').* TO env('DB_USERNAME')@'localhost';
USE env('DB_DATABASE');

CREATE TABLE IF NOT EXISTS freecdr (
radacctid bigint(21) NOT NULL auto_increment,
acctsessionid varchar(64) NOT NULL default '',
acctuniqueid varchar(32) NOT NULL default '',
nasipaddress varchar(15) NOT NULL default '',
netfwdflowinrealm varchar(255) not null default '',
netfwdflowinsrcaddr varchar(15) not null default '',
netfwdflowinsrcport int(11) not null default 0,
netfwdflowindstaddr varchar(15) not null default '',
netfwdflowindstport int(11) not null default 0,
netfwdflowoutrealm varchar(255) not null default '',
netfwdflowoutsrcaddr varchar(15) not null default '',
netfwdflowoutsrcport int(11) not null default 0,
netfwdflowoutdstaddr varchar(15) not null default '',
netfwdflowoutdstport int(11) not null default 0,
netbwdflowinrealm varchar(255) not null default '',
netbwdflowinsrcaddr varchar(15) not null default '',
netbwdflowinsrcport int(11) not null default 0,
netbwdflowindstaddr varchar(15) not null default '',
netbwdflowindstport int(11) not null default 0,
netbwdflowoutrealm varchar(255) not null default '',
netbwdflowoutsrcaddr varchar(15) not null default '',
netbwdflowoutsrcport int(11) not null default 0,
netbwdflowoutdstaddr varchar(15) not null default '',
netbwdflowoutdstport int(11) not null default 0,
netfwdflowmediatype varchar(255) not null default '',
netfwdflowptime int(11) not null default 0,
netfwdoctets int(11) not null default 0,
netfwdpackets int(11) not null default 0,
netfwdrtcppacketslost int(11) not null default 0,
netfwdrtcpavgjitter int(11) not null default 0,
netfwdrtpavglatency int(11) not null default 0,
netfwdrtcpmaxjitter int(11) not null default 0,
netfwdrtpmaxlatency int(11) not null default 0,
netfwdrtppacketslost int(11) not null default 0,
netfwdrtpavgjitter int(11) not null default 0,
netfwdrtpmaxjitter int(11) not null default 0,
netbwdmaxpacketoutage int(11) not null default 0,
netbwdoctets int(11) not null default 0,
netbwdpackets int(11) not null default 0,
netbwdrtcppacketslost int(11) not null default 0,
netbwdrtcpavgjitter int(11) not null default 0,
netbwdrtpavglatency int(11) not null default 0,
netbwdrtcpmaxjitter int(11) not null default 0,
netbwdrtpmaxlatency int(11) not null default 0,
netbwdrtppacketslost int(11) not null default 0,
netbwdrtpavgjitter int(11) not null default 0,
netbwdrtpmaxjitter int(11) not null default 0,
netrtppacketsdiscarded int(11) not null default 0,
netsessioningresscallid int(11) not null default 65535,
netsessionegresscallid int(11) not null default 65535,
netsessiongenericid int(11) not null default 0,
netroutingtablenumber int(11) not null default 0,
netingresssignalinggroup int(11) not null default 0,
netegresssignalinggroup int(11) not null default 0,
netprimaryroutingnumber varchar(255) not null default '',
netegressfinalroutingnum varchar(255) not null default '',
netingresschannelnumber int(11) not null default 0,
netegresschannelnumber int(11) not null default 0,
netcalltype int(11) not null default 0,
netcallorigin int(11) not null default 0,
netcallingnumber varchar(255) not null default '',
netcallednumber varchar(255) not null default '',
netcallingname varchar(255) not null default '',
netdisconnectcause int(11) not null default 0,
netabortcause int(11) not null default 0,
netingresschannelid varchar(255) not null default '',
netegresschannelid varchar(255) not null default '',
netcallpriority varchar(255) not null default '',
netrecordingtype varchar(255) not null default '',
netrecordingleg varchar(255) not null default '',
netcallnumbertype varchar(255) not null default 1,
netcallplan varchar(255) not null default 1,
netoriginalcallednumber varchar(255) not null default '',
netoriginalcalledtype varchar(255) not null default 1,
netoriginalcalledplan varchar(255) not null default 1,
netcalledname varchar(255) not null default '',
netnamespace varchar(255) not null default 3,
netprecedence varchar(255) not null default 1,
netpresentation varchar(255) not null default 1,
netscreening varchar(255) not null default 1,
nettransfercapability varchar(255) not null default 1,
nettransfermode varchar(255) not null default 1,
nettransferrate varchar(255) not null default 1,
netuserrate varchar(255) not null default 1,
netsetuptime varchar(255) not null default '',
netalerttime varchar(255) not null default '',
netconnecttime varchar(255) not null default '',
netdisconnecttime varchar(255) not null default '',
netinboundseizetime varchar(255) not null default '',
netoutboundseizetime varchar(255) not null default '',
netcallduration int(11) not null default 0,
netpostdialdelay int(11) not null default 0,
netdisconnectinitiator int(11) not null default 0,
netpassertedid varchar(255) not null default '',
netsipdiversion varchar(255) not null default '',
netingresslocaladdr varchar(255) not null default '',
netingressremoteaddr varchar(255) not null default '',
netegresslocaladdr varchar(255) not null default '',
netegressremoteaddr varchar(255) not null default '',
netingressnetinterfaceid int(11) not null default 0,
netegressnetinterfaceid int(11) not null default 0,
netrefercalltransferid varchar(255) not null default '',
netsessionforkedcallid varchar(255) not null default '',
netredirectnumber varchar(255) not null default '',
netredirectipaddress varchar(255) not null default '',
netsessioningressrealm varchar(255) not null default '',
netsessionegressrealm varchar(255) not null default '',
netingresssignalingportnum int(11) not null default 0,
netegresssignalingportnum int(11) not null default 0,
nettransporttype int(11) not null default 0,
netppreferredid varchar(255) not null default '',
netingsignalingremportnum int(11) not null default 0,
netegsignalingremportnum int(11) not null default 0,
netingresssipcallid varchar(255) not null default '',
netegresssipcallid varchar(255) not null default '',
netfirmwareversion varchar(255) not null default '',
netlocaltimezone varchar(255) not null default '',
netgwid varchar(255) not null default '',
nettimeandday varchar(255) not null default '',
netlogtime varchar(255) not null default '',
netsiprecordingrtprxipaddr varchar(255) not null default '',
netsiprecordingrtptxipaddr varchar(255) not null default '',
netrxpacketsent int(11) not null default 0,
netrxoctetsent int(11) not null default 0,
netrxpacketlost int(11) not null default 0,
nettxpacketsent int(11) not null default 0,
nettxoctetsent int(11) not null default 0,
nettxpacketlost int(11) not null default 0,
PRIMARY KEY (radacctid),
UNIQUE KEY acctuniqueid (acctuniqueid),
KEY acctsessionid (acctsessionid)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS radacct (
  radacctid bigint(21) NOT NULL auto_increment,
  acctsessionid varchar(64) NOT NULL default '',
  acctuniqueid varchar(32) NOT NULL default '',
  username varchar(64) NOT NULL default '',
  realm varchar(64) default '',
  nasipaddress varchar(15) NOT NULL default '',
  nasportid varchar(32) default NULL,
  nasporttype varchar(32) default NULL,
  acctstarttime datetime NULL default NULL,
  acctupdatetime datetime NULL default NULL,
  acctstoptime datetime NULL default NULL,
  acctinterval int(12) default NULL,
  acctsessiontime int(12) unsigned default NULL,
  acctauthentic varchar(32) default NULL,
  connectinfo_start varchar(50) default NULL,
  connectinfo_stop varchar(50) default NULL,
  acctinputoctets bigint(20) default NULL,
  acctoutputoctets bigint(20) default NULL,
  calledstationid varchar(50) NOT NULL default '',
  callingstationid varchar(50) NOT NULL default '',
  acctterminatecause varchar(32) NOT NULL default '',
  servicetype varchar(32) default NULL,
  framedprotocol varchar(32) default NULL,
  framedipaddress varchar(15) NOT NULL default '',
  framedipv6address varchar(45) NOT NULL default '',
  framedipv6prefix varchar(45) NOT NULL default '',
  framedinterfaceid varchar(44) NOT NULL default '',
  delegatedipv6prefix varchar(45) NOT NULL default '',
  PRIMARY KEY (radacctid),
  UNIQUE KEY acctuniqueid (acctuniqueid),
  KEY username (username),
  KEY framedipaddress (framedipaddress),
  KEY framedipv6address (framedipv6address),
  KEY framedipv6prefix (framedipv6prefix),
  KEY framedinterfaceid (framedinterfaceid),
  KEY delegatedipv6prefix (delegatedipv6prefix),
  KEY acctsessionid (acctsessionid),
  KEY acctsessiontime (acctsessiontime),
  KEY acctstarttime (acctstarttime),
  KEY acctinterval (acctinterval),
  KEY acctstoptime (acctstoptime),
  KEY nasipaddress (nasipaddress)
) ENGINE = INNODB;

#
# Table structure for table 'radcheck'
#

CREATE TABLE IF NOT EXISTS radcheck (
  id int(11) unsigned NOT NULL auto_increment,
  username varchar(64) NOT NULL default '',
  attribute varchar(64)  NOT NULL default '',
  op char(2) NOT NULL DEFAULT '==',
  value varchar(253) NOT NULL default '',
  PRIMARY KEY  (id),
  KEY username (username(32))
);

#
# Table structure for table 'radgroupcheck'
#

CREATE TABLE IF NOT EXISTS radgroupcheck (
  id int(11) unsigned NOT NULL auto_increment,
  groupname varchar(64) NOT NULL default '',
  attribute varchar(64)  NOT NULL default '',
  op char(2) NOT NULL DEFAULT '==',
  value varchar(253)  NOT NULL default '',
  PRIMARY KEY  (id),
  KEY groupname (groupname(32))
);

#
# Table structure for table 'radgroupreply'
#

CREATE TABLE IF NOT EXISTS radgroupreply (
  id int(11) unsigned NOT NULL auto_increment,
  groupname varchar(64) NOT NULL default '',
  attribute varchar(64)  NOT NULL default '',
  op char(2) NOT NULL DEFAULT '=',
  value varchar(253)  NOT NULL default '',
  PRIMARY KEY  (id),
  KEY groupname (groupname(32))
);

#
# Table structure for table 'radreply'
#

CREATE TABLE IF NOT EXISTS radreply (
  id int(11) unsigned NOT NULL auto_increment,
  username varchar(64) NOT NULL default '',
  attribute varchar(64) NOT NULL default '',
  op char(2) NOT NULL DEFAULT '=',
  value varchar(253) NOT NULL default '',
  PRIMARY KEY  (id),
  KEY username (username(32))
);


#
# Table structure for table 'radusergroup'
#

CREATE TABLE IF NOT EXISTS radusergroup (
  id int(11) unsigned NOT NULL auto_increment,
  username varchar(64) NOT NULL default '',
  groupname varchar(64) NOT NULL default '',
  priority int(11) NOT NULL default '1',
  PRIMARY KEY  (id),
  KEY username (username(32))
);

#
# Table structure for table 'radpostauth'
#
# Note: MySQL versions since 5.6.4 support fractional precision timestamps
#        which we use here. Replace the authdate definition with the following
#        if your software is too old:
#
#   authdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
#
CREATE TABLE IF NOT EXISTS radpostauth (
  id int(11) NOT NULL auto_increment,
  username varchar(64) NOT NULL default '',
  pass varchar(64) NOT NULL default '',
  reply varchar(32) NOT NULL default '',
  authdate timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY  (id),
  KEY username (username(32))
) ENGINE = INNODB;

#
# Table structure for table 'nas'
#
CREATE TABLE IF NOT EXISTS nas (
  id int(10) NOT NULL auto_increment,
  nasname varchar(128) NOT NULL,
  shortname varchar(32),
  type varchar(30) DEFAULT 'other',
  ports int(5),
  secret varchar(60) DEFAULT 'secret' NOT NULL,
  server varchar(64),
  community varchar(50),
  description varchar(200) DEFAULT 'RADIUS Client',
  PRIMARY KEY (id),
  KEY nasname (nasname)
);