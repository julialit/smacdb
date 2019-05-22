--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name:  participants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public." participants" (
    id integer NOT NULL,
    id_com integer NOT NULL,
    first_name character(1) NOT NULL,
    last_name character varying NOT NULL
);


ALTER TABLE public." participants" OWNER TO postgres;

--
-- Name: cabinets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cabinets (
    num integer NOT NULL,
    "table" integer[] NOT NULL
);


ALTER TABLE public.cabinets OWNER TO postgres;

--
-- Name: command; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.command (
    id integer NOT NULL,
    id_lig integer NOT NULL,
    name character varying NOT NULL,
    school character varying NOT NULL
);


ALTER TABLE public.command OWNER TO postgres;

--
-- Name: judge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.judge (
    id integer NOT NULL,
    num_cab integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL
);


ALTER TABLE public.judge OWNER TO postgres;

--
-- Name: league; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.league (
    id integer NOT NULL,
    name character(1) NOT NULL
);


ALTER TABLE public.league OWNER TO postgres;

--
-- Name: task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task (
    num integer NOT NULL,
    tas character varying NOT NULL
);


ALTER TABLE public.task OWNER TO postgres;

--
-- Data for Name:  participants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public." participants" (id, id_com, first_name, last_name) FROM stdin;
\.


--
-- Data for Name: cabinets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cabinets (num, "table") FROM stdin;
\.


--
-- Data for Name: command; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.command (id, id_lig, name, school) FROM stdin;
\.


--
-- Data for Name: judge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.judge (id, num_cab, first_name, last_name) FROM stdin;
1	6	Ponomareva	Katya
\.


--
-- Data for Name: league; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.league (id, name) FROM stdin;
\.


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.task (num, tas) FROM stdin;
\.


--
-- Name: cabinets cabinets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cabinets
    ADD CONSTRAINT cabinets_pkey PRIMARY KEY (num);


--
-- Name: command command_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.command
    ADD CONSTRAINT command_pkey PRIMARY KEY (id);


--
-- Name: judge judge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.judge
    ADD CONSTRAINT judge_pkey PRIMARY KEY (id);


--
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (num);


--
-- PostgreSQL database dump complete
--

