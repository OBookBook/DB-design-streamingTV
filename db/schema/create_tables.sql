-- チャンネルテーブル
CREATE TABLE channels (
  channel_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  channel_name varchar(30) UNIQUE NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ジャンルテーブル
CREATE TABLE genres (
  genre_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  genre_name varchar(30) UNIQUE NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 番組テーブル
CREATE TABLE programs (
  program_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  title varchar(100) UNIQUE NOT NULL,
  description TEXT NOT NULL,
  series_or_single tinyint NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ジャンル登録テーブル
CREATE TABLE genre_registries (
  genre_registry_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  program_id bigint(20),
  genre_id bigint(20),
  FOREIGN KEY (program_id) REFERENCES programs(program_id),
  FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- シーズンテーブル
CREATE TABLE seasons (
  season_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  program_id bigint(20),
  season_number int NOT NULL,
  FOREIGN KEY (program_id) REFERENCES programs(program_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- エピソードテーブル
CREATE TABLE episodes (
  episode_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  program_id bigint(20),
  season_id bigint(20),
  episode_number varchar(100) NOT NULL,
  title varchar(100) NOT NULL,
  description TEXT NOT NULL,
  duration time NOT NULL,
  release_date date NOT NULL,
  view_count bigint(20) NOT NULL,
  FOREIGN KEY (program_id) REFERENCES programs(program_id),
  FOREIGN KEY (season_id) REFERENCES seasons(season_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 放映テーブル
CREATE TABLE broadcasts (
  broadcast_id bigint(20) PRIMARY KEY AUTO_INCREMENT,
  channel_id bigint(20),
  program_id bigint(20),
  season_id bigint(20),
  episode_id bigint(20),
  start_time DATETIME NOT NULL,
  end_time DATETIME NOT NULL,
  view_count bigint(20) NOT NULL,
  FOREIGN KEY (channel_id) REFERENCES channels(channel_id),
  FOREIGN KEY (program_id) REFERENCES programs(program_id),
  FOREIGN KEY (season_id) REFERENCES seasons(season_id),
  FOREIGN KEY (episode_id) REFERENCES episodes(episode_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
