-- エピソード視聴数トップ3の番組タイトル、シーズン数、エピソード数、エピソードタイトル、視聴数を取得
SELECT p.title AS 番組タイトル,
       s.season_number AS シーズン数,
       e.episode_number AS エピソード数,
       e.title AS エピソードタイトル,
       e.view_count AS 視聴数
  FROM episodes AS e
       JOIN programs AS p
       ON e.program_id = p.program_id

       JOIN seasons AS s
       ON e.season_id = s.season_id
 ORDER BY 視聴数 DESC
 LIMIT 3;
