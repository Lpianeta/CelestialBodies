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
-- Name: asteroid_belt; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid_belt (
    asteroid_belt_id integer NOT NULL,
    name character varying(30),
    moon_id integer,
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL
);


ALTER TABLE public.asteroid_belt OWNER TO freecodecamp;

--
-- Name: asteroid_belt_asteroid_belt_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_belt_asteroid_belt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_belt_asteroid_belt_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_belt_asteroid_belt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_belt_asteroid_belt_id_seq OWNED BY public.asteroid_belt.asteroid_belt_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    description text,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
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
    description text,
    has_life boolean NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    planet_id integer,
    moon_id integer NOT NULL
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
    description text,
    has_life boolean NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    star_id integer,
    planet_id integer NOT NULL
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
    description text,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer,
    star_id integer NOT NULL
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
-- Name: asteroid_belt asteroid_belt_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt ALTER COLUMN asteroid_belt_id SET DEFAULT nextval('public.asteroid_belt_asteroid_belt_id_seq'::regclass);


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
-- Data for Name: asteroid_belt; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid_belt VALUES (1, 'a', NULL, 'a', 1);
INSERT INTO public.asteroid_belt VALUES (2, 'b', NULL, 'b', 2);
INSERT INTO public.asteroid_belt VALUES (3, 'c', NULL, 'c', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Posee una apariencia de un Camino de leche', 'Via Lactea', 13000, 0, 1);
INSERT INTO public.galaxy VALUES ('Galaxia espiral mas cercana de la via lactea', 'Andromeda', 10000, 2500000, 2);
INSERT INTO public.galaxy VALUES ('Tercera galaxia mas grande del grupo local', 'Triangulo', 12000, 3000000, 3);
INSERT INTO public.galaxy VALUES ('Espiral con un nucleo muy brillante', 'Sombrero', 13000, 29000000, 4);
INSERT INTO public.galaxy VALUES ('Galaxia espiral', 'Remolino', 500, 31, 5);
INSERT INTO public.galaxy VALUES ('Espiral muy brillante en la constelacion de la Osa Mayor', 'Bode', 12000, 12, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, false, 'Selene', NULL, NULL, 2, 4);
INSERT INTO public.moon VALUES (NULL, false, 'Fobos', NULL, NULL, 2, 5);
INSERT INTO public.moon VALUES (NULL, false, 'Deimos', NULL, NULL, 2, 6);
INSERT INTO public.moon VALUES (NULL, false, 'Io', NULL, NULL, 2, 7);
INSERT INTO public.moon VALUES (NULL, false, 'Europa', NULL, NULL, 2, 8);
INSERT INTO public.moon VALUES (NULL, false, 'Ganimedes', NULL, NULL, 2, 9);
INSERT INTO public.moon VALUES (NULL, false, 'Calisto', NULL, NULL, 2, 10);
INSERT INTO public.moon VALUES (NULL, false, 'Titan', NULL, NULL, 2, 11);
INSERT INTO public.moon VALUES (NULL, false, 'Rhea', NULL, NULL, 2, 12);
INSERT INTO public.moon VALUES (NULL, false, 'Encelado', NULL, NULL, 2, 13);
INSERT INTO public.moon VALUES (NULL, false, 'Mimas', NULL, NULL, 2, 14);
INSERT INTO public.moon VALUES (NULL, false, 'Titania', NULL, NULL, 2, 15);
INSERT INTO public.moon VALUES (NULL, false, 'Oberon', NULL, NULL, 2, 16);
INSERT INTO public.moon VALUES (NULL, false, 'Miranda', NULL, NULL, 2, 17);
INSERT INTO public.moon VALUES (NULL, false, 'Ariel', NULL, NULL, 2, 18);
INSERT INTO public.moon VALUES (NULL, false, 'Triron', NULL, NULL, 2, 19);
INSERT INTO public.moon VALUES (NULL, false, 'Nereida', NULL, NULL, 2, 20);
INSERT INTO public.moon VALUES (NULL, false, 'Caronte', NULL, NULL, 2, 21);
INSERT INTO public.moon VALUES (NULL, false, 'Nyx', NULL, NULL, 2, 22);
INSERT INTO public.moon VALUES (NULL, false, 'Hydra', NULL, NULL, 2, 23);
INSERT INTO public.moon VALUES (NULL, false, 'Styx', NULL, NULL, 2, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Pequeño y rocoso', false, 'Mercurio', 4500, 77, 1, 2);
INSERT INTO public.planet VALUES ('Rocoso y caliente', false, 'Venus', 4500, 41, 1, 3);
INSERT INTO public.planet VALUES ('Rica en oxigeno y grandes masas de agua', true, 'Tierra', 4500, 0, 1, 4);
INSERT INTO public.planet VALUES ('Rocoso y frio', false, 'Marte', 4500, 225, 1, 5);
INSERT INTO public.planet VALUES ('El mas grande del sistema solar', false, 'Jupiter', 4500, 628, 1, 6);
INSERT INTO public.planet VALUES ('Gigante gaseoso de hielo y roca', false, 'Saturno', 4500, 1275, 1, 7);
INSERT INTO public.planet VALUES ('Gigante de hielo', false, 'Urano', 4500, 2724, 1, 8);
INSERT INTO public.planet VALUES ('Gigante de hielo', false, 'Neptuno', 4500, 4351, 1, 9);
INSERT INTO public.planet VALUES (NULL, false, 'Proxima Centauri', NULL, NULL, 2, 10);
INSERT INTO public.planet VALUES (NULL, false, 'TRAPPIST', NULL, NULL, 2, 12);
INSERT INTO public.planet VALUES (NULL, false, 'HD 209458', NULL, NULL, 2, 13);
INSERT INTO public.planet VALUES (NULL, false, 'Kepler 452b', NULL, NULL, 2, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Nuestra estrella, una enana amarilla', 'Sol', 4600, 0, 1, 1);
INSERT INTO public.star VALUES ('La estrella mas brillante del cielo nocturno', 'Sirius', 242, 8.6, 1, 2);
INSERT INTO public.star VALUES ('Super gigante roja, en la fase final de su vida', 'Betelgeuse', 10, 642, 1, 3);
INSERT INTO public.star VALUES ('Estrella azul supergigante', 'Rigel', 8, 863, 1, 4);
INSERT INTO public.star VALUES ('Estrella brillante en la constelacion de Lira', 'Vega', 455, 25, 1, 5);
INSERT INTO public.star VALUES ('Gigante roja en la constelacion de Tauro', 'Aldebaran', 6400, 65, 1, 6);


--
-- Name: asteroid_belt_asteroid_belt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_belt_asteroid_belt_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid_belt asteroid_belt_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_name_key UNIQUE (name);


--
-- Name: asteroid_belt asteroid_belt_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_pkey PRIMARY KEY (asteroid_belt_id);


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
-- Name: star galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: asteroid_belt moon_asteroid_belt; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT moon_asteroid_belt FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

