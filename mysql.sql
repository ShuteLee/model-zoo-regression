/*
   build_status 0: SUCESS 1:FAIL
*/
CREATE TABLE IF NOT EXISTS `build_table`(
   `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   `pipeline_id` INT UNSIGNED NOT NULL,
   `commit_sha` VARCHAR(40) NOT NULL,
   `case_name` VARCHAR(40) NOT NULL,
   `build_status` INT NOT NULL,
   `toolchain` VARCHAR(20) NOT NULL,
   `target` VARCHAR(20) NOT NULL,
   `build_time` DOUBLE,
   `runtime_id` INT,
   `date` DATE
);

/*
   runtime_status 0: SUCESS 1:FAIL
   prec: int8/int16/fp32
   prec_performance: JSON string
*/
CREATE TABLE IF NOT EXISTS `runtime_table`(
   `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   `pipeline_id` INT UNSIGNED,
   `build_id` INT,
   `model_id` INT,
   `runtime_status` INT NOT NULL,
   `target` VARCHAR(20),
   `name` VARCHAR(40),
   `dyn` INT,
   `opt` INT,
   `prec` VARCHAR(20),
   `shape` VARCHAR(40),
   `gops` DOUBLE,
   `time` DOUBLE,
   `mac_utiliz` DOUBLE,
   `ddr_utiliz` DOUBLE,
   `cpu_usage` DOUBLE,
   `prec_performance` TEXT,
   `device_id` INT,
   `driver_version` VARCHAR(40),
   `date` DATE
);

/*
   file_name: file name in model-zoo
   case: which modelzoo case belonging to
*/
CREATE TABLE `model`(
   `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   `file_name` VARCHAR(40),
   `case` VARCHAR(40)
   `front_framework` VARCHAR(20),
   `md5` VARCHAR(40),
   `size` INT
)

/*
   model_zoo_path: case path in model-zoo
*/
CREATE TABLE `case`(
   `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   `model_zoo_path` VARCHAR(80)
)