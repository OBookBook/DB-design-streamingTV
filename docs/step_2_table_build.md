# インターネットTV (構築)

## ステップ2を一撃で完了するコマンド - Docker

  ```shell
  docker-compose up -d
  ```

  - phpMyAdminにアクセスできるか確認する。
  以下のURLでアクセスできます：[http://localhost:7090/](http://localhost:7090/)

## ステップ2 ステップ1で設計したテーブルを構築 - コマンド

  1. コンテナ内のBashシェルに入るコマンドです。
  ```shell
  docker exec -it mysql bash
  ```

  2. コンテナ内でMySQLクライアントを使用してデータベースに接続するコマンドです。
  ```shell
  mysql -u root -p
  ```

  3. データベース(streaming_tv)を指定するコマンドです。
  ```shell
  USE streaming_tv;
  ```

  4. テーブルを構築(create_tables.sql)するコマンドです。
  ```shell
  source docker-entrypoint-initdb.d/create_tables.sql;
  ```

## ステップ2 サンプルデータを挿入。 - コマンドライン

  5. テストデータ(test_data.sql)を流すコマンドです。
  ```shell
  source docker-entrypoint-initdb.d/test_data.sql;
  ```
