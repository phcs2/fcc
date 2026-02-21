--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    age_in_millions_of_years integer,
    description text,
    size_in_billions_km integer
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
    planet_id integer NOT NULL,
    size_in_km integer,
    distance_km integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    has_water boolean,
    size_in_km integer,
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
    galaxy_id integer NOT NULL,
    size_in_millions_km integer,
    age_in_billions_of_years numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_colors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_colors (
    name character varying(10) NOT NULL,
    star_colors_id integer NOT NULL,
    strength integer
);


ALTER TABLE public.star_colors OWNER TO freecodecamp;

--
-- Name: star_colors_color_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_colors_color_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_colors_color_id_seq OWNER TO freecodecamp;

--
-- Name: star_colors_color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_colors_color_id_seq OWNED BY public.star_colors.star_colors_id;


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.star_id;


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star_colors star_colors_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_colors ALTER COLUMN star_colors_id SET DEFAULT nextval('public.star_colors_color_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 5000, 'g1 description', 1000);
INSERT INTO public.galaxy VALUES (2, 'g2', 6000, 'g2 description', 1500);
INSERT INTO public.galaxy VALUES (3, 'g3', 7000, 'g3 description', 2000);
INSERT INTO public.galaxy VALUES (4, 'g4', 8000, 'g4 description', 2500);
INSERT INTO public.galaxy VALUES (5, 'g5', 3000, 'g5 description', 3000);
INSERT INTO public.galaxy VALUES (6, 'g6', 10000, 'g6 description', 10000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 1, 1500, 400000);
INSERT INTO public.moon VALUES (2, 'm2', 2, 1600, 500000);
INSERT INTO public.moon VALUES (3, 'm3', 3, 1700, 600000);
INSERT INTO public.moon VALUES (4, 'm4', 4, 1800, 700000);
INSERT INTO public.moon VALUES (5, 'm5', 5, 1600, 500000);
INSERT INTO public.moon VALUES (6, 'm6', 6, 1700, 600000);
INSERT INTO public.moon VALUES (7, 'm7', 7, 1800, 700000);
INSERT INTO public.moon VALUES (8, 'm8', 8, 1600, 500000);
INSERT INTO public.moon VALUES (9, 'm9', 9, 1700, 600000);
INSERT INTO public.moon VALUES (10, 'm10', 10, 1800, 700000);
INSERT INTO public.moon VALUES (11, 'm11', 11, 1600, 500000);
INSERT INTO public.moon VALUES (12, 'm12', 12, 1700, 600000);
INSERT INTO public.moon VALUES (13, 'm13', 13, 1800, 700000);
INSERT INTO public.moon VALUES (14, 'm14', 14, 1600, 500000);
INSERT INTO public.moon VALUES (15, 'm15', 15, 1700, 600000);
INSERT INTO public.moon VALUES (16, 'm16', 16, 1800, 700000);
INSERT INTO public.moon VALUES (17, 'm17', 16, 1600, 1500000);
INSERT INTO public.moon VALUES (18, 'm18', 16, 1700, 1900000);
INSERT INTO public.moon VALUES (19, 'm19', 16, 1800, 2700000);
INSERT INTO public.moon VALUES (20, 'm20', 16, 300, 4700000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', false, false, 8000, 1);
INSERT INTO public.planet VALUES (2, 'p2', false, false, 12000, 1);
INSERT INTO public.planet VALUES (3, 'p3', false, false, 24000, 1);
INSERT INTO public.planet VALUES (4, 'p4', false, false, 8000, 2);
INSERT INTO public.planet VALUES (5, 'p5', false, false, 12000, 2);
INSERT INTO public.planet VALUES (6, 'p6', false, false, 24000, 2);
INSERT INTO public.planet VALUES (7, 'p7', false, false, 8000, 3);
INSERT INTO public.planet VALUES (8, 'p8', false, false, 12000, 3);
INSERT INTO public.planet VALUES (9, 'p9', false, false, 24000, 3);
INSERT INTO public.planet VALUES (10, 'p10', false, false, 8000, 4);
INSERT INTO public.planet VALUES (11, 'p11', false, false, 12000, 4);
INSERT INTO public.planet VALUES (12, 'p12', false, false, 24000, 4);
INSERT INTO public.planet VALUES (13, 'p13', false, false, 8000, 5);
INSERT INTO public.planet VALUES (14, 'p14', false, false, 12000, 5);
INSERT INTO public.planet VALUES (15, 'p15', false, false, 24000, 6);
INSERT INTO public.planet VALUES (16, 'p16', false, false, 28000, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', 1, 1, 4);
INSERT INTO public.star VALUES (2, 's2', 2, 2, 5);
INSERT INTO public.star VALUES (3, 's3', 3, 2, 6);
INSERT INTO public.star VALUES (4, 's4', 4, 1, 7);
INSERT INTO public.star VALUES (5, 's5', 5, 3, 3);
INSERT INTO public.star VALUES (6, 's6', 6, 1, 4);


--
-- Data for Name: star_colors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_colors VALUES ('red', 1, NULL);
INSERT INTO public.star_colors VALUES ('yellow', 2, NULL);
INSERT INTO public.star_colors VALUES ('blue', 3, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_colors_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_colors_color_id_seq', 3, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


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
-- Name: star_colors star_colors_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_colors
    ADD CONSTRAINT star_colors_name_key UNIQUE (name);


--
-- Name: star_colors star_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_colors
    ADD CONSTRAINT star_colors_pkey PRIMARY KEY (star_colors_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

