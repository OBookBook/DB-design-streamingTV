USE streaming_tv;

-- チャンネルテーブル
CREATE TABLE channels (
    id                BIGINT (20)              PRIMARY KEY AUTO_INCREMENT,
    name              VARCHAR(30)              NOT NULL
)   ENGINE=InnoDB     DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_0900_ai_ci;

-- ジャンルテーブル
CREATE TABLE genres (
    id                BIGINT (20)              PRIMARY KEY AUTO_INCREMENT,
    name              VARCHAR(30)              NOT NULL
)   ENGINE=InnoDB     DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_0900_ai_ci;

-- 番組テーブル
CREATE TABLE programs (
    id                BIGINT  (20)             PRIMARY KEY AUTO_INCREMENT,
    title             VARCHAR(100)             NOT NULL,
    description       TEXT                     NOT NULL,
    series_or_single  TINYINT                  NOT NULL
)   ENGINE=InnoDB     DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_0900_ai_ci;

-- ジャンル登録テーブル
CREATE TABLE program_genres (
    id                BIGINT(20)               PRIMARY KEY AUTO_INCREMENT,
    program_id        BIGINT(20),
    genre_id          BIGINT(20),
                      FOREIGN KEY (program_id) REFERENCES programs(id),
                      FOREIGN KEY (genre_id)   REFERENCES genres(id)
)   ENGINE=InnoDB     DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_0900_ai_ci;

-- シーズンテーブル
CREATE TABLE seasons (
    id                BIGINT(20)               PRIMARY KEY AUTO_INCREMENT,
    program_id        BIGINT(20)               NOT NULL,
    season_number     INT                      NOT NULL,
                      FOREIGN KEY (program_id) REFERENCES programs(id)
)   ENGINE=InnoDB     DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_0900_ai_ci;

-- エピソードテーブル
CREATE TABLE episodes (
    id                BIGINT(20)               PRIMARY KEY AUTO_INCREMENT,
    program_id        BIGINT(20)               NOT NULL,
    season_id         BIGINT(20)               NOT NULL,
    episode_number    VARCHAR(100)             NOT NULL,
    title             VARCHAR(100)             NOT NULL,
    description       TEXT                     NOT NULL,
    duration          TIME                     NOT NULL,
    release_date      DATE                     NOT NULL,
    view_count        BIGINT(20)               NOT NULL,
                      FOREIGN KEY (program_id) REFERENCES programs(id),
                      FOREIGN KEY (season_id)  REFERENCES seasons(id)
)   ENGINE=InnoDB     DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_0900_ai_ci;

-- 放映テーブル
CREATE TABLE broadcasts (
    id                BIGINT(20)               PRIMARY KEY AUTO_INCREMENT,
    channel_id        BIGINT(20)               NOT NULL,
    episode_id        BIGINT(20)               NOT NULL,
    start_time        DATETIME                 NOT NULL,
    end_time          DATETIME                 NOT NULL,
    view_count        BIGINT(20)               NOT NULL,
                      FOREIGN KEY (channel_id) REFERENCES channels(id),
                      FOREIGN KEY (episode_id) REFERENCES episodes(id)
)   ENGINE=InnoDB     DEFAULT CHARSET=utf8mb4  COLLATE=utf8mb4_0900_ai_ci;
