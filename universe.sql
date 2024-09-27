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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_there_life boolean NOT NULL,
    description character varying(400) NOT NULL,
    age_in_million_years integer NOT NULL
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
    name character varying(30),
    description character varying(400) NOT NULL,
    is_there_life boolean NOT NULL,
    distance_to_earth_in_au numeric(20,10) NOT NULL,
    age_in_million_years integer NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    is_there_life boolean NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(400) NOT NULL,
    age_in_million_years integer NOT NULL,
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
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_species_id_seq OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_species_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description character varying(400) NOT NULL,
    is_there_life boolean NOT NULL,
    age_in_million_years integer NOT NULL,
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'The galaxy earth is in', 13600);
INSERT INTO public.galaxy VALUES (2, 'Ursa Major III', false, '2nd closest galaxy to the Earth', 11000);
INSERT INTO public.galaxy VALUES (3, 'Draco III', false, '3rd closest galaxy to the Earth', 10000);
INSERT INTO public.galaxy VALUES (4, 'Galaxy4', false, 'Mock galaxy entry 4', 10000);
INSERT INTO public.galaxy VALUES (5, 'Galaxy5', false, 'Mock galaxy entry 5', 10000);
INSERT INTO public.galaxy VALUES (6, 'Galaxy6', false, 'Mock galaxy entry 6', 10000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The natural satellite of Earth influencing tides and stabilizing the planets axis.', false, 0.0025700000, 4500, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'One of Mars moons, a small irregularly shaped object.', false, 0.0000560000, 4500, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller and outermost of the two moons of Mars.', false, 0.0001520000, 4500, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 'One of Jupiters largest moons, suspected to have a subsurface ocean.', true, 0.0042030000, 4500, 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'The largest moon in the Solar System, even larger than Mercury.', false, 0.0071550000, 4500, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 'A heavily cratered moon of Jupiter believed to have a subsurface ocean.', false, 0.0073480000, 4500, 5);
INSERT INTO public.moon VALUES (7, 'Io', 'Jupiters volcanic moon, known for its active volcanoes.', false, 0.0042160000, 4500, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturns largest moon with a thick atmosphere and potential for life.', true, 0.0081790000, 4500, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'A small icy moon of Saturn with geysers suggesting a subsurface ocean.', true, 0.0087400000, 4500, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', 'The second largest moon of Saturn, an icy body with a thin atmosphere.', false, 0.0085000000, 4500, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 'The largest moon of Neptune with a retrograde orbit.', false, 0.0300820000, 4500, 8);
INSERT INTO public.moon VALUES (12, 'Nereid', 'An irregular moon of Neptune known for its eccentric orbit.', false, 0.0345000000, 4500, 8);
INSERT INTO public.moon VALUES (13, 'Ursa Major B1a', 'A small moon orbiting the planet Ursa Major B1 in the Ursa Major III galaxy.', false, 5000.0000000000, 6000, 9);
INSERT INTO public.moon VALUES (14, 'Ursa Major B1b', 'A second moon orbiting Ursa Major B1 mostly rocky with some icy features.', false, 5050.0000000000, 6000, 9);
INSERT INTO public.moon VALUES (15, 'Draco III Prime A', 'A moon orbiting the habitable planet Draco III Prime potentially harboring microbial life.', true, 6500.0000000000, 9000, 10);
INSERT INTO public.moon VALUES (16, 'Draco III Prime B', 'A barren rocky moon orbiting Draco III Prime.', false, 6550.0000000000, 9000, 10);
INSERT INTO public.moon VALUES (17, 'TRAPPIST-1d Moon', 'A moon orbiting TRAPPIST-1d possibly tidally locked to the planet.', false, 39.5000000000, 780, 12);
INSERT INTO public.moon VALUES (18, 'TRAPPIST-1e Moon', 'A small icy moon orbiting TRAPPIST-1e with potential for liquid water.', false, 40.2000000000, 780, 12);
INSERT INTO public.moon VALUES (19, 'Alpha Centauri Bb Moon 1', 'A moon orbiting a planet in the Alpha Centauri system mostly barren.', false, 4.3500000000, 4500, 2);
INSERT INTO public.moon VALUES (20, 'Alpha Centauri Bb Moon 2', 'A second moon of Alpha Centauri Bb with a thin atmosphere and rocky terrain.', false, 4.4000000000, 4500, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, true, 'Earth', 'The only planet known to support life, home to diverse ecosystems and civilizations.', 4500, 1);
INSERT INTO public.planet VALUES (2, false, 'Mercury', 'The smallest planet in the Solar System and the closest to the Sun.', 4500, 1);
INSERT INTO public.planet VALUES (3, false, 'Venus', 'Second planet from the Sun, known for its thick, toxic atmosphere and extreme heat.', 4500, 1);
INSERT INTO public.planet VALUES (4, false, 'Mars', 'The Red Planet, known for its potential to harbor life in the distant past.', 4500, 1);
INSERT INTO public.planet VALUES (5, false, 'Jupiter', 'The largest planet in the Solar System, a gas giant with a massive storm system.', 4500, 1);
INSERT INTO public.planet VALUES (6, false, 'Saturn', 'Famous for its ring system, Saturn is another gas giant orbiting the Sun.', 4500, 1);
INSERT INTO public.planet VALUES (7, false, 'Uranus', 'An ice giant with a unique tilt, causing extreme seasonal changes.', 4500, 1);
INSERT INTO public.planet VALUES (8, false, 'Neptune', 'The outermost planet in the Solar System, known for its intense blue color and strong winds.', 4500, 1);
INSERT INTO public.planet VALUES (9, false, 'Ursa Major B1', 'A rocky planet in the Ursa Major III galaxy, with a surface covered in craters.', 6000, 4);
INSERT INTO public.planet VALUES (10, true, 'Draco III Prime', 'A potentially habitable planet in the Draco III galaxy with evidence of primitive life.', 9000, 6);
INSERT INTO public.planet VALUES (11, false, 'Draco III B2', 'A gas giant in the Draco III galaxy, known for its vibrant blue clouds and multiple moons.', 9500, 6);
INSERT INTO public.planet VALUES (12, true, 'TRAPPIST-1d', 'A planet in the habitable zone of TRAPPIST-1, potentially covered in oceans.', 780, 5);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Homo Sapiens', 1, 'The dominant species on Earth, known for their intelligence, complex societies, and technological advancements.');
INSERT INTO public.species VALUES (2, 'Pan Troglodytes', 1, 'Commonly known as chimpanzees, these primates are closely related to humans and exhibit advanced social behaviors.');
INSERT INTO public.species VALUES (3, 'Balaenoptera Musculus', 1, 'Also known as the blue whale, the largest animal on Earth, known for its immense size and migratory patterns.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The central star of the Solar System, providing light and warmth necessary for life on Earth.', true, 4600, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 'Closest star system to the Solar System, located 4.37 light-years away.', false, 4500, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the constellation Orion, expected to go supernova.', false, 10000, 2);
INSERT INTO public.star VALUES (4, 'Sirius', 'The brightest star in the night sky, part of a binary star system.', false, 300, 1);
INSERT INTO public.star VALUES (5, 'Vega', 'A bright star in the Lyra constellation, used as a reference for brightness calibration.', false, 455, 1);
INSERT INTO public.star VALUES (6, 'TRAPPIST-1', 'An ultra-cool dwarf star with seven Earth-sized planets, three of which are in the habitable zone.', true, 780, 3);


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
-- Name: species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_species_id_seq', 3, true);


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
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: species fk_species_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT fk_species_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

