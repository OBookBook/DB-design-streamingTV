--本日放送される全ての番組に対して、チャンネル名、放送開始時刻(日付+時間)、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を取得してください。なお、番組の開始時刻が本日のものを本日放送される番組とみなすものとします
SELECT ch.channel_name AS チャンネル名,
       br.start_time AS 放送開始日付時刻,
       br.end_time AS 放送終了日付時刻,
       s.season_number AS シーズン数,
       e.episode_number AS エピソード数,
       e.title AS エピソードタイトル,
       e.description AS エピソード詳細
  FROM broadcasts AS br
       JOIN channels ch
       ON br.channel_id = ch.channel_id

       JOIN episodes e
       ON br.episode_id = e.episode_id

       JOIN seasons s
       ON br.season_id = s.season_id
 WHERE DATE(br.start_time) = CURDATE();
