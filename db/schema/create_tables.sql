-- チャンネルテーブル
CREATE TABLE channels (
  channel_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  channel_name varchar(30) UNIQUE
);

-- ジャンルテーブル
CREATE TABLE genres (
  genre_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  genre_name varchar(30) UNIQUE
);

-- 番組テーブル
CREATE TABLE programs (
  program_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  title varchar(100) UNIQUE,
  description TEXT,
  series_or_single tinyint
);

-- ジャンル登録テーブル
CREATE TABLE genre_registries (
  genre_registry_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  program_id bigint(20),
  genre_id bigint(20),
  FOREIGN KEY (program_id) REFERENCES programs(program_id),
  FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- シーズンテーブル
CREATE TABLE seasons (
  season_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  program_id bigint(20),
  season_number int,
  FOREIGN KEY (program_id) REFERENCES programs(program_id)
);

-- エピソードテーブル
CREATE TABLE episodes (
  episode_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  program_id bigint(20),
  season_id bigint(20),
  episode_number varchar(100),
  title varchar(100),
  description TEXT,
  duration time,
  release_date date,
  view_count bigint(20),
  FOREIGN KEY (program_id) REFERENCES programs(program_id),
  FOREIGN KEY (season_id) REFERENCES seasons(season_id)
);

-- 放映テーブル
CREATE TABLE broadcasts (
  broadcast_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  channel_id bigint(20),
  program_id bigint(20),
  season_id bigint(20),
  episode_id bigint(20),
  start_time DATETIME,
  end_time DATETIME,
  view_count bigint(20),
  FOREIGN KEY (channel_id) REFERENCES channels(channel_id),
  FOREIGN KEY (program_id) REFERENCES programs(program_id),
  FOREIGN KEY (season_id) REFERENCES seasons(season_id),
  FOREIGN KEY (episode_id) REFERENCES episodes(episode_id)
);
