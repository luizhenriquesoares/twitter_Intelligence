--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: dim_time; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE dim_time (
    start_day timestamp without time zone,
    days_since double precision,
    "Date" timestamp without time zone,
    "Year" double precision,
    "Month" double precision,
    dayofyear double precision,
    dayofmonth double precision,
    dayofweek double precision,
    weekofyear double precision,
    dayofweekdesc text,
    dayofweekshortdesc text,
    monthdesc text,
    monthshortdesc text,
    data_string text,
    sk_tempo double precision
);


ALTER TABLE dim_time OWNER TO postgres;

--
-- Name: scrapping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE scrapping (
    id_twitter text,
    screen_name text,
    following double precision,
    followers double precision
);


ALTER TABLE scrapping OWNER TO postgres;

--
-- Name: staging; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE staging (
    id_user text,
    user_origin_name text,
    screen_name text,
    location text,
    description text,
    url_profile text,
    friends double precision,
    listed double precision,
    time_zone text,
    text text,
    hashtags text,
    retweet double precision,
    created_at text,
    media text,
    link text,
    favorited double precision,
    id_twitter text,
    interaction_type text,
    retweet_count text,
    user_liked text,
    location_1 text,
    id_twitter_1 text,
    user_following double precision,
    user_followers double precision,
    data_tweet text
);


ALTER TABLE staging OWNER TO postgres;

--
-- PostgreSQL database dump complete
--

