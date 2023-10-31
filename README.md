# インターネットTV DB設計 構築 SQL

## テーブル設計

    テーブル：channels <!-- チャンネルテーブル  -->
      <!-- |カラム名|データ型|NULL|キー|初期値|AUTO INCREMENT|外部キー制約||ユニークキー制約| -->
      | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
      | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
      |channel_id|bigint(20)||PRIMARY||YES|||
      |channel_name|varchar(100)||||||YES|

    テーブル：genres <!-- ジャンルテーブル  -->
      | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
      | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |

    テーブル：program_slots <!-- 番組枠テーブル -->
      | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
      | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |

    テーブル：video_contents <!-- 動画コンテンツテーブル -->
      | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
      | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |

    テーブル：time_slots <!-- 時間帯テーブル -->
      | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
      | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |

    テーブル：broadcasts <!-- 放映テーブル -->
      | Column Name | Data Type | NULL | Key | Default | AUTO_INCREMENT | Foreign Key Constraint | Unique Key Constraint |
      | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
