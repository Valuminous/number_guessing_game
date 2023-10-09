--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    number_of_guesses integer,
    secret_number integer,
    player_id integer
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
    player_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 971, 970, 1);
INSERT INTO public.games VALUES (2, 577, 576, 1);
INSERT INTO public.games VALUES (3, 719, 718, 2);
INSERT INTO public.games VALUES (4, 987, 986, 2);
INSERT INTO public.games VALUES (5, 42, 39, 1);
INSERT INTO public.games VALUES (6, 904, 902, 1);
INSERT INTO public.games VALUES (7, 176, 175, 1);
INSERT INTO public.games VALUES (8, 10, 687, 3);
INSERT INTO public.games VALUES (9, 648, 647, 5);
INSERT INTO public.games VALUES (10, 796, 795, 5);
INSERT INTO public.games VALUES (11, 536, 535, 6);
INSERT INTO public.games VALUES (12, 780, 779, 6);
INSERT INTO public.games VALUES (13, 645, 642, 5);
INSERT INTO public.games VALUES (14, 13, 11, 5);
INSERT INTO public.games VALUES (15, 133, 132, 5);
INSERT INTO public.games VALUES (16, 204, 203, 7);
INSERT INTO public.games VALUES (17, 738, 737, 7);
INSERT INTO public.games VALUES (18, 79, 78, 8);
INSERT INTO public.games VALUES (19, 665, 664, 8);
INSERT INTO public.games VALUES (20, 834, 831, 7);
INSERT INTO public.games VALUES (21, 632, 630, 7);
INSERT INTO public.games VALUES (22, 694, 693, 7);
INSERT INTO public.games VALUES (23, 949, 948, 9);
INSERT INTO public.games VALUES (24, 443, 442, 10);
INSERT INTO public.games VALUES (25, 687, 686, 9);
INSERT INTO public.games VALUES (26, 902, 901, 10);
INSERT INTO public.games VALUES (27, 814, 811, 4);
INSERT INTO public.games VALUES (28, 833, 832, 11);
INSERT INTO public.games VALUES (29, 204, 202, 4);
INSERT INTO public.games VALUES (30, 882, 881, 11);
INSERT INTO public.games VALUES (31, 100, 99, 4);
INSERT INTO public.games VALUES (32, 226, 223, 10);
INSERT INTO public.games VALUES (33, 667, 665, 10);
INSERT INTO public.games VALUES (34, 901, 900, 10);
INSERT INTO public.games VALUES (35, 729, 728, 12);
INSERT INTO public.games VALUES (36, 50, 49, 12);
INSERT INTO public.games VALUES (37, 523, 522, 13);
INSERT INTO public.games VALUES (38, 361, 360, 13);
INSERT INTO public.games VALUES (39, 417, 414, 12);
INSERT INTO public.games VALUES (40, 754, 752, 12);
INSERT INTO public.games VALUES (41, 279, 278, 12);
INSERT INTO public.games VALUES (42, 7, 708, 3);
INSERT INTO public.games VALUES (43, 11, 672, 14);
INSERT INTO public.games VALUES (44, 501, 500, 15);
INSERT INTO public.games VALUES (45, 45, 44, 15);
INSERT INTO public.games VALUES (46, 856, 855, 16);
INSERT INTO public.games VALUES (47, 178, 177, 16);
INSERT INTO public.games VALUES (48, 409, 406, 15);
INSERT INTO public.games VALUES (49, 799, 797, 15);
INSERT INTO public.games VALUES (50, 977, 976, 15);
INSERT INTO public.games VALUES (51, 10, 819, 3);
INSERT INTO public.games VALUES (52, 3, 857, 3);
INSERT INTO public.games VALUES (53, 137, 136, 17);
INSERT INTO public.games VALUES (54, 428, 427, 17);
INSERT INTO public.games VALUES (55, 824, 823, 18);
INSERT INTO public.games VALUES (56, 586, 585, 18);
INSERT INTO public.games VALUES (57, 489, 486, 17);
INSERT INTO public.games VALUES (58, 409, 407, 17);
INSERT INTO public.games VALUES (59, 100, 99, 17);
INSERT INTO public.games VALUES (60, 214, 213, 19);
INSERT INTO public.games VALUES (61, 500, 499, 19);
INSERT INTO public.games VALUES (62, 5, 4, 20);
INSERT INTO public.games VALUES (63, 368, 367, 20);
INSERT INTO public.games VALUES (64, 127, 124, 19);
INSERT INTO public.games VALUES (65, 166, 164, 19);
INSERT INTO public.games VALUES (66, 508, 507, 19);
INSERT INTO public.games VALUES (67, 690, 689, 21);
INSERT INTO public.games VALUES (68, 88, 87, 21);
INSERT INTO public.games VALUES (69, 507, 506, 22);
INSERT INTO public.games VALUES (70, 64, 63, 22);
INSERT INTO public.games VALUES (71, 717, 714, 21);
INSERT INTO public.games VALUES (72, 989, 987, 21);
INSERT INTO public.games VALUES (73, 289, 288, 21);
INSERT INTO public.games VALUES (74, 957, 956, 23);
INSERT INTO public.games VALUES (75, 992, 991, 23);
INSERT INTO public.games VALUES (76, 245, 244, 24);
INSERT INTO public.games VALUES (77, 336, 335, 24);
INSERT INTO public.games VALUES (78, 810, 807, 23);
INSERT INTO public.games VALUES (79, 471, 469, 23);
INSERT INTO public.games VALUES (80, 599, 598, 23);
INSERT INTO public.games VALUES (81, 250, 249, 25);
INSERT INTO public.games VALUES (82, 23, 22, 25);
INSERT INTO public.games VALUES (83, 591, 590, 26);
INSERT INTO public.games VALUES (84, 817, 816, 26);
INSERT INTO public.games VALUES (85, 585, 582, 25);
INSERT INTO public.games VALUES (86, 417, 415, 25);
INSERT INTO public.games VALUES (87, 968, 967, 25);
INSERT INTO public.games VALUES (88, 629, 628, 27);
INSERT INTO public.games VALUES (89, 522, 521, 27);
INSERT INTO public.games VALUES (90, 933, 932, 28);
INSERT INTO public.games VALUES (91, 80, 79, 28);
INSERT INTO public.games VALUES (92, 175, 172, 27);
INSERT INTO public.games VALUES (93, 199, 197, 27);
INSERT INTO public.games VALUES (94, 693, 692, 27);
INSERT INTO public.games VALUES (95, 613, 612, 29);
INSERT INTO public.games VALUES (96, 783, 782, 29);
INSERT INTO public.games VALUES (97, 473, 472, 30);
INSERT INTO public.games VALUES (98, 376, 375, 30);
INSERT INTO public.games VALUES (99, 524, 521, 29);
INSERT INTO public.games VALUES (100, 52, 50, 29);
INSERT INTO public.games VALUES (101, 553, 552, 29);
INSERT INTO public.games VALUES (102, 264, 263, 31);
INSERT INTO public.games VALUES (103, 98, 97, 31);
INSERT INTO public.games VALUES (104, 947, 946, 32);
INSERT INTO public.games VALUES (105, 6, 5, 32);
INSERT INTO public.games VALUES (106, 44, 41, 31);
INSERT INTO public.games VALUES (107, 987, 985, 31);
INSERT INTO public.games VALUES (108, 689, 688, 31);
INSERT INTO public.games VALUES (109, 8, 333, 14);
INSERT INTO public.games VALUES (110, 117, 116, 33);
INSERT INTO public.games VALUES (111, 274, 273, 33);
INSERT INTO public.games VALUES (112, 514, 513, 34);
INSERT INTO public.games VALUES (113, 772, 771, 34);
INSERT INTO public.games VALUES (114, 362, 359, 33);
INSERT INTO public.games VALUES (115, 959, 957, 33);
INSERT INTO public.games VALUES (116, 16, 15, 33);
INSERT INTO public.games VALUES (117, 10, 9, 35);
INSERT INTO public.games VALUES (118, 995, 994, 35);
INSERT INTO public.games VALUES (119, 903, 902, 36);
INSERT INTO public.games VALUES (120, 206, 205, 36);
INSERT INTO public.games VALUES (121, 713, 710, 35);
INSERT INTO public.games VALUES (122, 790, 788, 35);
INSERT INTO public.games VALUES (123, 712, 711, 35);
INSERT INTO public.games VALUES (124, 360, 359, 37);
INSERT INTO public.games VALUES (125, 201, 200, 37);
INSERT INTO public.games VALUES (126, 647, 646, 38);
INSERT INTO public.games VALUES (127, 305, 304, 38);
INSERT INTO public.games VALUES (128, 486, 483, 37);
INSERT INTO public.games VALUES (129, 996, 994, 37);
INSERT INTO public.games VALUES (130, 638, 637, 37);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1696857624760');
INSERT INTO public.players VALUES (2, 'user_1696857624759');
INSERT INTO public.players VALUES (3, 'player1');
INSERT INTO public.players VALUES (4, 'user_1696858292724');
INSERT INTO public.players VALUES (5, 'user_1696858301963');
INSERT INTO public.players VALUES (6, 'user_1696858301962');
INSERT INTO public.players VALUES (7, 'user_1696858305423');
INSERT INTO public.players VALUES (8, 'user_1696858305422');
INSERT INTO public.players VALUES (9, 'user_1696858292723');
INSERT INTO public.players VALUES (10, 'user_1696858308127');
INSERT INTO public.players VALUES (11, 'user_1696858308126');
INSERT INTO public.players VALUES (12, 'user_1696858315103');
INSERT INTO public.players VALUES (13, 'user_1696858315102');
INSERT INTO public.players VALUES (14, 'player2');
INSERT INTO public.players VALUES (15, 'user_1696858493594');
INSERT INTO public.players VALUES (16, 'user_1696858493593');
INSERT INTO public.players VALUES (17, 'user_1696858796269');
INSERT INTO public.players VALUES (18, 'user_1696858796268');
INSERT INTO public.players VALUES (19, 'user_1696858806959');
INSERT INTO public.players VALUES (20, 'user_1696858806958');
INSERT INTO public.players VALUES (21, 'user_1696858837272');
INSERT INTO public.players VALUES (22, 'user_1696858837271');
INSERT INTO public.players VALUES (23, 'user_1696858841060');
INSERT INTO public.players VALUES (24, 'user_1696858841059');
INSERT INTO public.players VALUES (25, 'user_1696858854653');
INSERT INTO public.players VALUES (26, 'user_1696858854652');
INSERT INTO public.players VALUES (27, 'user_1696858889191');
INSERT INTO public.players VALUES (28, 'user_1696858889190');
INSERT INTO public.players VALUES (29, 'user_1696858908554');
INSERT INTO public.players VALUES (30, 'user_1696858908553');
INSERT INTO public.players VALUES (31, 'user_1696858948434');
INSERT INTO public.players VALUES (32, 'user_1696858948433');
INSERT INTO public.players VALUES (33, 'user_1696859068964');
INSERT INTO public.players VALUES (34, 'user_1696859068963');
INSERT INTO public.players VALUES (35, 'user_1696859165126');
INSERT INTO public.players VALUES (36, 'user_1696859165125');
INSERT INTO public.players VALUES (37, 'user_1696859176463');
INSERT INTO public.players VALUES (38, 'user_1696859176462');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 130, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 38, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

