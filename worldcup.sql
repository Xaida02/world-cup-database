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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 'Final', 1, 28, 29, 4, 2);
INSERT INTO public.games VALUES (2018, 'Third Place', 2, 30, 31, 2, 0);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 3, 29, 31, 2, 1);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 4, 28, 30, 1, 0);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 5, 29, 32, 3, 2);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 6, 31, 33, 2, 0);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 7, 30, 34, 2, 1);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 8, 28, 35, 2, 0);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 9, 31, 36, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 10, 33, 37, 1, 0);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 11, 30, 38, 3, 2);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 12, 34, 39, 2, 0);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 13, 29, 40, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 14, 32, 41, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 15, 35, 42, 2, 1);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 16, 28, 43, 4, 3);
INSERT INTO public.games VALUES (2014, 'Final', 17, 44, 43, 1, 0);
INSERT INTO public.games VALUES (2014, 'Third Place', 18, 45, 34, 3, 0);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 19, 43, 45, 1, 0);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 20, 44, 34, 7, 1);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 21, 45, 46, 1, 0);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 22, 43, 30, 1, 0);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 23, 34, 36, 2, 1);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 24, 44, 28, 1, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 25, 34, 47, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 26, 36, 35, 2, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 27, 28, 48, 2, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 28, 44, 49, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 29, 45, 39, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 30, 46, 50, 2, 1);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 31, 43, 37, 1, 0);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 32, 30, 51, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (28, 'France');
INSERT INTO public.teams VALUES (29, 'Croatia');
INSERT INTO public.teams VALUES (30, 'Belgium');
INSERT INTO public.teams VALUES (31, 'England');
INSERT INTO public.teams VALUES (32, 'Russia');
INSERT INTO public.teams VALUES (33, 'Sweden');
INSERT INTO public.teams VALUES (34, 'Brazil');
INSERT INTO public.teams VALUES (35, 'Uruguay');
INSERT INTO public.teams VALUES (36, 'Colombia');
INSERT INTO public.teams VALUES (37, 'Switzerland');
INSERT INTO public.teams VALUES (38, 'Japan');
INSERT INTO public.teams VALUES (39, 'Mexico');
INSERT INTO public.teams VALUES (40, 'Denmark');
INSERT INTO public.teams VALUES (41, 'Spain');
INSERT INTO public.teams VALUES (42, 'Portugal');
INSERT INTO public.teams VALUES (43, 'Argentina');
INSERT INTO public.teams VALUES (44, 'Germany');
INSERT INTO public.teams VALUES (45, 'Netherlands');
INSERT INTO public.teams VALUES (46, 'Costa Rica');
INSERT INTO public.teams VALUES (47, 'Chile');
INSERT INTO public.teams VALUES (48, 'Nigeria');
INSERT INTO public.teams VALUES (49, 'Algeria');
INSERT INTO public.teams VALUES (50, 'Greece');
INSERT INTO public.teams VALUES (51, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 51, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

