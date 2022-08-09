--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(9,4) NOT NULL,
    name character varying(20),
    um_from_sun integer,
    description text,
    has_life boolean,
    uni integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(9,4) NOT NULL,
    name character varying(20),
    um_from_sun integer,
    description text,
    has_life boolean,
    planet_id integer,
    uni integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    uni integer NOT NULL,
    uni_id integer NOT NULL,
    uni_id_extend integer NOT NULL,
    more_info_id character varying(20) NOT NULL,
    name character varying(20)
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(9,4) NOT NULL,
    name character varying(20),
    um_from_sun integer,
    description text,
    has_life boolean,
    star_id integer,
    uni integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(9,4) NOT NULL,
    name character varying(20),
    um_from_sun integer,
    columndescription text,
    has_life boolean,
    galaxy_id integer,
    uni integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 100, 20.1000, 'zomoroda', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 100, 20.1000, 'gbaw', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 100, 20.1000, 'love', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 100, 20.1000, 'hadaday', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 100, 20.1000, 'yawyaw', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 100, 20.1000, 'miayaw', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 94, 203.1000, 'pop', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 94, 203.1000, 'popa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 94, 203.1000, 'popa2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 94, 203.1000, 'popa3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 94, 203.1000, 'popa4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 94, 203.1000, 'popa5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 94, 203.1000, 'popa6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 94, 203.1000, 'popa7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 94, 203.1000, 'popa8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 94, 203.1000, 'popa9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 94, 203.1000, 'TOM9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 94, 203.1000, 'TOM8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 94, 203.1000, 'TOM7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 94, 203.1000, 'TO7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 94, 203.1000, 'T7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 94, 203.1000, 'T4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 94, 203.1000, 'T3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 94, 203.1000, 'T2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 94, 203.1000, 'T1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 94, 203.1000, 'T11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 94, 203.1000, 'T12', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (3, 5, 7, 'tot', 'zoz');
INSERT INTO public.more_info VALUES (2, 3, 5, 'tt', 'zz');
INSERT INTO public.more_info VALUES (0, 1, 3, 'tER', 'zbz');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 94, 203.1000, 'baqdqdqdm', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 94, 203.1000, 'baqd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 94, 203.1000, 'baqdaaa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 94, 203.1000, 'baqdaaaaaaa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 94, 203.1000, 'baqdaaaaassssaa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 94, 203.1000, 'saa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 94, 203.1000, 'saaea', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 94, 203.1000, 'saaeads', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 94, 203.1000, 'sas', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 94, 203.1000, 'sms', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 94, 203.1000, 'smms', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 94, 203.1000, 'smsssss', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 94, 203.1000, 'smsssssaaa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 94, 203.1000, 'smmszzzz', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 94, 203.1000, 'smmszzzssssz', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 100, 20.1000, 'myaw', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 100, 203.1000, 'deddw', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 94, 203.1000, 'dlpw', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 94, 203.1000, 'ilal', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 94, 203.1000, 'ilam', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 94, 203.1000, 'ilyas', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 94, 203.1000, 'kawkab', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 94, 203.1000, 'kab', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 94, 203.1000, 'kabad', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 94, 203.1000, 'kold', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 94, 203.1000, 'kola', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 94, 203.1000, 'kolpa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (13, 94, 203.1000, 'kakaa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (14, 94, 203.1000, 'ass', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (15, 94, 203.1000, 'bre', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (16, 94, 203.1000, 'bred', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (17, 94, 203.1000, 'bredop', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (18, 94, 203.1000, 'brad', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (19, 94, 203.1000, 'bradopm', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, 94, 203.1000, 'baaaapm', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (21, 94, 203.1000, 'baqdqdqdm', NULL, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uni_key UNIQUE (uni);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uni_key UNIQUE (uni);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: more_info more_info_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_uni_key UNIQUE (uni);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uni_key UNIQUE (uni);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uni_key UNIQUE (uni);


--
-- Name: star_id; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX star_id ON public.star USING btree (star_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_gr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_gr_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

