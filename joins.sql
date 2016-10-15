
\c has_many_blogs;
-- --1
-- SELECT * FROM users;

-- --2
-- SELECT * FROM posts
--   WHERE user_id = 100;

-- --3
-- SELECT posts.*, users.first_name, users.last_name
--   FROM posts
--     INNER JOIN users ON users.id = posts.user_id
--       WHERE posts.user_id = 200;
-- --4
-- SELECT posts.*, users.first_name
--   FROM posts
--     INNER JOIN users ON users.id = posts.user_id
--       WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';
-- --5
-- SELECT username
--   FROM users
--     INNER JOIN posts ON users.id = posts.user_id
--       WHERE posts.created_at > 'January 1 2015';

-- --6
-- SELECT posts.title, posts.content, users.username
--   FROM posts
--     INNER JOIN users ON users.id = posts.user_id
--       WHERE users.created_at < 'January 1 2015';

-- --7
-- SELECT posts.title AS "Post Title"
--   FROM posts
--     INNER JOIN comments ON comments.posts_id = posts.id;

-- 8
-- SELECT posts.title AS "post_title", posts.url AS "post_url", comments.body AS "comment_body"
--   FROM posts
--     INNER JOIN comments ON comments.posts_id = posts.id
--       WHERE posts.created_at < 'January 1, 2015';

-- 9
-- SELECT posts.title AS "post_title", posts.url AS "post_url", comments.body AS "comment_body"
--   FROM posts
--     INNER JOIN comments ON comments.posts_id = posts.id
--       WHERE posts.created_at > 'January 1, 2015';

--10
-- SELECT posts.title AS "post_title", posts.url AS "post_url", comments.body AS "comment_body"
--   FROM posts
--     INNER JOIN comments ON comments.posts_id = posts.id
--       WHERE comments.body LIKE '%USB%';

--11
-- SELECT posts.title AS "post_title", users.first_name, users.last_name, comments.body AS "comment_body"
--   FROM posts
--     INNER JOIN comments ON comments.posts_id = posts.id
--     INNER JOIN users ON users.id = posts.user_id
--       WHERE comments.body LIKE '%matrix%';

--12
-- SELECT users.first_name, users.last_name, comments.body AS "comment_body"
--   FROM users
--     INNER JOIN comments ON comments.user_id = users.id
--     INNER JOIN posts ON comments.posts_id = posts.id
--       WHERE comments.body LIKE '%SSL%' AND posts.content LIKE '%dolorum%'

--13
-- SELECT up.first_name AS "post_author_first_name", up.last_name AS "post_author_last_name", p.title AS "post_title", u.username AS "comments_author_username", c.body AS "comment_body"
--   FROM comments AS c
--     INNER JOIN users AS u ON u.id = c.user_id
--     INNER JOIN posts AS p ON p.id = c.posts_id
--     INNER JOIN users AS up ON up.id = p.user_id
--       WHERE (c.body LIKE '%SSL%' OR c.body LIKE '%firewall%') AND p.content LIKE '%nemo%';





