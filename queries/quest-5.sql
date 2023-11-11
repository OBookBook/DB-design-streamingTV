--直近一週間に放送された番組の中で、エピソード視聴数合計トップ2の番組に対して、番組タイトル、視聴数を取得してください
SELECT p.title AS 番組名,
       e.title AS エピソードタイトル,
       br.view_count AS 視聴数
  FROM broadcasts br
       JOIN episodes e
       ON br.episode_id = e.episode_id

       JOIN programs p
       ON e.program_id = p.program_id
 WHERE br.start_time BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY)
 ORDER BY 視聴数 DESC
 LIMIT 2;
