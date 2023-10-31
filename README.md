# インターネットTV DB設計 構築 SQL

## テーブル設計

  テーブル：channels <!-- チャンネルテーブル -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | channel_id | bigint(20) | | PRIMARY | | YES | | |
  | channel_name | varchar(100) | | | | | | YES |
