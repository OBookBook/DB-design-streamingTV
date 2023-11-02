USE streaming_tv;

-- チャンネルデータ
INSERT INTO channels (channel_name) VALUES
  ('アニメチャンネル'),
  ('ドラマチャンネル'),
  ('スポーツチャンネル'),
  ('ペットチャンネル');

-- ジャンルデータ
INSERT INTO genres (genre_name) VALUES
  ('アニメ'),
  ('ドラマ'),
  ('アクション'),
  ('スポーツ'),
  ('ペット'),
  ('ニュース');

-- 番組データ
INSERT INTO programs (title, description, series_or_single) VALUES
  ('鬼滅の刃', '鬼を狩る冒険物語', 1),
  ('恋愛ドラマ', '恋愛をテーマにしたドラマ', 0),
  ('スポーツ中継', '試合の生中継', 0),
  ('ペットの楽しみ', 'ペットに関する情報', 0);

-- ジャンル登録データ
-- 鬼滅の刃はアニメとドラマのジャンルに属します
INSERT INTO genre_registries (program_id, genre_id) VALUES
  (1, 1),
  (1, 3);

-- シーズンデータ
-- 鬼滅の刃は1つのシーズンを持つシリーズです
INSERT INTO seasons (program_id, season_number) VALUES
  (1, 1), -- シーズン1
  (1, 2); -- シーズン2

-- エピソードデータ
INSERT INTO episodes (program_id, season_id, episode_number, title, description, duration, release_date, view_count) VALUES
  (1, 1, '1', '鬼滅の刃 - 第1話', '鬼との遭遇', '00:24:00', '2023-01-10', 100000),
  (1, 1, '2', '鬼滅の刃 - 第2話', '修行の日々', '00:24:00', '2023-01-17', 95000),
  (1, 1, '3', '鬼滅の刃 - 第3話', '水の呼吸法', '00:24:00', '2023-01-24', 105000),
  (1, 1, '4', '鬼滅の刃 - 第4話', '闘いの始まり', '00:24:00', '2023-01-31', 98000),
  (1, 1, '5', '鬼滅の刃 - 第5話', '禰豆子の決意', '00:24:00', '2023-02-07', 103000),
  (1, 1, '6', '鬼滅の刃 - 第6話', '鬼殺隊への加入', '00:24:00', '2023-02-14', 101000),
  (1, 1, '7', '鬼滅の刃 - 第7話', '剣士としての成長', '00:24:00', '2023-02-21', 102000),
  (1, 1, '8', '鬼滅の刃 - 第8話', '蜘蛛鬼の脅威', '00:24:00', '2023-02-28', 97000),
  (1, 1, '9', '鬼滅の刃 - 第9話', '新たな仲間', '00:24:00', '2023-03-07', 104000),
  (1, 1, '10', '鬼滅の刃 - 第10話', '選ばれし者', '00:24:00', '2023-03-14', 99000),
  (1, 1, '11', '鬼滅の刃 - 第11話', '鬼殺隊の使命', '00:24:00', '2023-03-21', 107000),
  (1, 1, '12', '鬼滅の刃 - 第12話', '鬼の棲む山', '00:24:00', '2023-03-28', 105000),
  (1, 1, '13', '鬼滅の刃 - 第13話', '獣の魔術', '00:24:00', '2023-04-04', 99000),
  (1, 1, '14', '鬼滅の刃 - 第14話', '鬼舞辻無惨', '00:24:00', '2023-04-11', 112000),
  (1, 1, '15', '鬼滅の刃 - 第15話', '新たな修行', '00:24:00', '2023-04-18', 101000),
  (1, 1, '16', '鬼滅の刃 - 第16話', '鬼殺隊の試練', '00:24:00', '2023-04-25', 105000),
  (1, 1, '17', '鬼滅の刃 - 第17話', '蝶屋敷の謎', '00:24:00', '2023-05-02', 98000),
  (1, 1, '18', '鬼滅の刃 - 第18話', '鬼との再戦', '00:24:00', '2023-05-09', 108000),
  (1, 1, '19', '鬼滅の刃 - 第19話', '禰豆子の復活', '00:24:00', '2023-05-16', 113000),
  (1, 1, '20', '鬼滅の刃 - 第20話', '柱合会議', '00:24:00', '2023-05-23', 102000),
  (1, 1, '21', '鬼滅の刃 - 第21話', '柱合会議の結末', '00:24:00', '2023-05-30', 106000),
  (1, 1, '22', '鬼滅の刃 - 第22話', '新たな敵の登場', '00:24:00', '2023-06-06', 101000),
  (1, 1, '23', '鬼滅の刃 - 第23話', '修行と成長', '00:24:00', '2023-06-13', 103000),
  (1, 1, '24', '鬼滅の刃 - 第24話', '鬼の襲来', '00:24:00', '2023-06-20', 104000),
  (1, 1, '25', '鬼滅の刃 - 第25話', '最終決戦', '00:24:00', '2023-06-27', 115000),
  (1, 1, '26', '鬼滅の刃 - 最終話', '鬼殺隊の結末', '00:24:00', '2023-07-04', 120000);

-- シーズン2のエピソードデータ
INSERT INTO episodes (program_id, season_id, episode_number, title, description, duration, release_date, view_count) VALUES
  (1, 2, '1', '鬼滅の刃 - 第1話 (シーズン2)', '新たな敵との戦い', '00:24:00', '2023-07-05', 110000),
  (1, 2, '2', '鬼滅の刃 - 第2話 (シーズン2)', '剣士たちの覚悟', '00:24:00', '2023-07-12', 105000),
  (1, 2, '3', '鬼滅の刃 - 第3話 (シーズン2)', '謎の鬼の出現', '00:24:00', '2023-07-19', 108000),
  (1, 2, '4', '鬼滅の刃 - 第4話 (シーズン2)', '鬼殺隊の新たな仲間', '00:24:00', '2023-07-26', 112000),
  (1, 2, '5', '鬼滅の刃 - 第5話 (シーズン2)', '剣士たちの修行', '00:24:00', '2023-08-02', 106000),
  (1, 2, '6', '鬼滅の刃 - 第6話 (シーズン2)', '鬼との再戦', '00:24:00', '2023-08-09', 115000),
  (1, 2, '7', '鬼滅の刃 - 第7話 (シーズン2)', '新たな鬼殺隊士', '00:24:00', '2023-08-16', 109000),
  (1, 2, '8', '鬼滅の刃 - 第8話 (シーズン2)', '鬼の脅威再び', '00:24:00', '2023-08-23', 117000),
  (1, 2, '9', '鬼滅の刃 - 第9話 (シーズン2)', '柱合会議', '00:24:00', '2023-08-30', 122000),
  (1, 2, '10', '鬼滅の刃 - 第10話 (シーズン2)', '鬼殺隊再編', '00:24:00', '2023-09-06', 120000),
  (1, 2, '11', '鬼滅の刃 - 第11話 (シーズン2)', '新たな鬼殺隊柱', '00:24:00', '2023-09-13', 125000),
  (1, 2, '12', '鬼滅の刃 - 第12話 (シーズン2)', '最終決戦へ', '00:24:00', '2023-09-20', 130000),
  (1, 2, '13', '鬼滅の刃 - 第13話 (シーズン2)', '鬼との激闘', '00:24:00', '2023-09-27', 135000);

-- 放映データ
INSERT INTO broadcasts (channel_id, program_id, season_id, episode_id, start_time, end_time, view_count) VALUES
  (1, 1, 1, 1, '2023-01-10 19:00:00', '2023-01-10 19:30:00', 50000),
  (2, 1, 1, 2, '2023-01-17 20:00:00', '2023-01-17 20:30:00', 60000);