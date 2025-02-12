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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    secret_number integer NOT NULL,
    number_of_guesses integer NOT NULL,
    played_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 603, 604, '2025-02-12 15:08:46.701879');
INSERT INTO public.games VALUES (2, 1, 374, 375, '2025-02-12 15:08:46.845943');
INSERT INTO public.games VALUES (3, 2, 584, 585, '2025-02-12 15:08:46.98314');
INSERT INTO public.games VALUES (4, 2, 853, 854, '2025-02-12 15:08:47.164078');
INSERT INTO public.games VALUES (5, 1, 483, 486, '2025-02-12 15:08:47.304715');
INSERT INTO public.games VALUES (6, 1, 726, 728, '2025-02-12 15:08:47.460216');
INSERT INTO public.games VALUES (7, 1, 606, 607, '2025-02-12 15:08:47.612324');
INSERT INTO public.games VALUES (8, 3, 225, 226, '2025-02-12 15:10:10.871402');
INSERT INTO public.games VALUES (9, 3, 643, 644, '2025-02-12 15:10:11.046479');
INSERT INTO public.games VALUES (10, 4, 555, 556, '2025-02-12 15:10:11.223273');
INSERT INTO public.games VALUES (11, 4, 262, 263, '2025-02-12 15:10:11.407532');
INSERT INTO public.games VALUES (12, 3, 213, 216, '2025-02-12 15:10:11.57787');
INSERT INTO public.games VALUES (13, 3, 973, 975, '2025-02-12 15:10:11.818704');
INSERT INTO public.games VALUES (14, 3, 229, 230, '2025-02-12 15:10:11.960525');
INSERT INTO public.games VALUES (15, 5, 262, 263, '2025-02-12 15:10:19.388147');
INSERT INTO public.games VALUES (16, 5, 980, 981, '2025-02-12 15:10:19.569254');
INSERT INTO public.games VALUES (17, 6, 134, 135, '2025-02-12 15:10:19.679641');
INSERT INTO public.games VALUES (18, 6, 679, 680, '2025-02-12 15:10:19.860224');
INSERT INTO public.games VALUES (19, 5, 667, 670, '2025-02-12 15:10:20.023697');
INSERT INTO public.games VALUES (20, 5, 796, 798, '2025-02-12 15:10:20.184637');
INSERT INTO public.games VALUES (21, 5, 534, 535, '2025-02-12 15:10:20.345048');


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1739372926545');
INSERT INTO public.players VALUES (2, 'user_1739372926544');
INSERT INTO public.players VALUES (3, 'user_1739373010735');
INSERT INTO public.players VALUES (4, 'user_1739373010734');
INSERT INTO public.players VALUES (5, 'user_1739373019249');
INSERT INTO public.players VALUES (6, 'user_1739373019248');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 21, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 6, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

