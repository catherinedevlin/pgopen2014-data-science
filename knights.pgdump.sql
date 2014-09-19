--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: knights; Type: TABLE; Schema: public; Owner: catherine; Tablespace: 
--

CREATE TABLE knights (
    name character varying(10) NOT NULL,
    dob timestamp without time zone,
    kg numeric(6,4),
    brave boolean NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.knights OWNER TO catherine;

--
-- Name: knights_id_seq; Type: SEQUENCE; Schema: public; Owner: catherine
--

CREATE SEQUENCE knights_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knights_id_seq OWNER TO catherine;

--
-- Name: knights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: catherine
--

ALTER SEQUENCE knights_id_seq OWNED BY knights.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: catherine
--

ALTER TABLE ONLY knights ALTER COLUMN id SET DEFAULT nextval('knights_id_seq'::regclass);


--
-- Data for Name: knights; Type: TABLE DATA; Schema: public; Owner: catherine
--

COPY knights (name, dob, kg, brave, id) FROM stdin;
Lancelot	0471-01-09 00:00:00	82.0000	t	1
Gawain	\N	69.2000	t	2
Robin	0471-01-09 00:00:00	\N	f	3
Reepacheep	\N	0.0691	t	4
\.


--
-- Name: knights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: catherine
--

SELECT pg_catalog.setval('knights_id_seq', 4, true);


--
-- Name: knights_kg_key; Type: CONSTRAINT; Schema: public; Owner: catherine; Tablespace: 
--

ALTER TABLE ONLY knights
    ADD CONSTRAINT knights_kg_key UNIQUE (kg);


--
-- Name: knights_name_key; Type: CONSTRAINT; Schema: public; Owner: catherine; Tablespace: 
--

ALTER TABLE ONLY knights
    ADD CONSTRAINT knights_name_key UNIQUE (name);


--
-- Name: knights_pkey; Type: CONSTRAINT; Schema: public; Owner: catherine; Tablespace: 
--

ALTER TABLE ONLY knights
    ADD CONSTRAINT knights_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

