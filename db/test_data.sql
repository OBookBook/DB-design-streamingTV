USE streaming_tv;

-- テレビのチャンネルデータ
INSERT INTO channels (channel_name) VALUES
  ('アニメチャンネル1'),
  ('アニメチャンネル2'),
  ('ドラマチャンネル1'),
  ('ドラマチャンネル2');
  -- ('スポーツチャンネル1'),
  -- ('スポーツチャンネル2'),
  -- ('ペットチャンネル1'),
  -- ('ペットチャンネル2'),
  -- ('ニュースチャンネル1'),
  -- ('ニュースチャンネル2'),
  -- ('ニュースチャンネル3');

-- 番組のジャンルデータ
INSERT INTO genres (genre_name) VALUES
  ('アニメ'),
  ('ドラマ'),
  ('アクション');
  -- ('スポーツ'),
  -- ('ペット'),
  -- ('ニュース');

-- 番組データ
INSERT INTO programs (title, description, series_or_single) VALUES
  ('鬼滅の刃', '「鬼滅の刃」は、吾峠呼世晴による日本の漫画で、大正時代を舞台に、主人公・炭治郎が鬼にされた妹を人間に戻すため、鬼殺隊と呼ばれる組織に参加し、鬼との戦いに挑む物語です。作品は多彩なキャラクター、独自の剣術や能力、感動的なストーリーで人気を集め、アニメや映画などでも展開されました。', 1),
  ('逃げるは恥だが役に立つ', '主人公の森山みくり（演:新垣結衣）と野崎智（演:星野源）が、偶然出会い、恋に発展するストーリーを描いています。みくりはアラサーOLで、智は医師です。二人は恋愛経験がほとんどないため、新しい恋愛関係に戸惑いつつも、さまざまな困難や障害を乗り越えて成長していく姿が描かれています。', 1);

-- 番組ジャンル ※ ジャンルは複数登録できる
INSERT INTO program_genres (program_id, genre_id) VALUES
  (1, 1), -- 鬼滅の刃 ジャンルテーブル:アニメ
  (1, 3), -- 鬼滅の刃 ジャンルテーブル:アクション
  (2, 2); -- 逃げるは恥だが役に立つ ジャンルテーブル:ドラマ

-- シーズンデータ
INSERT INTO seasons (program_id, season_number) VALUES
  (1, 1), -- 番組:鬼滅の刃 シーズン1
  (1, 2), -- 番組:鬼滅の刃 シーズン2
  (2, 1); -- 番組:逃げるは恥だが役に立つ, シーズン1

-- エピソードデータ
INSERT INTO episodes (program_id, season_id, episode_number, title, description, duration, release_date, view_count) VALUES
  (1, 1, '1', '第1話 鬼との遭遇', '鬼との遭遇のはじまり', '00:24:00', '2023-01-10', 100000),
  (1, 1, '2', '第2話 修行の日々', '鬼殺隊の訓練生活', '00:24:00', '2023-01-17', 95000),
  (1, 1, '3', '第3話 水の呼吸法', '水の呼吸法の修得', '00:24:00', '2023-01-24', 105000),
  (1, 1, '4', '第4話 闘いの始まり', '鬼との壮絶な闘い', '00:24:00', '2023-01-31', 98000),
  (1, 1, '5', '第5話 禰豆子の決意', '禰豆子の覚悟', '00:24:00', '2023-02-07', 103000),
  (1, 1, '6', '第6話 鬼殺隊への加入', '新たな仲間との出会い', '00:24:00', '2023-02-14', 101000),
  (1, 1, '7', '第7話 剣士としての成長', '主人公の剣士としての成長', '00:24:00', '2023-02-21', 102000),
  (1, 1, '8', '第8話 蜘蛛鬼の脅威', '強敵・蜘蛛鬼の脅威', '00:24:00', '2023-02-28', 97000),
  (1, 1, '9', '第9話 新たな仲間', '新仲間たちの加入', '00:24:00', '2023-03-07', 104000),
  (1, 1, '10', '第10話 選ばれし者', '選ばれた刃の行方', '00:24:00', '2023-03-14', 99000),
  (1, 1, '11', '第11話 鬼殺隊の使命', '鬼殺隊の新たな使命', '00:24:00', '2023-03-21', 107000),
  (1, 1, '12', '第12話 鬼の棲む山', '鬼の棲む山への挑戦', '00:24:00', '2023-03-28', 105000),
  (1, 1, '13', '第13話 獣の魔術', '獣との魔術の闘い', '00:24:00', '2023-04-04', 99000),
  (1, 1, '14', '第14話 鬼舞辻無惨', '最強鬼・無惨との対決', '00:24:00', '2023-04-11', 112000),
  (1, 1, '15', '第15話 新たな修行', 'さらなる修行と成長', '00:24:00', '2023-04-18', 101000),
  (1, 1, '16', '第16話 鬼殺隊の試練', '鬼殺隊の新たな試練', '00:24:00', '2023-04-25', 105000),
  (1, 1, '17', '第17話 蝶屋敷の謎', '謎の蝶屋敷への探索', '00:24:00', '2023-05-02', 98000),
  (1, 1, '18', '第18話 鬼との再戦', '再びの鬼との壮絶な戦い', '00:24:00', '2023-05-09', 108000),
  (1, 1, '19', '第19話 禰豆子の復活', '禰豆子の驚異的な復活', '00:24:00', '2023-05-16', 113000),
  (1, 1, '20', '第20話 柱合会議', '柱合会議の開催', '00:24:00', '2023-05-23', 102000),
  (1, 1, '21', '第21話 柱合会議の結末', '柱合会議の結末と新たな使命', '00:24:00', '2023-05-30', 106000),
  (1, 1, '22', '第22話 新たな敵の登場', '新たな強敵の出現', '00:24:00', '2023-06-06', 101000),
  (1, 1, '23', '第23話 修行と成長', '修行と新たな力の開花', '00:24:00', '2023-06-13', 103000),
  (1, 1, '24', '第24話 鬼の襲来', '鬼の本拠地への最終決戦', '00:24:00', '2023-06-20', 104000),
  (1, 1, '25', '第25話 最終決戦', '壮絶な最終決戦と結末', '00:24:00', '2023-06-27', 115000),
  (1, 1, '26', '第26話 鬼殺隊の結末', '鬼殺隊の運命の結末', '00:24:00', '2023-07-04', 120000),
-- シーズン2のエピソードデータ
  (1, 2, '1', '第1話 新たな敵との戦い', '新たな敵との壮絶な戦闘', '00:24:00', '2023-07-05', 110000),
  (1, 2, '2', '第2話 剣士たちの覚悟', '剣士たちの覚悟と新たな使命', '00:24:00', '2023-07-12', 105000),
  (1, 2, '3', '第3話 謎の鬼の出現', '謎の鬼との遭遇', '00:24:00', '2023-07-19', 108000),
  (1, 2, '4', '第4話 鬼殺隊の新たな仲間', '鬼殺隊の新たな仲間たち', '00:24:00', '2023-07-26', 112000),
  (1, 2, '5', '第5話 剣士たちの修行', '剣士たちの厳しい修行', '00:24:00', '2023-08-02', 106000),
  (1, 2, '6', '第6話 鬼との再戦', '再びの鬼との戦闘', '00:24:00', '2023-08-09', 115000),
  (1, 2, '7', '第7話 新たな鬼殺隊士', '新たな鬼殺隊士たち', '00:24:00', '2023-08-16', 109000),
  (1, 2, '8', '第8話 鬼の脅威再び', '鬼の新たな脅威', '00:24:00', '2023-08-23', 117000),
  (1, 2, '9', '第9話 柱合会議', '柱合会議と新たな使命', '00:24:00', '2023-08-30', 122000),
  (1, 2, '10', '第10話 鬼殺隊再編', '鬼殺隊の再編成', '00:24:00', '2023-09-06', 120000),
  (1, 2, '11', '第11話 新たな鬼殺隊柱', '新たな鬼殺隊柱たち', '00:24:00', '2023-09-13', 125000),
  (1, 2, '12', '第12話 最終決戦へ', '最終決戦への向かう', '00:24:00', '2023-09-20', 130000),
  (1, 2, '13', '第13話 鬼との激闘', '鬼たちとの激しい闘い', '00:24:00', '2023-09-27', 135000),
-- 逃げるは恥だが役に立つのエピソードデータ
  (2, 3, '1', '第1話 夏目の新しい仕事について', '夏目の新しい仕事に関する出来事', '00:45:00', '2023-11-04', 0),
  (2, 3, '2', '第2話 夫婦生活についての新たな展開', '夫婦生活の新たな展開', '00:45:00', '2023-11-11', 0),
  (2, 3, '3', '第3話 新たな問題と障害に立ち向かう', '新たな問題への挑戦', '00:45:00', '2023-11-18', 0),
  (2, 3, '4', '第4話 仕事と家庭のバランスを取る', '仕事と家庭のバランスの探求', '00:45:00', '2023-11-25', 0),
  (2, 3, '5', '第5話 友情と結婚生活の葛藤', '友情と結婚生活の葛藤', '00:45:00', '2023-12-02', 0),
  (2, 3, '6', '第6話 新たな家族問題の発生', '新たな家族問題の発生', '00:45:00', '2023-12-09', 0),
  (2, 3, '7', '第7話 夫婦関係の変化', '夫婦関係の変化', '00:45:00', '2023-12-16', 0),
  (2, 3, '8', '第8話 家庭内外の新たな展開', '家庭内外の新たな展開', '00:45:00', '2023-12-23', 0),
  (2, 3, '9', '第9話 家族との絆を深める', '家族との絆を深める', '00:45:00', '2023-12-30', 0),
  (2, 3, '10', '第10話 未来への希望', '最終回 ', '00:45:00', '2024-01-06', 0);

-- 放映データ
INSERT INTO broadcasts (channel_id, program_id, season_id, episode_id, start_time, end_time, view_count) VALUES
-- ('アニメチャンネル1')で鬼滅の刃 シーズン1 を放送
(1, 1, 1, 1, CONCAT(DATE_ADD(CURDATE(), INTERVAL -10 DAY), ' 00:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -10 DAY), ' 00:30:00'), 60000),
(1, 1, 1, 2, CONCAT(DATE_ADD(CURDATE(), INTERVAL -9 DAY), ' 00:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -9 DAY), ' 01:00:00'), 70000),
(1, 1, 1, 3, CONCAT(DATE_ADD(CURDATE(), INTERVAL -8 DAY), ' 01:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -8 DAY), ' 01:30:00'), 80000),
(1, 1, 1, 4, CONCAT(DATE_ADD(CURDATE(), INTERVAL -7 DAY), ' 01:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -7 DAY), ' 02:00:00'), 90000),
(1, 1, 1, 5, CONCAT(DATE_ADD(CURDATE(), INTERVAL -6 DAY), ' 02:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -6 DAY), ' 02:30:00'), 75000),
(1, 1, 1, 6, CONCAT(DATE_ADD(CURDATE(), INTERVAL -5 DAY), ' 02:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -5 DAY), ' 03:00:00'), 85000),
(1, 1, 1, 7, CONCAT(DATE_ADD(CURDATE(), INTERVAL -4 DAY), ' 03:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -4 DAY), ' 03:30:00'), 95000),
(1, 1, 1, 8, CONCAT(DATE_ADD(CURDATE(), INTERVAL -3 DAY), ' 03:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -3 DAY), ' 04:00:00'), 105000),
(1, 1, 1, 9, CONCAT(DATE_ADD(CURDATE(), INTERVAL -2 DAY), ' 04:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -2 DAY), ' 04:30:00'), 90000),
(1, 1, 1, 10, CONCAT(DATE_ADD(CURDATE(), INTERVAL -1 DAY), ' 04:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -1 DAY), ' 05:00:00'), 100000),
(1, 1, 1, 11, CONCAT(CURDATE(), ' 05:00:00'), CONCAT(CURDATE(), ' 05:30:00'), 110000),
(1, 1, 1, 12, CONCAT(DATE_ADD(CURDATE(), INTERVAL 1 DAY), ' 05:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 1 DAY), ' 06:00:00'), 120000),
(1, 1, 1, 13, CONCAT(DATE_ADD(CURDATE(), INTERVAL 2 DAY), ' 06:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 2 DAY), ' 06:30:00'), 130000),
(1, 1, 1, 14, CONCAT(DATE_ADD(CURDATE(), INTERVAL 3 DAY), ' 06:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 3 DAY), ' 07:00:00'), 140000),
(1, 1, 1, 15, CONCAT(DATE_ADD(CURDATE(), INTERVAL 4 DAY), ' 07:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 4 DAY), ' 07:30:00'), 150000),
(1, 1, 1, 16, CONCAT(DATE_ADD(CURDATE(), INTERVAL 5 DAY), ' 07:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 5 DAY), ' 08:00:00'), 160000),
(1, 1, 1, 17, CONCAT(DATE_ADD(CURDATE(), INTERVAL 6 DAY), ' 08:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 6 DAY), ' 08:30:00'), 170000),
(1, 1, 1, 18, CONCAT(DATE_ADD(CURDATE(), INTERVAL 7 DAY), ' 08:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 7 DAY), ' 09:00:00'), 180000),
(1, 1, 1, 19, CONCAT(DATE_ADD(CURDATE(), INTERVAL 8 DAY), ' 09:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 8 DAY), ' 09:30:00'), 190000),
(1, 1, 1, 20, CONCAT(DATE_ADD(CURDATE(), INTERVAL 9 DAY), ' 09:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 9 DAY), ' 10:00:00'), 200000),
(1, 1, 1, 21, CONCAT(DATE_ADD(CURDATE(), INTERVAL -10 DAY), ' 00:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -10 DAY), ' 00:30:00'), 60000),
(1, 1, 1, 22, CONCAT(DATE_ADD(CURDATE(), INTERVAL -9 DAY), ' 00:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -9 DAY), ' 01:00:00'), 70000),
(1, 1, 1, 23, CONCAT(DATE_ADD(CURDATE(), INTERVAL -8 DAY), ' 01:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -8 DAY), ' 01:30:00'), 80000),
(1, 1, 1, 24, CONCAT(DATE_ADD(CURDATE(), INTERVAL -7 DAY), ' 01:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -7 DAY), ' 02:00:00'), 90000),
(1, 1, 1, 25, CONCAT(DATE_ADD(CURDATE(), INTERVAL -6 DAY), ' 02:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -6 DAY), ' 02:30:00'), 75000),
(1, 1, 1, 26, CONCAT(DATE_ADD(CURDATE(), INTERVAL -5 DAY), ' 02:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -5 DAY), ' 03:00:00'), 85000);

-- ('アニメチャンネル2')で鬼滅の刃 シーズン2 を放送
INSERT INTO broadcasts (channel_id, program_id, season_id, episode_id, start_time, end_time, view_count) VALUES
(2, 1, 2, 27, CONCAT(DATE_ADD(CURDATE(), INTERVAL -4 DAY), ' 03:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -4 DAY), ' 03:30:00'), 95000),
(2, 1, 2, 28, CONCAT(DATE_ADD(CURDATE(), INTERVAL -3 DAY), ' 03:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -3 DAY), ' 04:00:00'), 105000),
(2, 1, 2, 29, CONCAT(DATE_ADD(CURDATE(), INTERVAL -2 DAY), ' 04:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -2 DAY), ' 04:30:00'), 90000),
(2, 1, 2, 30, CONCAT(DATE_ADD(CURDATE(), INTERVAL -1 DAY), ' 04:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -1 DAY), ' 05:00:00'), 100000),
(2, 1, 2, 31, CONCAT(DATE_ADD(CURDATE(), INTERVAL 1 DAY), ' 05:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 1 DAY), ' 05:30:00'), 110000),
(2, 1, 2, 32, CONCAT(DATE_ADD(CURDATE(), INTERVAL 2 DAY), ' 05:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 2 DAY), ' 06:00:00'), 120000),
(2, 1, 2, 33, CONCAT(DATE_ADD(CURDATE(), INTERVAL 3 DAY), ' 06:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 3 DAY), ' 06:30:00'), 130000),
(2, 1, 2, 34, CONCAT(DATE_ADD(CURDATE(), INTERVAL 4 DAY), ' 06:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 4 DAY), ' 07:00:00'), 140000),
(2, 1, 2, 35, CONCAT(DATE_ADD(CURDATE(), INTERVAL 5 DAY), ' 07:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 5 DAY), ' 07:30:00'), 150000),
(2, 1, 2, 36, CONCAT(DATE_ADD(CURDATE(), INTERVAL 6 DAY), ' 07:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 6 DAY), ' 08:00:00'), 160000),
(2, 1, 2, 37, CONCAT(DATE_ADD(CURDATE(), INTERVAL 7 DAY), ' 08:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 7 DAY), ' 08:30:00'), 170000),
(2, 1, 2, 38, CONCAT(DATE_ADD(CURDATE(), INTERVAL 8 DAY), ' 08:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 8 DAY), ' 09:00:00'), 180000),
(2, 1, 2, 39, CONCAT(DATE_ADD(CURDATE(), INTERVAL 9 DAY), ' 09:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 9 DAY), ' 09:30:00'), 190000);

-- ('ドラマチャンネル1')逃げるは恥だが役に立つ シーズン1 を放送
INSERT INTO broadcasts (channel_id, program_id, season_id, episode_id, start_time, end_time, view_count) VALUES
(3, 2, 3, 40, CONCAT(DATE_ADD(CURDATE(), INTERVAL -2 DAY), ' 04:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -2 DAY), ' 04:30:00'), 90000),
(3, 2, 3, 41, CONCAT(DATE_ADD(CURDATE(), INTERVAL -1 DAY), ' 04:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -1 DAY), ' 05:00:00'), 100000),
(3, 2, 3, 42, CONCAT(CURDATE(), ' 05:00:00'), CONCAT(CURDATE(), ' 05:30:00'), 110000),
(3, 2, 3, 43, CONCAT(DATE_ADD(CURDATE(), INTERVAL 1 DAY), ' 05:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 1 DAY), ' 06:00:00'), 120000),
(3, 2, 3, 44, CONCAT(DATE_ADD(CURDATE(), INTERVAL 2 DAY), ' 06:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 2 DAY), ' 06:30:00'), 130000),
(3, 2, 3, 45, CONCAT(DATE_ADD(CURDATE(), INTERVAL 3 DAY), ' 06:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 3 DAY), ' 07:00:00'), 140000),
(3, 2, 3, 46, CONCAT(DATE_ADD(CURDATE(), INTERVAL 4 DAY), ' 07:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 4 DAY), ' 07:30:00'), 95000),
(3, 2, 3, 47, CONCAT(DATE_ADD(CURDATE(), INTERVAL 5 DAY), ' 07:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 5 DAY), ' 08:00:00'), 160000),
(3, 2, 3, 48, CONCAT(DATE_ADD(CURDATE(), INTERVAL 6 DAY), ' 06:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 6 DAY), ' 06:30:00'), 160000),
(3, 2, 3, 49, CONCAT(DATE_ADD(CURDATE(), INTERVAL 7 DAY), ' 06:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 7 DAY), ' 07:00:00'), 18000);

-- ('ドラマチャンネル2')逃げるは恥だが役に立つ シーズン1 を放送
INSERT INTO broadcasts (channel_id, program_id, season_id, episode_id, start_time, end_time, view_count) VALUES
(4, 2, 3, 40, CONCAT(DATE_ADD(CURDATE(), INTERVAL -2 DAY), ' 04:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -2 DAY), ' 04:30:00'), 90000),
(4, 2, 3, 41, CONCAT(DATE_ADD(CURDATE(), INTERVAL -1 DAY), ' 04:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL -1 DAY), ' 05:00:00'), 100000),
(4, 2, 3, 42, CONCAT(CURDATE(), ' 05:00:00'), CONCAT(CURDATE(), ' 05:30:00'), 110000),
(4, 2, 3, 43, CONCAT(DATE_ADD(CURDATE(), INTERVAL 1 DAY), ' 05:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 1 DAY), ' 06:00:00'), 120000),
(4, 2, 3, 44, CONCAT(DATE_ADD(CURDATE(), INTERVAL 2 DAY), ' 06:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 2 DAY), ' 06:30:00'), 130000),
(4, 2, 3, 45, CONCAT(DATE_ADD(CURDATE(), INTERVAL 3 DAY), ' 06:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 3 DAY), ' 07:00:00'), 140000),
(4, 2, 3, 46, CONCAT(DATE_ADD(CURDATE(), INTERVAL 4 DAY), ' 07:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 4 DAY), ' 07:30:00'), 95000),
(4, 2, 3, 47, CONCAT(DATE_ADD(CURDATE(), INTERVAL 5 DAY), ' 07:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 5 DAY), ' 08:00:00'), 160000),
(4, 2, 3, 48, CONCAT(DATE_ADD(CURDATE(), INTERVAL 6 DAY), ' 06:00:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 6 DAY), ' 06:30:00'), 160000),
(4, 2, 3, 49, CONCAT(DATE_ADD(CURDATE(), INTERVAL 7 DAY), ' 06:30:00'), CONCAT(DATE_ADD(CURDATE(), INTERVAL 7 DAY), ' 07:00:00'), 18000);
