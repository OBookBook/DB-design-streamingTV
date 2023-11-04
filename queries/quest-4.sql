--ドラマのチャンネルに対して、放送開始時刻、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を本日から一週間分取得してください
SELECT
  ch.channel_name AS 放送チャンネル,
  br.start_time AS 放送開始時刻,
  br.end_time AS 放送終了時刻,
  s.season_number AS シーズン数,
  e.episode_number AS エピソード数,
  e.title AS エピソードタイトル,
  e.description AS エピソード詳細
FROM broadcasts AS br
JOIN channels AS ch ON br.channel_id = ch.channel_id
JOIN seasons AS s ON br.season_id = s.season_id
JOIN episodes AS e ON br.episode_id = e.episode_id
WHERE ch.channel_name LIKE '%ドラマ%'
AND DATE(br.start_time) BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);
