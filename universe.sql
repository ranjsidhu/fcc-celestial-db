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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(50) NOT NULL,
    third_column integer
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_billion_years integer NOT NULL,
    diameter_light_years numeric,
    description text,
    has_black_hole boolean NOT NULL,
    is_spiral boolean
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
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    diameter_km integer NOT NULL,
    orbital_period_days numeric,
    surface_features text
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
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    diameter_km integer NOT NULL,
    orbital_period_years numeric,
    atmospheric_condition text,
    is_habitable boolean NOT NULL,
    has_rings boolean
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
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    temperature_kelvin integer NOT NULL,
    mass_solar_masses numeric,
    spectral_class text,
    is_binary boolean NOT NULL,
    has_planets boolean
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


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
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'Random Entity Alpha', 42);
INSERT INTO public.fifth_table VALUES (2, 'Cosmic Object Beta', 157);
INSERT INTO public.fifth_table VALUES (3, 'Stellar Body Gamma', 983);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 100000, 'Our home galaxy', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 220000, 'Nearest major galaxy to Milky Way', true, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10, 60000, 'Third-largest galaxy in Local Group', false, true);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 1, 14000, 'Satellite galaxy of Milky Way', false, false);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 6, 7000, 'Dwarf galaxy near Milky Way', false, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 13, 50000, 'Notable for its bright nucleus', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Luna', 3474, 27.3, 'Craters, Maria, Highlands');
INSERT INTO public.moon VALUES (2, 4, 'Phobos', 22, 0.31, 'Craters, Grooves');
INSERT INTO public.moon VALUES (3, 4, 'Deimos', 12, 1.26, 'Craters');
INSERT INTO public.moon VALUES (4, 5, 'Io', 3642, 1.77, 'Volcanoes, Sulfur plains');
INSERT INTO public.moon VALUES (5, 5, 'Europa', 3122, 3.55, 'Ice crust, Lineae');
INSERT INTO public.moon VALUES (6, 5, 'Ganymede', 5268, 7.15, 'Ice, Craters, Tectonic features');
INSERT INTO public.moon VALUES (7, 5, 'Callisto', 4821, 16.69, 'Craters, Ice');
INSERT INTO public.moon VALUES (8, 6, 'Titan', 5150, 15.95, 'Lakes, Seas, Dunes');
INSERT INTO public.moon VALUES (9, 6, 'Enceladus', 504, 1.37, 'Ice, Cryovolcanoes');
INSERT INTO public.moon VALUES (10, 6, 'Mimas', 396, 0.94, 'Large impact crater');
INSERT INTO public.moon VALUES (11, 6, 'Rhea', 1527, 4.52, 'Ice, Craters');
INSERT INTO public.moon VALUES (12, 7, 'Miranda', 472, 1.41, 'Ice canyons');
INSERT INTO public.moon VALUES (13, 7, 'Ariel', 1158, 2.52, 'Ice plains');
INSERT INTO public.moon VALUES (14, 7, 'Umbriel', 1169, 4.14, 'Dark surface, Craters');
INSERT INTO public.moon VALUES (15, 7, 'Titania', 1577, 8.71, 'Ice canyons, Craters');
INSERT INTO public.moon VALUES (16, 7, 'Oberon', 1523, 13.46, 'Ice, Craters');
INSERT INTO public.moon VALUES (17, 8, 'Triton', 2707, 5.88, 'Nitrogen ice, Geysers');
INSERT INTO public.moon VALUES (18, 8, 'Naiad', 58, 0.29, 'Irregular shape');
INSERT INTO public.moon VALUES (19, 8, 'Thalassa', 82, 0.31, 'Irregular shape');
INSERT INTO public.moon VALUES (20, 8, 'Despina', 150, 0.33, 'Irregular shape');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 4879, 0.24, 'Minimal - Sodium, Potassium', false, false);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 12104, 0.62, 'CO2, Nitrogen', false, false);
INSERT INTO public.planet VALUES (3, 1, 'Earth', 12742, 1.00, 'Nitrogen, Oxygen', true, false);
INSERT INTO public.planet VALUES (4, 1, 'Mars', 6779, 1.88, 'CO2, Nitrogen, Argon', false, false);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 139820, 11.86, 'Hydrogen, Helium', false, true);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 116460, 29.46, 'Hydrogen, Helium', false, true);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 50724, 84.01, 'Hydrogen, Helium, Methane', false, true);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 49244, 164.79, 'Hydrogen, Helium, Methane', false, true);
INSERT INTO public.planet VALUES (9, 2, 'Proxima b', 12000, 0.03, 'Unknown', true, false);
INSERT INTO public.planet VALUES (10, 6, 'Vega b', 15000, 0.20, 'Unknown', false, false);
INSERT INTO public.planet VALUES (11, 6, 'Vega c', 20000, 0.50, 'Unknown', false, false);
INSERT INTO public.planet VALUES (12, 6, 'Vega d', 18000, 1.20, 'Unknown', false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sol', 5778, 1.0, 'G2V', false, true);
INSERT INTO public.star VALUES (2, 1, 'Proxima Centauri', 3042, 0.12, 'M5Ve', false, true);
INSERT INTO public.star VALUES (3, 1, 'Alpha Centauri A', 5790, 1.1, 'G2V', true, false);
INSERT INTO public.star VALUES (4, 1, 'Sirius', 9940, 2.02, 'A1V', true, false);
INSERT INTO public.star VALUES (5, 1, 'Betelgeuse', 3600, 16.5, 'M1-2', false, false);
INSERT INTO public.star VALUES (6, 1, 'Vega', 9602, 2.1, 'A0V', false, true);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 3, true);


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
-- Name: fifth_table fifth_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_name_key UNIQUE (name);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


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

