-- �Ƴ��ڵ������ֶΡ������Ƿ�nat���ֶ�
ALTER TABLE `ss_node`
	ADD COLUMN `is_nat` TINYINT NOT NULL DEFAULT '0' COMMENT '�Ƿ�ΪNAT����0-��1-��' AFTER `is_subscribe`,
	DROP COLUMN `icmp`,
	DROP COLUMN `tcp`,
	DROP COLUMN `udp`;

ALTER TABLE `ss_node`
	CHANGE COLUMN `traffic` `traffic` INT(11) NOT NULL DEFAULT '1000' COMMENT 'ÿ�¿�����������λG' AFTER `bandwidth`;
