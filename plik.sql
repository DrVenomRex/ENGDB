--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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

--
-- Name: beertype; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.beertype AS (
	name character(25),
	kind character(15),
	percentage numeric(2,0)
);


ALTER TYPE public.beertype OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers (
    answer_id integer NOT NULL,
    question_id integer,
    answer_text text NOT NULL,
    is_correct boolean NOT NULL
);


ALTER TABLE public.answers OWNER TO postgres;

--
-- Name: answers_answer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answers_answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.answers_answer_id_seq OWNER TO postgres;

--
-- Name: answers_answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answers_answer_id_seq OWNED BY public.answers.answer_id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    category_id integer NOT NULL,
    category_name character varying(50) NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_category_id_seq OWNER TO postgres;

--
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    question_id integer NOT NULL,
    category_id integer,
    question_text text NOT NULL
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- Name: questions_question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questions_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_question_id_seq OWNER TO postgres;

--
-- Name: questions_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_question_id_seq OWNED BY public.questions.question_id;


--
-- Name: answers answer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers ALTER COLUMN answer_id SET DEFAULT nextval('public.answers_answer_id_seq'::regclass);


--
-- Name: categories category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- Name: questions question_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions ALTER COLUMN question_id SET DEFAULT nextval('public.questions_question_id_seq'::regclass);


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.answers (answer_id, question_id, answer_text, is_correct) FROM stdin;
31	1	 Superconductivity 	t
32	1	 Electrical Resistance 	f
33	1	 Impedance Matching 	f
34	2	 Impedance 	t
35	2	 Opposition 	f
36	2	 Inhibitor 	f
37	3	 Dielectric  	t
38	3	Capacitance  	f
39	3	 Holography  	f
40	4	 Hysteresis 	t
41	4	 Reactance 	f
42	4	  Printed Circuit Board(PCB) 	f
43	5	 Inverter  	t
44	5	 Diode  	f
45	5	 Transformer 	f
46	6	 Electromagnetic Interference (EMI) 	t
47	6	 Signal Interference 	f
48	6	 EMI Shielding 	f
49	7	 Field-Effect Transistor (FET) 	t
50	7	 Gate Voltage 	f
51	7	 Quantum Gate 	f
52	8	 Photonics 	t
53	8	 Fiber Optics 	f
54	8	 Light Transmission 	f
55	9	 Quantum computing 	t
56	9	Quantum Entanglement 	f
57	9	 Quantum Algorithm 	f
58	10	 Radiofrequency(RF) 	t
59	10	 Wireless Frequency 	f
60	10	 Microwave Circuit 	f
61	11	 Grounding 	t
62	11	 Safety Ground	f
63	11	 Grounding Rod	f
64	12	Electromagnetic Compatibility (EMC) 	t
65	12	Compliance Standards 	f
66	12	EMI Protection 	f
67	13	Biasing   	t
68	13	Bias Voltage   	f
69	13	Voltage Adjustment  	f
70	14	Flip-Flop 	t
71	14	Latch Circuit 	f
72	14	 Sequential Logic 	f
73	15	 Electromechanical  	t
74	15	 Mechanical Engineering 	f
75	15	Electrostatics 	f
76	16	Quantum dot 	t
77	16	Nanotechnology   	f
78	16	 Quantum State	f
79	17	 Photovoltaic Cell 	t
80	17	Solar Energy Conversion 	f
81	17	Electricity Generation 	f
82	18	Transmission Line 	t
83	18	Wave Propagation 	f
84	18	 Electromagnetic Waves	f
85	19	Harmonic Distortion 	t
86	19	 Nonlinear Behavior 	f
87	19	Nonideal Effects 	f
88	20	Doppler Effect 	t
89	20	Frequency Shift 	f
90	20	Speed Measurement 	f
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (category_id, category_name) FROM stdin;
1	Elektronika
2	Telekomunikacja
3	Informatyka
4	Mechanika
5	Fizyka
6	Matematyka
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questions (question_id, category_id, question_text) FROM stdin;
1	1	The ___________________ of certain materials allows them to conduct electricity with zero resistance.
2	1	To calculate __________ in a circuit, you need to consider the resistance and reactance.
3	1	A ___________ material is commonly used in capacitors to store electrical energy.
4	1	_________ is a phenomenon where a systems output depends on its history and not just the current input.
5	1	An _________ is essential for converting DC power into AC power in many electronic devices.
6	1	__________________________ can disrupt the functioning of electronic equipment in a noisy environment.
7	1	____________________ are widely used in modern integrated circuits.
8	1	__________is a branch of physics that deals with the generation and manipulation of light.
9	1	______________ leverages the principles of quantum mechanics to perform complex calculations.
10	1	________________ signals are commonly used in wireless communication.
11	1	Proper ____________ is essential to ensure safety and prevent electrical accidents.
12	1	___________________________ testing is crucial to avoid interference issues in electronic devices.
13	1	_______ is a technique used to establish a desired operating point for electronic components.
14	1	A _______ is a type of digital circuit that stores binary information as a pair of states.
15	1	________________ devices combine electrical and mechanical components to perform specific functions.
16	1	Nanoscale semiconductor particle that can trap and emit individual electrons or photons, with applications in quantum computing and displays.
17	1	Also known as a solar cell, converts sunlight into electricity by utilizing the photovoltaic effect.
18	1	A conductive path that carries electrical signals or power from one point to another, commonly used in telecommunications and power distribution.
19	1	Refers to the presence of unwanted frequencies or harmonics in a signal, often caused by nonlinearities in electronic components.
20	1	Change in frequency or wavelength of a wave in relation to an observer moving relative to the source of the wave, commonly observed in sound and electromagnetic waves.
21	1	Range of frequencies over which a device, system, or network can operate effectively, and it is a critical parameter in signal processing and data transmission.
22	1	The sudden flow of electricity between two electrically charged objects, often caused by friction or contact and it can damage sensitive electronic components.
23	1	Involves modifying or analyzing signals to extract information or enhance their quality, commonly used in audio, image, and data processing.
24	1	Is an electromagnetic wave with a frequency suitable for wireless communication and broadcasting.
25	1	Reaction of a linear time-invariant system to a brief input signal, often used in system analysis and design.
26	1	Graphical representation of a signals shape and characteristics, such as its amplitude and frequency.
27	1	An amplifier is designed to amplify high-frequency signals used in radio and wireless communication systems.
28	1	Is a measure of how quickly electrons can move through a material under the influence of an electric field, important in semiconductor physics.
29	1	Is a conductive enclosure that blocks external electromagnetic fields, often used to shield sensitive equipment from interference.
30	1	Refers to the point in an electrical waveform where the signal crosses the zero-voltage axis,and it is commonly used in phase-locked loops and signal synchronization.
\.


--
-- Name: answers_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answers_answer_id_seq', 90, true);


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 6, true);


--
-- Name: questions_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_question_id_seq', 30, true);


--
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (answer_id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (question_id);


--
-- Name: answers answers_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(question_id);


--
-- Name: questions questions_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(category_id);


--
-- PostgreSQL database dump complete
--

