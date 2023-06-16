CREATE TABLE IF NOT EXISTS `build_table`(
   `build_id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   `pipeline_id` INT UNSIGNED NOT NULL,
   `commit_sha` VARCHAR(40) NOT NULL,
   `case_name` VARCHAR(40) NOT NULL,
   `build_status` INT NOT NULL,
   `toolchain` VARCHAR(20) NOT NULL,
   `target` VARCHAR(20) NOT NULL,
   `build_time` DOUBLE,
   `runtime_id` INT UNSIGNED,
   `date` DATE,
   CONSTRAINT fk_build_runtime FOREIGN KEY(`runtime_id`) REFERENCES runtime_table(`runtime_id`)
);

CREATE TABLE IF NOT EXISTS `runtime_table`(
   `runtime_id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
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
   `device_id` INT,
   `driver_version` VARCHAR(40),
   `date` DATE
);