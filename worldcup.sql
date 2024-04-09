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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(13) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
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

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (77, 2018, 'Final', 720, 721, 4, 2);
INSERT INTO public.games VALUES (78, 2018, 'Third Place', 722, 723, 2, 0);
INSERT INTO public.games VALUES (79, 2018, 'Semi-Final', 721, 723, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Semi-Final', 720, 722, 1, 0);
INSERT INTO public.games VALUES (81, 2018, 'Quarter-Final', 721, 724, 3, 2);
INSERT INTO public.games VALUES (82, 2018, 'Quarter-Final', 723, 725, 2, 0);
INSERT INTO public.games VALUES (83, 2018, 'Quarter-Final', 722, 726, 2, 1);
INSERT INTO public.games VALUES (84, 2018, 'Quarter-Final', 720, 727, 2, 0);
INSERT INTO public.games VALUES (85, 2018, 'Eighth-Final', 723, 728, 2, 1);
INSERT INTO public.games VALUES (86, 2018, 'Eighth-Final', 725, 729, 1, 0);
INSERT INTO public.games VALUES (87, 2018, 'Eighth-Final', 722, 730, 3, 2);
INSERT INTO public.games VALUES (88, 2018, 'Eighth-Final', 726, 731, 2, 0);
INSERT INTO public.games VALUES (89, 2018, 'Eighth-Final', 721, 732, 2, 1);
INSERT INTO public.games VALUES (90, 2018, 'Eighth-Final', 724, 733, 2, 1);
INSERT INTO public.games VALUES (91, 2018, 'Eighth-Final', 727, 734, 2, 1);
INSERT INTO public.games VALUES (92, 2018, 'Eighth-Final', 720, 735, 4, 3);
INSERT INTO public.games VALUES (93, 2014, 'Final', 736, 735, 1, 0);
INSERT INTO public.games VALUES (94, 2014, 'Third Place', 737, 726, 3, 0);
INSERT INTO public.games VALUES (95, 2014, 'Semi-Final', 735, 737, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Semi-Final', 736, 726, 7, 1);
INSERT INTO public.games VALUES (97, 2014, 'Quarter-Final', 737, 738, 1, 0);
INSERT INTO public.games VALUES (98, 2014, 'Quarter-Final', 735, 722, 1, 0);
INSERT INTO public.games VALUES (99, 2014, 'Quarter-Final', 726, 728, 2, 1);
INSERT INTO public.games VALUES (100, 2014, 'Quarter-Final', 736, 720, 1, 0);
INSERT INTO public.games VALUES (101, 2014, 'Eighth-Final', 726, 739, 2, 1);
INSERT INTO public.games VALUES (102, 2014, 'Eighth-Final', 728, 727, 2, 0);
INSERT INTO public.games VALUES (103, 2014, 'Eighth-Final', 720, 740, 2, 0);
INSERT INTO public.games VALUES (104, 2014, 'Eighth-Final', 736, 741, 2, 1);
INSERT INTO public.games VALUES (105, 2014, 'Eighth-Final', 737, 731, 2, 1);
INSERT INTO public.games VALUES (106, 2014, 'Eighth-Final', 738, 742, 2, 1);
INSERT INTO public.games VALUES (107, 2014, 'Eighth-Final', 735, 729, 1, 0);
INSERT INTO public.games VALUES (108, 2014, 'Eighth-Final', 722, 743, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (720, 'France');
INSERT INTO public.teams VALUES (721, 'Croatia');
INSERT INTO public.teams VALUES (722, 'Belgium');
INSERT INTO public.teams VALUES (723, 'England');
INSERT INTO public.teams VALUES (724, 'Russia');
INSERT INTO public.teams VALUES (725, 'Sweden');
INSERT INTO public.teams VALUES (726, 'Brazil');
INSERT INTO public.teams VALUES (727, 'Uruguay');
INSERT INTO public.teams VALUES (728, 'Colombia');
INSERT INTO public.teams VALUES (729, 'Switzerland');
INSERT INTO public.teams VALUES (730, 'Japan');
INSERT INTO public.teams VALUES (731, 'Mexico');
INSERT INTO public.teams VALUES (732, 'Denmark');
INSERT INTO public.teams VALUES (733, 'Spain');
INSERT INTO public.teams VALUES (734, 'Portugal');
INSERT INTO public.teams VALUES (735, 'Argentina');
INSERT INTO public.teams VALUES (736, 'Germany');
INSERT INTO public.teams VALUES (737, 'Netherlands');
INSERT INTO public.teams VALUES (738, 'Costa Rica');
INSERT INTO public.teams VALUES (739, 'Chile');
INSERT INTO public.teams VALUES (740, 'Nigeria');
INSERT INTO public.teams VALUES (741, 'Algeria');
INSERT INTO public.teams VALUES (742, 'Greece');
INSERT INTO public.teams VALUES (743, 'United States');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 108, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 743, true);


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

