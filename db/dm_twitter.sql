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
-- Name: dm_interactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE dm_interactions (
    id_twitter_sk bigint NOT NULL,
    version integer,
    date_from timestamp without time zone,
    date_to timestamp without time zone,
    id_twitter text,
    qtd_followers double precision,
    qtd_like double precision,
    qtd_followed double precision
);


ALTER TABLE dm_interactions OWNER TO postgres;

--
-- Name: dm_interactions_id_twitter_sk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dm_interactions_id_twitter_sk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dm_interactions_id_twitter_sk_seq OWNER TO postgres;

--
-- Name: dm_interactions_id_twitter_sk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dm_interactions_id_twitter_sk_seq OWNED BY dm_interactions.id_twitter_sk;


--
-- Name: dm_twiiter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE dm_twiiter (
    id_twitter_sk bigint NOT NULL,
    version integer,
    date_from timestamp without time zone,
    date_to timestamp without time zone,
    id_twitter text,
    created_at text,
    media text,
    link text,
    user_origin_name text,
    text text,
    hashtags text,
    id_user text,
    qtd_retweet double precision,
    interaction_type text
);


ALTER TABLE dm_twiiter OWNER TO postgres;

--
-- Name: dm_twiiter_id_twitter_sk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dm_twiiter_id_twitter_sk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dm_twiiter_id_twitter_sk_seq OWNER TO postgres;

--
-- Name: dm_twiiter_id_twitter_sk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dm_twiiter_id_twitter_sk_seq OWNED BY dm_twiiter.id_twitter_sk;


--
-- Name: dm_interactions id_twitter_sk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dm_interactions ALTER COLUMN id_twitter_sk SET DEFAULT nextval('dm_interactions_id_twitter_sk_seq'::regclass);


--
-- Name: dm_twiiter id_twitter_sk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dm_twiiter ALTER COLUMN id_twitter_sk SET DEFAULT nextval('dm_twiiter_id_twitter_sk_seq'::regclass);


--
-- Name: idx_dm_interactions_lookup; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dm_interactions_lookup ON dm_interactions USING btree (id_twitter);


--
-- Name: idx_dm_interactions_tk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dm_interactions_tk ON dm_interactions USING btree (id_twitter_sk);


--
-- Name: idx_dm_twiiter_lookup; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dm_twiiter_lookup ON dm_twiiter USING btree (id_twitter);


--
-- Name: idx_dm_twiiter_tk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dm_twiiter_tk ON dm_twiiter USING btree (id_twitter_sk);


--
-- PostgreSQL database dump complete
--

