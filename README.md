# インターネットTV DB設計 構築 SQL

## テーブル設計

  Table：channels <!-- チャンネルテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | channel_id | bigint(20) | | PRIMARY | | YES | | |
  | channel_name | varchar(30) | | | | | | YES |

  Table：genres <!-- ジャンルテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | genre_id | bigint(20) | | PRIMARY | | YES | | |
  | genre_name | varchar(30) | | | | | | YES |

  Table：programs <!-- 番組テーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | program_id  | bigint(20) | | PRIMARY | | YES | | |
  | title  | varchar(100) | | | | | | YES |
  | description   | varchar(1000) | | | | | | YES |
  | series_or_single   | TINYINT | | | | | | YES |

  Table：genre_registries <!-- ジャンル登録テーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | genre_registr_id  | bigint(20) | | PRIMARY | | YES | | |
  | program_id  | bigint(20) | | | | | Table：programs.program_id | YES |
  | genre_id  | int | | | | | Table：genres.genre_id | YES |
