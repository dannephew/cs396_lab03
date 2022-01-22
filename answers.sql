-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name FROM users 
ORDER BY last_name;



-- Exercise 4
SELECT * FROM posts WHERE user_id = 26;



-- Exercise 5
SELECT id, image_url, user_id FROM posts
WHERE user_id = 26 OR user_id = 12;



-- Exercise 6
SELECT COUNT(id) FROM posts;


-- Exercise 7
SELECT user_id, COUNT(id) FROM comments GROUP BY user_id
ORDER BY COUNT(id) desc;



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name FROM posts 
INNER JOIN users ON posts.user_id=users.id
WHERE posts.user_id = 26 OR posts.user_id = 12;


-- Exercise 9
SELECT posts.id, posts.pub_date, following.following_id 
FROM posts
INNER JOIN following ON posts.user_id=following.following_id
WHERE following.user_id=26;
-- find posts of friends
    --only want people associated with user_id=26
-- match user to following
-----------------




-- Exercise 11
INSERT INTO bookmarks(user_id, post_id)
VALUES(26, 219);

INSERT INTO bookmarks(user_id, post_id)
VALUES(26, 220);

INSERT INTO bookmarks(user_id, post_id)
VALUES(26, 221);

-- Exercise 12
DELETE FROM bookmarks
WHERE post_id = 219 OR post_id = 220 OR post_id = 221 AND user_id = 26;



-- Exercise 13
UPDATE users
SET email = 'cyoung2022@gmail.com'
WHERE id=26;
--------
----CCA
