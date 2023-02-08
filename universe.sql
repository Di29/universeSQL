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
    name character varying(30) NOT NULL,
    description text,
    galaxy_types character varying(30) NOT NULL,
    age_in_million_of_years integer NOT NULL
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
    name character varying(30) NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL
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
-- Name: organism; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.organism (
    organism_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.organism OWNER TO freecodecamp;

--
-- Name: organism_organism_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.organism_organism_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organism_organism_id_seq OWNER TO freecodecamp;

--
-- Name: organism_organism_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.organism_organism_id_seq OWNED BY public.organism.organism_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_types character varying(20) NOT NULL,
    has_life boolean NOT NULL,
    age_in_million_of_years integer NOT NULL,
    star_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric(10,1) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: organism organism_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organism ALTER COLUMN organism_id SET DEFAULT nextval('public.organism_organism_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Needle', 'asdfg', 'A type', 100);
INSERT INTO public.galaxy VALUES (2, 'Sunflower', 'qweet', 'B type', 120);
INSERT INTO public.galaxy VALUES (3, 'Malin', 'rierieridf', 'C type', 130);
INSERT INTO public.galaxy VALUES (4, 'Orion', 'euieidfjfdjfd', 'A type', 140);
INSERT INTO public.galaxy VALUES (5, 'Starfish', 'dglkdjglsjgeroigj', 'B type', 120);
INSERT INTO public.galaxy VALUES (6, 'Ceres', 'fjxxcjxckjvn', 'C type', 100);
INSERT INTO public.galaxy VALUES (7, 'Alindas', 'qweoqwxcap', 'A type', 150);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (27, 'a', 1, true, 13);
INSERT INTO public.moon VALUES (28, 'b', 2, true, 24);
INSERT INTO public.moon VALUES (29, 'c', 3, true, 23);
INSERT INTO public.moon VALUES (30, 'd', 4, true, 22);
INSERT INTO public.moon VALUES (31, 'e', 1, true, 21);
INSERT INTO public.moon VALUES (32, 'f', 2, true, 20);
INSERT INTO public.moon VALUES (33, 'g', 2, true, 19);
INSERT INTO public.moon VALUES (34, 'h', 3, true, 18);
INSERT INTO public.moon VALUES (35, 'i', 3, true, 17);
INSERT INTO public.moon VALUES (36, 'j', 2, true, 16);
INSERT INTO public.moon VALUES (37, 'q', 1, true, 15);
INSERT INTO public.moon VALUES (38, 'w', 2, true, 14);
INSERT INTO public.moon VALUES (39, 'r', 2, true, 13);
INSERT INTO public.moon VALUES (40, 'aa', 1, true, 13);
INSERT INTO public.moon VALUES (41, 'bb', 2, true, 14);
INSERT INTO public.moon VALUES (42, 'cc', 3, true, 15);
INSERT INTO public.moon VALUES (43, 'dd', 2, true, 16);
INSERT INTO public.moon VALUES (44, 'ee', 3, true, 17);
INSERT INTO public.moon VALUES (45, 'ww', 2, true, 18);
INSERT INTO public.moon VALUES (46, 'rr', 3, true, 19);
INSERT INTO public.moon VALUES (47, 'tt', 3, true, 20);
INSERT INTO public.moon VALUES (48, 'vv', 2, true, 21);
INSERT INTO public.moon VALUES (49, 'xx', 1, true, 22);


--
-- Data for Name: organism; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.organism VALUES (1, 'human', 14, 2);
INSERT INTO public.organism VALUES (2, 'bacteria', 15, 3);
INSERT INTO public.organism VALUES (3, 'microb', 18, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', NULL, 'smallest', false, 400, 2);
INSERT INTO public.planet VALUES (14, 'Venus', NULL, 'smallest', false, 300, 1);
INSERT INTO public.planet VALUES (15, 'Earth', NULL, 'normal', true, 500, 3);
INSERT INTO public.planet VALUES (16, 'Mars', NULL, 'normal', true, 350, 4);
INSERT INTO public.planet VALUES (17, 'Jupiter', NULL, 'biggest', false, 450, 5);
INSERT INTO public.planet VALUES (18, 'Saturn', NULL, 'biggest', false, 550, 6);
INSERT INTO public.planet VALUES (19, 'Uranus', NULL, 'fastest', false, 600, 6);
INSERT INTO public.planet VALUES (20, 'Neptune', NULL, 'farest', false, 650, 1);
INSERT INTO public.planet VALUES (21, 'Pluto', NULL, 'dwarf', false, 700, 2);
INSERT INTO public.planet VALUES (22, 'Makemake', NULL, 'dwarf', false, 500, 3);
INSERT INTO public.planet VALUES (23, 'Eris', NULL, 'dwarf', false, 400, 4);
INSERT INTO public.planet VALUES (24, 'Haumea', NULL, 'dwarf', false, 300, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Kentaurus', 'qqqqqq', true, 12343.5, 7);
INSERT INTO public.star VALUES (2, 'Arcturus', 'wwwww', true, 123123.0, 6);
INSERT INTO public.star VALUES (3, 'Vega', 'eeeee', false, 98393.6, 5);
INSERT INTO public.star VALUES (4, 'Capella', 'rtrtrt', true, 5774784.3, 4);
INSERT INTO public.star VALUES (5, 'Rigel', 'zxczxczxc', false, 238233.1, 3);
INSERT INTO public.star VALUES (6, 'Procyon Alpha', 'bgcbcbf', true, 2983742.8, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 49, true);


--
-- Name: organism_organism_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.organism_organism_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: organism organism_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organism
    ADD CONSTRAINT organism_name_key UNIQUE (name);


--
-- Name: organism organism_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organism
    ADD CONSTRAINT organism_pkey PRIMARY KEY (organism_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: organism fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organism
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: organism fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organism
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

