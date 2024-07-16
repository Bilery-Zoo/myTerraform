resource "aws_db_parameter_group" "aws-rds-mysql-parameter-group-general-v80" {
  description = "parameter group general v80"
  family      = "mysql8.0"
  name        = "aws-rds-parameter-group-general-v80"
  tags        = {}
  parameter {
    apply_method = "immediate"
    name         = "binlog_checksum"
    value        = "NONE"
  }
  parameter {
    apply_method = "immediate"
    name         = "binlog_format"
    value        = "ROW"
  }
  parameter {
    apply_method = "immediate"
    name         = "binlog_transaction_dependency_tracking"
    value        = "WRITESET"
  }
  parameter {
    apply_method = "immediate"
    name         = "collation_connection"
    value        = "utf8mb4_general_ci"
  }
  parameter {
    apply_method = "immediate"
    name         = "collation_server"
    value        = "utf8mb4_general_ci"
  }
  parameter {
    apply_method = "immediate"
    name         = "event_scheduler"
    value        = "OFF"
  }
  parameter {
    apply_method = "immediate"
    name         = "init_connect"
    value        = "SET default_collation_for_utf8mb4=utf8mb4_general_ci; SET NAMES utf8mb4;"
  }
  parameter {
    apply_method = "immediate"
    name         = "log_bin_trust_function_creators"
    value        = "1"
  }
  parameter {
    apply_method = "immediate"
    name         = "log_output"
    value        = "FILE"
  }
  parameter {
    apply_method = "immediate"
    name         = "log_timestamps"
    value        = "SYSTEM"
  }
  parameter {
    apply_method = "immediate"
    name         = "long_query_time"
    value        = "1"
  }
  parameter {
    apply_method = "immediate"
    name         = "slow_query_log"
    value        = "1"
  }
  parameter {
    apply_method = "immediate"
    name         = "sql_mode"
    value        = "STRICT_TRANS_TABLES"
  }
  parameter {
    apply_method = "immediate"
    name         = "time_zone"
    value        = var.mysql_time_zone
  }
  parameter {
    apply_method = "pending-reboot"
    name         = "enforce_gtid_consistency"
    value        = "ON"
  }
  parameter {
    apply_method = "pending-reboot"
    name         = "gtid-mode"
    value        = "ON"
  }
  parameter {
    apply_method = "pending-reboot"
    name         = "lower_case_table_names"
    value        = "1"
  }
  parameter {
    apply_method = "pending-reboot"
    name         = "skip_name_resolve"
    value        = "1"
  }
  parameter {
    apply_method = "pending-reboot"
    name         = "slave_type_conversions"
    value        = "ALL_NON_LOSSY"
  }
}
