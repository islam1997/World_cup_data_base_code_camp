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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (1154, 2018, 'Final', 892, 893, 4, 2);
INSERT INTO public.games VALUES (1155, 2018, 'Third Place', 894, 895, 2, 0);
INSERT INTO public.games VALUES (1156, 2018, 'Semi-Final', 893, 895, 2, 1);
INSERT INTO public.games VALUES (1157, 2018, 'Semi-Final', 892, 894, 1, 0);
INSERT INTO public.games VALUES (1158, 2018, 'Quarter-Final', 893, 896, 3, 2);
INSERT INTO public.games VALUES (1159, 2018, 'Quarter-Final', 895, 897, 2, 0);
INSERT INTO public.games VALUES (1160, 2018, 'Quarter-Final', 894, 898, 2, 1);
INSERT INTO public.games VALUES (1161, 2018, 'Quarter-Final', 892, 899, 2, 0);
INSERT INTO public.games VALUES (1162, 2018, 'Eighth-Final', 895, 900, 2, 1);
INSERT INTO public.games VALUES (1163, 2018, 'Eighth-Final', 897, 901, 1, 0);
INSERT INTO public.games VALUES (1164, 2018, 'Eighth-Final', 894, 902, 3, 2);
INSERT INTO public.games VALUES (1165, 2018, 'Eighth-Final', 898, 903, 2, 0);
INSERT INTO public.games VALUES (1166, 2018, 'Eighth-Final', 893, 904, 2, 1);
INSERT INTO public.games VALUES (1167, 2018, 'Eighth-Final', 896, 905, 2, 1);
INSERT INTO public.games VALUES (1168, 2018, 'Eighth-Final', 899, 906, 2, 1);
INSERT INTO public.games VALUES (1169, 2018, 'Eighth-Final', 892, 907, 4, 3);
INSERT INTO public.games VALUES (1170, 2014, 'Final', 908, 907, 1, 0);
INSERT INTO public.games VALUES (1171, 2014, 'Third Place', 909, 898, 3, 0);
INSERT INTO public.games VALUES (1172, 2014, 'Semi-Final', 907, 909, 1, 0);
INSERT INTO public.games VALUES (1173, 2014, 'Semi-Final', 908, 898, 7, 1);
INSERT INTO public.games VALUES (1174, 2014, 'Quarter-Final', 909, 910, 1, 0);
INSERT INTO public.games VALUES (1175, 2014, 'Quarter-Final', 907, 894, 1, 0);
INSERT INTO public.games VALUES (1176, 2014, 'Quarter-Final', 898, 900, 2, 1);
INSERT INTO public.games VALUES (1177, 2014, 'Quarter-Final', 908, 892, 1, 0);
INSERT INTO public.games VALUES (1178, 2014, 'Eighth-Final', 898, 911, 2, 1);
INSERT INTO public.games VALUES (1179, 2014, 'Eighth-Final', 900, 899, 2, 0);
INSERT INTO public.games VALUES (1180, 2014, 'Eighth-Final', 892, 912, 2, 0);
INSERT INTO public.games VALUES (1181, 2014, 'Eighth-Final', 908, 913, 2, 1);
INSERT INTO public.games VALUES (1182, 2014, 'Eighth-Final', 909, 903, 2, 1);
INSERT INTO public.games VALUES (1183, 2014, 'Eighth-Final', 910, 914, 2, 1);
INSERT INTO public.games VALUES (1184, 2014, 'Eighth-Final', 907, 901, 1, 0);
INSERT INTO public.games VALUES (1185, 2014, 'Eighth-Final', 894, 915, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (892, 'France');
INSERT INTO public.teams VALUES (893, 'Croatia');
INSERT INTO public.teams VALUES (894, 'Belgium');
INSERT INTO public.teams VALUES (895, 'England');
INSERT INTO public.teams VALUES (896, 'Russia');
INSERT INTO public.teams VALUES (897, 'Sweden');
INSERT INTO public.teams VALUES (898, 'Brazil');
INSERT INTO public.teams VALUES (899, 'Uruguay');
INSERT INTO public.teams VALUES (900, 'Colombia');
INSERT INTO public.teams VALUES (901, 'Switzerland');
INSERT INTO public.teams VALUES (902, 'Japan');
INSERT INTO public.teams VALUES (903, 'Mexico');
INSERT INTO public.teams VALUES (904, 'Denmark');
INSERT INTO public.teams VALUES (905, 'Spain');
INSERT INTO public.teams VALUES (906, 'Portugal');
INSERT INTO public.teams VALUES (907, 'Argentina');
INSERT INTO public.teams VALUES (908, 'Germany');
INSERT INTO public.teams VALUES (909, 'Netherlands');
INSERT INTO public.teams VALUES (910, 'Costa Rica');
INSERT INTO public.teams VALUES (911, 'Chile');
INSERT INTO public.teams VALUES (912, 'Nigeria');
INSERT INTO public.teams VALUES (913, 'Algeria');
INSERT INTO public.teams VALUES (914, 'Greece');
INSERT INTO public.teams VALUES (915, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 1185, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 915, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

