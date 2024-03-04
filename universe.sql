--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    entity_id integer,
    entity_type character varying(60),
    name character varying(60) NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_des_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_des_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_des_id_seq OWNER TO freecodecamp;

--
-- Name: description_des_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_des_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_type character varying(60),
    distance_from_earth integer NOT NULL,
    description text,
    age_in_millions_of_year integer NOT NULL
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
    name character varying(60) NOT NULL,
    planet_id integer,
    diameter integer NOT NULL,
    is_inhabited boolean NOT NULL,
    description text
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
    name character varying(60) NOT NULL,
    star_id integer,
    radius integer NOT NULL,
    temperature numeric,
    has_water boolean NOT NULL,
    planet_type character varying(50),
    description text
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
    name character varying(60),
    galaxy_id integer,
    mass numeric NOT NULL,
    is_main_sequence boolean NOT NULL,
    is_spherical boolean NOT NULL,
    description text
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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_des_id_seq'::regclass);


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
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (5, 1, 'Galaxy', 'Milky Way');
INSERT INTO public.description VALUES (6, 2, 'Galaxy', 'Andromeda');
INSERT INTO public.description VALUES (7, 3, 'Star', 'Sun');
INSERT INTO public.description VALUES (8, 4, 'Star', 'Alpha Centauri A');
INSERT INTO public.description VALUES (9, 5, 'Planet', 'Earth');
INSERT INTO public.description VALUES (10, 6, 'Planet', 'Mars');
INSERT INTO public.description VALUES (11, 7, 'Moon', 'Luna');
INSERT INTO public.description VALUES (12, 8, 'Moon', 'Phobos');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, 'Our home galaxy', 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, 'Nearest spiral galaxy to Milky Way', 22000);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Elliptical', 54200000, 'Hosts the supermassive black hole M87*', 13000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral', 3000000, 'Third-largest galaxy in the Local Group', 13000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', 37000000, 'Interacting galaxy with NGC 5195', 13000);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Elliptical', 13200000, 'Active galaxy with a prominent dust lane', 13000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 3475, false, 'Earth''s only natural satellite');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 22, false, 'Larger and closer of Mars'' two moons');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 12, false, 'Smaller and farther of Mars'' two moons');
INSERT INTO public.moon VALUES (4, 'Io', 5, 3643, false, 'Most volcanically active body in the Solar System');
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3121, false, 'Smoothest surface of any known solid object in the Solar System');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5262, false, 'Largest moon of Jupiter and in the Solar System');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 4821, false, 'Second-largest moon of Jupiter and third-largest in the Solar System');
INSERT INTO public.moon VALUES (8, 'Titan', 6, 5150, false, 'Largest moon of Saturn, has a dense atmosphere');
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 504, false, 'Contains an ocean beneath its icy surface, with active geysers');
INSERT INTO public.moon VALUES (10, 'Rhea', 6, 1528, false, 'Second-largest moon of Saturn after Titan');
INSERT INTO public.moon VALUES (11, 'Triton', 7, 2706, false, 'Largest moon of Neptune, has a retrograde orbit');
INSERT INTO public.moon VALUES (12, 'Charon', 9, 1212, false, 'Largest moon of Pluto, part of a binary system with Pluto');
INSERT INTO public.moon VALUES (13, 'Io-1', 5, 2653, false, 'First discovered of the four Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (14, 'Io-2', 5, 2086, false, 'Second discovered of the four Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (15, 'Io-3', 5, 1821, false, 'Third discovered of the four Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (16, 'Io-4', 5, 2269, false, 'Fourth discovered of the four Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (17, 'Ganymede-1', 5, 2921, false, 'First discovered of the Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (18, 'Ganymede-2', 5, 3212, false, 'Second discovered of the Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (19, 'Ganymede-3', 5, 2765, false, 'Third discovered of the Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (20, 'Callisto-1', 5, 4512, false, '



;
);
');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 2439, 442, false, 'Terrestrial', 'Innermost planet in the Solar System');
INSERT INTO public.planet VALUES (2, 'Venus', 1, 6052, 737, false, 'Terrestrial', 'Second planet from the Sun, known for its thick atmosphere');
INSERT INTO public.planet VALUES (3, 'Earth', 1, 6371, 288, true, 'Terrestrial', 'Our home planet');
INSERT INTO public.planet VALUES (4, 'Mars', 1, 3390, 210, false, 'Terrestrial', 'Fourth planet from the Sun, also known as the Red Planet');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 69911, 165, false, 'Gas giant', 'Largest planet in the Solar System');
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 58232, 134, false, 'Gas giant', 'Second-largest planet in the Solar System, known for its rings');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 25362, 76, false, 'Ice giant', 'Seventh planet from the Sun, rotates on its side');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 24622, 72, false, 'Ice giant', 'Eighth and farthest known planet from the Sun in the Solar System');
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 6, 24000, 265, true, 'Terrestrial', 'Exoplanet orbiting within the habitable zone of the Sun-like star Kepler-452');
INSERT INTO public.planet VALUES (10, 'Gliese 581c', 5, 15777, 45, true, 'Terrestrial', 'First exoplanet discovered in the habitable zone of its star');
INSERT INTO public.planet VALUES (11, 'TrES-2b', 4, 118000, 1340, false, 'Gas giant', 'Exoplanet with extremely low albedo, appearing almost pitch black');
INSERT INTO public.planet VALUES (12, '55 Cancri e', 3, 8000, 3500, false, 'Terrestrial', 'Super-Earth exoplanet orbiting very close to its host star');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1989000000000000000000000000000, true, true, 'The star at the center of the Solar System');
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 1, 2187900000000000000000000000000.0, true, true, 'Closest star system to the Solar System');
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 1, 1804023000000000000000000000000.000, true, true, 'Closest star system to the Solar System');
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, 245641500000000000000000000000.0000, true, true, 'Closest known star to the Sun');
INSERT INTO public.star VALUES (5, 'Sirius', 1, 4103307000000000000000000000000.000, true, true, 'Brightest star in the night sky');
INSERT INTO public.star VALUES (6, 'Vega', 1, 4246515000000000000000000000000.000, true, true, 'Bright star in the northern sky');


--
-- Name: description_des_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_des_id_seq', 12, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_description UNIQUE (description);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


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

