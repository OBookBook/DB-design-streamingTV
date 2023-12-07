# インターネットTV (DB設計)

## チャンネルテーブル

  Table：channels <!-- チャンネルテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | id | bigint(20) | | PRIMARY | | YES | | |
  | name | varchar(30) | | | | | | YES |

## ジャンルテーブル

  Table：genres <!-- ジャンルテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | id | bigint(20) | | PRIMARY | | YES | | |
  | name | varchar(30) | | | | | | YES |

## 番組テーブル

  Table：programs <!-- 番組テーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | id | bigint(20) | | PRIMARY | | YES | | |
  | title | varchar(100) | | | | | | YES |
  | description | TEXT | | | | | | |
  | series_or_single | tinyint | | | | | | |

## 番組ジャンルテーブル

  Table：program_genres  <!-- 番組ジャンルテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | id | bigint(20) | | PRIMARY | | YES | | |
  | program_id | bigint(20) | | | | | Table：programs.id | |
  | genre_id | int | | | | | Table：genres.genre_id | |

## シーズンテーブル

  Table：seasons <!-- シーズンテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | id | bigint(20) | | PRIMARY | | YES | | |
  | program_id | bigint(20) | | | | | Table：programs.id | |
  | season_number | bigint(20) | | | | |  | |

## エピソードテーブル

  Table：episodes <!-- エピソードテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | id | bigint(20) | | PRIMARY | | YES | | |
  | season_id | bigint(20) | | | | | Table：seasons.id | |
  | episode_number | varchar(100) | | | | |  | |
  | title | varchar(100) | | | | |  | |
  | description | TEXT | | | | |  | |
  | duration | time | | | | |  | |
  | release_date | date | | | | |  | |
  | view_count | bigint(20) | | | | |  | |

## 放映テーブル

  Table：broadcasts <!-- 放映テーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | id | bigint(20) | | PRIMARY | | YES | | |
  | channel_id | bigint(20) | | | | | Table：channels.id | |
  | episode_id | bigint(20) | | | | | Table：episodes.id | |
  | start_time | DATETIME | | | | |  | |
  | end_time | DATETIME | | | | |  | |
  | view_count | bigint(20) | | | | |  | |
