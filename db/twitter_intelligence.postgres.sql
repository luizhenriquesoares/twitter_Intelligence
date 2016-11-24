--CRETE DATABASE twitter_intelligence;

DROP TABLE search_twitter;
CREATE TABLE search_twitter(
  id_user bigint,
 id_twiter bigint,
 "name" varchar(255),
 screen_name varchar(255),
 "location" varchar(255),
 description_profile varchar(255),
 url_profile varchar(255),
 time_zone varchar(255),
 created_at_twitter varchar(255),
 text varchar(255),
 retweet_count integer,
 followers_count integer,
 friends_count integer,
 listed_count integer
);

DROP TABLE hashtags;
CREATE TABLE hashtags(
  id_twiter BIGINT,
  id_user BIGINT,
  hashtags VARCHAR(255)
);
