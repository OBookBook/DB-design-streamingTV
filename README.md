# インターネットTV (DB設計 構築 SQL)

## ステップ1 テーブル設計

### チャンネルテーブル

  Table：channels <!-- チャンネルテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | channel_id | bigint(20) | | PRIMARY | | YES | | |
  | channel_name | varchar(30) | | | | | | YES |

### ジャンルテーブル

  Table：genres <!-- ジャンルテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | genre_id | bigint(20) | | PRIMARY | | YES | | |
  | genre_name | varchar(30) | | | | | | YES |

### 番組テーブル

  Table：programs <!-- 番組テーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | program_id | bigint(20) | | PRIMARY | | YES | | |
  | title | varchar(100) | | | | | | YES |
  | description | TEXT | | | | | | |
  | series_or_single | tinyint | | | | | | |

### ジャンル登録テーブル

  Table：genre_registries <!-- ジャンル登録テーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | genre_registr_id | bigint(20) | | PRIMARY | | YES | | |
  | program_id | bigint(20) | | | | | Table：programs.program_id | |
  | genre_id | int | | | | | Table：genres.genre_id | |

### シーズンテーブル

  Table：seasons <!-- シーズンテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | season_id | bigint(20) | | PRIMARY | | YES | | |
  | program_id | bigint(20) | | | | | Table：programs.program_id | |
  | season_number | bigint(20) | | | | |  | |

### エピソードテーブル

  Table：episodes <!-- エピソードテーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | episode_id | bigint(20) | | PRIMARY | | YES | | |
  | program_id | bigint(20) | | | | | Table：programs.program_id | |
  | season_id | bigint(20) | | | | | Table：seasons.season_id | |
  | episode_number | varchar(100) | | | | |  | |
  | title | varchar(100) | | | | |  | |
  | description | TEXT | | | | |  | |
  | duration | time | | | | |  | |
  | release_date | date | | | | |  | |
  | view_count | bigint(20) | | | | |  | |

### 放映テーブル

  Table：broadcasts <!-- 放映テーブル  -->
  | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
  | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
  | broadcast_id | bigint(20) | | PRIMARY | | YES | | |
  | channel_id | bigint(20) | | | | | Table：channels.channel_id | |
  | program_id | bigint(20) | | | | | Table：programs.program_id | |
  | season_id | bigint(20) | | | | | Table：seasons.season_id | |
  | episode_id | bigint(20) | | | | | Table：episodes.episode_id | |
  | start_time | DATETIME | | | | |  | |
  | end_time | DATETIME | | | | |  | |
  | view_count | bigint(20) | | | | |  | |

## ステップ2 構築

### DBを構築する

  1. Dockerを起動し、DBコンテナを作成するコマンドです。
  ```shell
  docker-compose up -d
  ```

### phpMyAdminが動いているか確認する
  2. 以下のURLでアクセスできます：[http://localhost:7090/](http://localhost:7090/)

### 設計したテーブルを構築する
  3. コンテナ内のBashシェルに入るコマンドです。
  ```shell
  docker exec -it mysql bash
  ```

  4. コンテナ内でMySQLクライアントを使用してデータベースに接続するコマンドです。
  ```shell
  mysql -u root -p
  ```

  5. データベース(streaming_tv)を指定するコマンドです。
  ```shell
  USE streaming_tv;
  ```

  6. create_tables.sqlを流して、テーブルを構築するコマンドです。
  ```shell
  source docker-entrypoint-initdb.d/schema/create_tables.sql;
  ```

  6. create_tables.sqlを流して、テーブルを構築するコマンドです。
  ```shell
  source docker-entrypoint-initdb.d/data/initial_data.sql;
  ```

## よく使ったMySQLコマンド

- SHOW DATABASES;
- DROP DATABASE streaming_tv;
- CREATE DATABASE streaming_tv;

- 現在選択されているデータベースを知るためのコマンド
  ```shell
  SELECT DATABASE();
  ```
