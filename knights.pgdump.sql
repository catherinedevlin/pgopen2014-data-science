--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
    brave boolean NOT NULL
);


ALTER TABLE public.knights OWNER TO catherine;

--
-- Data for Name: knights; Type: TABLE DATA; Schema: public; Owner: catherine
--

COPY knights (name, dob, kg, brave) FROM stdin;
Lancelot	0471-01-09 00:00:00	82.0000	t
Gawain	\N	69.2000	t
Robin	0471-01-09 00:00:00	\N	f
Reepacheep	\N	0.0691	t
\.


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
    ADD CONSTRAINT knights_pkey PRIMARY KEY (name);


--
-- PostgreSQL database dump complete
--

