-- ジャンルごとの番組の視聴数ランキングを知りたいです。
-- 番組の視聴数ランキングはエピソードの平均視聴数ランキングとします。
-- ジャンルごとに視聴数トップの番組に対して、ジャンル名、番組タイトル、エピソード平均視聴数を取得してください。
SELECT g.genre_name AS ジャンル名,
       p.title AS 番組タイトル,
       AVG(e.view_count) AS エピソード平均視聴数
  FROM genres g
       JOIN genre_registries gr
       ON g.genre_id = gr.genre_id

       JOIN programs p
       ON gr.program_id = p.program_id

       JOIN episodes e
       ON p.program_id = e.program_id
 GROUP BY ジャンル名, 番組タイトル
 ORDER BY エピソード平均視聴数 DESC;
