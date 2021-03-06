CREATE TABLE ${tableName} (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '编码',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `version` INT NOT NULL DEFAULT '0' COMMENT '版本号',
  `is_enabled` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '是否有效0:无效 1:有效',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '备注',
  `created_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `created_by` INT NOT NULL DEFAULT '0' COMMENT '创建人',
  `created_by_name` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '创建人姓名',
  `updated_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updated_by` INT NOT NULL DEFAULT '0' COMMENT '更新人',
  `updated_by_name` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '更新人姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='';

ALTER TABLE ${tableName}
 ADD COLUMN  `version` INT NOT NULL DEFAULT '0' COMMENT '版本号',
 ADD COLUMN  `is_enabled` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '是否有效0:无效 1:有效',
 ADD COLUMN `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '备注',
 ADD COLUMN  `created_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 ADD COLUMN  `created_by` INT NOT NULL DEFAULT '0' COMMENT '创建人',
 ADD COLUMN  `created_by_name` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '创建人姓名',
 ADD COLUMN  `updated_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
 ADD COLUMN  `updated_by` INT NOT NULL DEFAULT '0' COMMENT '更新人',
 ADD COLUMN  `updated_by_name` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '更新人姓名';