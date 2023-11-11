-- エピソード視聴数トップ3のエピソードタイトルと視聴数を取得:
SELECT title AS エピソードタイトル,
       view_count AS 視聴数
  FROM episodes
 ORDER BY view_count DESC
 LIMIT 3;
