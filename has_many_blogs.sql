 \c janphillipcarreon

 DROP USER IF EXISTS has_many_user;

 CREATE USER has_many_user;

 DROP DATABASE IF EXISTS has_many_blogs;

 CREATE DATABASE has_many_blogs OWNER has_many_user;

 \c has_many_blogs;


 DROP TABLE IF EXISTS users CASCADE;

 CREATE TABLE users (
  id serial PRIMARY KEY,
  username character varying(90),
  first_name character varying(90) DEFAULT NULL,
  last_name character varying(90) DEFAULT NULL,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
  );

 DROP TABLE IF EXISTS posts CASCADE;

 CREATE TABLE posts (
  id serial PRIMARY KEY,
  title character varying(180) DEFAULT NULL,
  url character varying(510) DEFAULT NULL,
  content text DEFAULT NULL,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now(),
  user_id integer REFERENCES users(id)
  );

 DROP TABLE IF EXISTS comments;

 CREATE TABLE comments (
  id serial PRIMARY KEY,
  body character varying(510) DEFAULT NULL,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now(),
  user_id integer REFERENCES users(id),
  posts_id integer REFERENCES posts(id)
  );

 \i scripts/blog_data.sql;






