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

  Table：content_types <!-- コンテンツタイプ(シリーズなら:1 or 単発なら:0)テーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | content_type_id | bigint(20) | | PRIMARY | | YES | | |
  | genre_name | TINYINT | | | | | | YES |
