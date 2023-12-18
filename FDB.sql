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
391	91	Dynamics 	t
392	91	Energy conservation 	f
393	91	 Rigid body motion 	f
394	92	 Tension 	t
395	92	Axial stress 	f
396	92	Tensile strength 	f
397	93	 Shear 	t
398	93	 Shear stress  	f
399	93	Shear strain  	f
400	94	Kinematics  	t
401	94	Projectile motion 	f
402	94	Circular motion 	f
403	95	Torque  	t
404	95	Moment arm 	f
405	95	Torque equilibrium 	f
406	96	Equilibrium 	t
407	96	Static equilibrium 	f
408	96	Translational equilibrium 	f
409	97	Impulse 	t
410	97	Impulse-momentum theorem 	f
411	97	 Impulse response 	f
412	98	Angular velocity 	t
413	98	Rotational motion 	f
414	98	Angular displacement	f
415	99	Centrifugal force 	t
416	99	Centripetal acceleration 	f
417	99	Centrifugal pump 	f
418	100	Conservation of angular momentum 	t
419	100	Rotational inertia 	f
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
91	21	 Bandwidth 	t
92	21	Data Transmission Capacity	f
93	21	 Frequency Spectrum	f
94	22	Electrostatic discharge 	t
95	22	Static Electricity 	f
96	22	Discharge Event 	f
97	23	   Signal processing 	t
98	23	 Data Signal Manipulation  	f
99	23	Pattern Analysis  	f
100	24	Radio Wave 	t
101	24	 Wireless Communication	f
102	24	Radio Frequency Identification (RFID)  	f
103	25	Impulse Response  	t
104	25	Pulse Shape 	f
105	25	Signal Duration 	f
106	26	Waveform  	t
107	26	Sine Wave   	f
108	26	Pure Tone 	f
109	27	RF Amplifier 	t
110	27	Amplify Radio Signals 	f
111	27	 Antenna Booster 	f
112	28	Electron mobility 	t
113	28	Charge Carrier Mobility 	f
114	28	Semiconductor Mobility 	f
115	29	Faraday Cage 	t
116	29	EM Shielding 	f
117	29	Enclosure Design 	f
118	30	Zero Crossing 	t
119	30	Phase Shift 	f
120	30	Signal Delay 	f
121	31	Latency 	t
122	31	 Lag time	f
123	31	Delay duration  	f
124	32	 Firewall 	t
125	32	Security barrier 	f
126	32	 Digital barricade	f
127	33	Bandwidth  	t
128	33	Data capacity   	f
129	33	 Information flow 	f
130	34	 Encryption 	t
131	34	Code scrambling 	f
132	34	Information lock 	f
133	35	 Protocol 	t
134	35	Communication guidelines 	f
135	35	Procedure standards 	f
136	36	 VoLTE (Voice over LTE)	t
137	36	 LTE voice calling  	f
138	36	Cellular voice technology 	f
139	37	Mobile device 	t
140	37	Portable gadget 	f
141	37	Handheld contraption 	f
142	38	Wi-Fi 	t
143	38	Wireless fidelity 	f
144	38	 Internet signal	f
145	39	4G/5G 	t
146	39	High-speed mobile 	f
147	39	 Next-gen connectivity	f
148	40	Download 	t
149	40	Data retrieval 	f
150	40	Information grab 	f
151	41	Internet 	t
152	41	Online network 	f
153	41	Web connection  	f
154	42	Satellite  	t
155	42	Orbital transmitter 	f
156	42	Space-based link 	f
157	43	Ethernet  	t
158	43	Wired connection   	f
159	43	Cable networking  	f
160	44	 Signal 	t
161	44	Transmission indicator 	f
162	44	Communication sign 	f
163	45	 Router 	t
164	45	Network director 	f
165	45	Connectivity hub 	f
166	46	Wireless 	t
167	46	 Cord-free  	f
168	46	Signal without wires 	f
169	47	Modem 	t
170	47	Data translator 	f
171	47	Communication converter 	f
172	48	Fiber optic 	t
173	48	Optical cable 	f
174	48	Glass data line 	f
175	49	VoIP 	t
176	49	 Internet voice calling 	f
177	49	Digital phone service 	f
178	50	QoS (Quality of Service) 	t
179	50	Service excellence 	f
180	50	Performance standard 	f
181	51	Packet loss 	t
182	51	Data drop 	f
183	51	Information mishap  	f
184	52	 MIMO (Multiple-Input Multiple-Output) 	t
185	52	 Multichannel transmission	f
186	52	 Advanced signal reception	f
187	53	 VPN (Virtual Private Network) 	t
188	53	 Private web connection  	f
189	53	 Secured virtual link 	f
190	54	 IoT (Internet of Things) 	t
191	54	Connected devices 	f
192	54	Smart object network 	f
193	55	DoS attacks (Denial of Service)  	t
194	55	Network disruption 	f
195	55	Service denial strike 	f
196	56	 BGP (Border Gateway Protocol)	t
197	56	 Network border rules  	f
198	56	Gateway communication guidelines 	f
199	57	Network redundancy 	t
200	57	Backup connectivity 	f
201	57	 Redundant data links	f
202	58	SIP (Session Initiation Protocol) 	t
203	58	Communication session protocol 	f
204	58	Call initiation standard 	f
205	59	Content Delivery Network (CDN) 	t
206	59	Web content distribution 	f
207	59	Data delivery network 	f
208	60	Multiplexing 	t
209	60	Data merging 	f
210	60	Signal combination 	f
211	61	 Algorithm	t
212	61	Procedure 	f
213	61	 Heuristic 	f
214	62	 Artificial Intelligence 	t
215	62	Neural Networks 	f
216	62	 Natural Language Processing 	f
217	63	 Machine Learning 	t
218	63	 Predictive Modeling  	f
219	63	Supervised Learning  	f
220	64	 Deep Learning 	t
221	64	Convolutional Networks 	f
222	64	Recurrent Neural Networks 	f
223	65	 Neural Network  	t
224	65	 Backpropagation 	f
225	65	Activation Function 	f
226	66	Quantum Computing 	t
227	66	Quantum Supremacy   	f
228	66	Quantum Entanglement 	f
229	67	Cryptography 	t
230	67	Hash Function 	f
231	67	Encryption Key 	f
232	68	Cybersecurity 	t
233	68	 Penetration Testing	f
234	68	Endpoint Security 	f
235	69	Blockchain 	t
236	69	Smart Contracts 	f
237	69	Cryptocurrency 	f
238	70	Data Science 	t
239	70	Data Mining 	f
240	70	 Exploratory Data Analysis 	f
241	71	Data Analytics 	t
242	71	 Descriptive Analytics	f
243	71	Prescriptive Analytics  	f
244	72	Big Data 	t
245	72	 Hadoop	f
246	72	Data Warehousing 	f
247	73	Cloud Computing  	t
248	73	Serverless Computing 	f
249	73	 Microservices	f
250	74	 Internet of Things (IoT) 	t
251	74	 Sensor Networks  	f
252	74	  Edge Computing 	f
253	75	 Virtual Reality 	t
254	75	 Immersive Experience 	f
255	75	Haptic Feedback 	f
256	76	 Natural Language Processing 	t
257	76	Sentiment Analysis 	f
258	76	 Named Entity Recognition	f
259	77	Operating System 	t
260	77	  Kernel 	f
261	77	Multitasking	f
262	78	 Software Development	t
263	78	DevOps 	f
264	78	Agile Methodology 	f
265	79	Mobile App Development 	t
266	79	Cross-Platform Development 	f
267	79	Mobile UI/UX	f
268	80	Database Management 	t
269	80	Relational Database 	f
270	80	NoSQL 	f
271	81	Network Security 	t
272	81	Intrusion Detection System 	f
273	81	Virtual 	f
274	82	Penetration Testing 	t
275	82	Vulnerability Assessment 	f
276	82	 Exploit 	f
277	83	Hacking  	t
278	83	Social Engineering 	f
279	83	Cyber Espionage 	f
280	84	 Data Breach  	t
281	84	Identity Theft   	f
282	84	Cybersecurity Incident  	f
283	85	 User Interface (UI) 	t
284	85	 Wireframing	f
285	85	 Interaction Design	f
286	86	 User Experience (UX) 	t
287	86	Usability Testing 	f
288	86	 Persona	f
289	87	Cloud Storage 	t
290	87	 Data Replication  	f
291	87	Cloud Security 	f
292	88	Virtualization 	t
293	88	 Hypervisor	f
294	88	Virtual Machine 	f
295	89	Quantum Cryptography 	t
296	89	Quantum Key Distribution 	f
297	89	Secure Communication	f
298	90	 Augmented Reality	t
299	90	Markerless Tracking 	f
300	90	 Spatial Computing	f
420	100	Angular impulse 	f
421	101	Inelastic collision 	t
422	101	Perfectly inelastic collision 	f
423	101	Coefficient of restitution  	f
424	102	 Angular acceleration 	t
425	102	Rotational kinetics 	f
426	102	Angular jerk 	f
427	103	Coriolis effect  	t
428	103	  Coriolis parameter 	f
429	103	Coriolis force  	f
430	104	 Stress-strain curve 	t
431	104	Elastic limit 	f
432	104	Plastic deformation 	f
433	105	Viscous flow  	t
434	105	Newtonian fluid 	f
435	105	Shear-thinning 	f
436	106	Laminar flow 	t
437	106	  Streamlines 	f
438	106	Vortex shedding	f
439	107	Turbulent flow 	t
440	107	 Reynolds stress	f
441	107	 Turbulence model	f
442	108	 Reynolds number	t
443	108	Flow regime 	f
444	108	Critical Reynolds number	f
445	109	Bulk modulus 	t
446	109	Isentropic process 	f
447	109	Adiabatic elasticity 	f
448	110	Poissons ratio 	t
449	110	Biaxial stress 	f
450	110	Uniaxial strain 	f
451	111	Yield strength 	t
452	111	Yield point 	f
453	111	 Yield criterion 	f
454	112	 Principal stress 	t
455	112	Mohrs circle for stress 	f
456	112	Principal plane 	f
457	113	Mohrs circle  	t
458	113	strain gauge   	f
459	113	Principal stress direction  	f
460	114	DAlemberts principle  	t
461	114	Virtual work 	f
462	114	Lagrange 	f
463	115	Lagranges equations  	t
464	115	Holonomic constraints 	f
465	115	Generalized coordinates 	f
466	116	Rigid body dynamics 	t
467	116	Rotational symmetry   	f
468	116	Gyroscope 	f
469	117	Simple harmonic motion 	t
470	117	Amplitude 	f
471	117	Periodic motion 	f
472	118	Hertz 	t
473	118	Contact mechanics 	f
474	118	Hertzian contact stress	f
475	119	Non-Newtonian fluid 	t
476	119	Rheological behavior 	f
477	119	 Power-law fluid	f
478	120	Hydrostatic pressure 	t
479	120	Pascals principle 	f
480	120	Pressure distribution 	f
481	121	Pendulum 	t
482	121	Simple Harmonic Motion 	f
483	121	Periodicity  	f
484	122	 Equilibrium  	t
485	122	Stability 	f
486	122	Static Equilibrium 	f
487	123	Buoyancy  	t
488	123	Archimedes Principle   	f
489	123	 Fluid Displacement 	f
490	124	Conduction  	t
491	124	Thermal Conductivity 	f
492	124	Fouriers Law 	f
493	125	 Convection 	t
494	125	Natural Convection 	f
495	125	Forced Convection 	f
496	126	Radiation 	t
497	126	Electromagnetic Spectrum   	f
498	126	Blackbody Radiation	f
499	127	Angular momentum 	t
500	127	Conservation of Angular Momentum 	f
501	127	Moment of Inertia 	f
502	128	Kinematics 	t
503	128	 Displacement	f
504	128	 Velocity	f
505	129	Oscillation 	t
506	129	Amplitude 	f
507	129	Frequency 	f
508	130	 Viscosity	t
509	130	Newtonian Fluid 	f
510	130	Dynamic Viscosity 	f
511	131	Turbulence 	t
512	131	Reynolds Number 	f
513	131	Eddy Currents  	f
514	132	 Resonance 	t
515	132	Resonant Frequency 	f
516	132	Damping 	f
517	133	Impulse  	t
518	133	 Impulse-Momentum Theorem  	f
519	133	 Collisions 	f
520	134	 Torque 	t
521	134	Moment Arm 	f
522	134	 Rotational Equilibrium	f
523	135	 Centripetal force 	t
524	135	 Centrifugal Force 	f
525	135	Banked Curve 	f
526	136	 Tension	t
527	136	 Tensile Strength  	f
528	136	Elastic Limit 	f
529	137	Kinetic friction 	t
530	137	Coefficient of Friction 	f
531	137	Sliding Friction 	f
532	138	Elasticity 	t
533	138	Youngs Modulus 	f
534	138	 Hookes Law	f
535	139	Entropy 	t
536	139	Second Law of Thermodynamics 	f
537	139	Statistical Entropy 	f
538	140	Sound wave 	t
539	140	Frequency Spectrum 	f
540	140	Wavelength 	f
541	141	 Optics	t
542	141	Lens Aberrations 	f
543	141	  Interference 	f
544	142	 Magnetism 	t
545	142	Field Lines 	f
546	142	Flux 	f
547	143	Refraction  	t
548	143	 Snells Law  	f
549	143	Critical Angle  	f
550	144	Prism  	t
551	144	Dispersion of Light 	f
552	144	Total Internal Reflection 	f
553	145	 Thermocouple 	t
554	145	Seebeck Effect 	f
555	145	Thermoelectricity 	f
556	146	Joules law 	t
557	146	  Heat Dissipation 	f
558	146	Power 	f
559	147	Doppler shift 	t
560	147	Redshift 	f
561	147	 Blueshift	f
562	148	 Ionization	t
563	148	Energy 	f
564	148	Potential	f
565	149	Quantum state 	t
566	149	Superposition 	f
567	149	Quantum Entanglement 	f
568	150	Photodetector 	t
569	150	 Photovoltaic Effect	f
570	150	Photoconductivity 	f
571	151	Arithmetic 	t
572	151	Numeracy  	f
573	151	 Mathematics 	f
574	152	Calculation 	t
575	152	 Computation 	f
576	152	Estimation 	f
577	153	 Algebra 	t
578	153	 Linear algebra  	f
579	153	  Abstract algebra 	f
580	154	Geometry  	t
581	154	Spatial geometry 	f
582	154	 Analytic geometry	f
583	155	 Trigonometry 	t
584	155	 Spherical trigonometry	f
585	155	Plane trigonometry 	f
586	156	 Statistics	t
587	156	Descriptive statistics   	f
588	156	Inferential statistics	f
589	157	Measurement 	t
590	157	Precision measurement 	f
591	157	Dimensional measurement 	f
592	158	Data analysis 	t
593	158	Big data analysis 	f
594	158	Predictive analysis	f
595	159	Application 	t
596	159	Practical application 	f
597	159	Real-world application 	f
598	160	 Probability	t
599	160	Conditional probability 	f
600	160	Joint probability 	f
601	161	 Calculation	t
602	161	Numerical calculation 	f
603	161	 Complex calculation 	f
604	162	 Computation 	t
605	162	 Parallel computation 	f
606	162	Quantum computation 	f
607	163	Algorithm  	t
608	163	Heuristic algorithm   	f
609	163	Genetic algorithm  	f
610	164	 Model 	t
611	164	Mathematical 	f
612	164	Simulation  	f
613	165	 Quantitative 	t
614	165	Qualitative  	f
615	165	Numerical 	f
616	166	 Optimization	t
617	166	 Maximization   	f
618	166	Minimization 	f
619	167	Logic 	t
620	167	Deductive reasoning 	f
621	167	Inductive reasoning 	f
622	168	 Number system	t
623	168	Floating-point system 	f
624	168	Hexadecimal system	f
625	169	Real numbers 	t
626	169	Irrational numbers 	f
627	169	 Complex numbers	f
628	170	Decimal system 	t
629	170	Binary system 	f
630	170	Octal system 	f
631	171	Estimation 	t
632	171	Interpolation  	f
633	171	Extrapolation  	f
634	172	Approximation  	t
635	172	 Linear approximation	f
636	172	Quadratic approximation 	f
637	173	 Numeric representation 	t
638	173	Fixed-point representation   	f
639	173	Floating-point representation  	f
640	174	   Geometric shapes	t
641	174	Polygons  	f
642	174	 Polyhedra	f
643	175	 Symmetry 	t
644	175	Asymmetry  	f
645	175	Bilateral symmetry 	f
646	176	Scaling 	t
647	176	 Rescaling   	f
648	176	Uniform scaling 	f
649	177	Coordinate system 	t
650	177	 Polar system	f
651	177	Cylindrical system 	f
652	178	Graphing 	t
653	178	Plotting  	f
654	178	 Charting	f
655	179	Ratio 	t
656	179	Fraction  	f
657	179	Rate 	f
658	180	 Proportion	t
659	180	Scale  	f
660	180	 Balance	f
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
31	2	The delay in the transmission of data between two points in a network.  
32	2	A security system that controls incoming and outgoing network traffic based on an organizations previously established security policies.  
33	2	 The maximum data transfer rate of a network or internet connection.
34	2	The process of converting data into a code to prevent unauthorized access.  
35	2	 A set of rules that governs data communication in a network. 
36	2	A technology that allows voice calls to be made over 4G LTE networks.  
37	2	A portable electronic device such as a smartphone or tablet.  
38	2	A technology that allows electronic devices to connect to a wireless LAN network, typically using radio waves.  
39	2	The fourth and fifth generations of mobile network technology.  
40	2	 The process of transferring data from a remote server to a local device. 
41	2	A global network of interconnected computers and networks.  
42	2	 An artificial object placed in orbit around the Earth for communication purposes. 
43	2	A common network technology used for wired LAN connections.  
44	2	 An electrical or electromagnetic representation of data that can be transmitted over a network. 
45	2	A networking device that forwards data packets between computer networks.  
46	2	What technologies are used for transmitting radio signals in _________ networks? 
47	2	 What device enables communication between a computer and a telecommunications network? 
48	2	What is _________, and what are its main advantages compared to traditional copper cables? 
49	2	Which technology allows voice communication over the Internet?  
50	2	What does the abbreviation ______________ stand for, and why is it important in telecommunications networks? 
51	2	What is _____________, and how can it affect the quality of internet services? 
52	2	 Which network technologies utilize ____________________________________ to improve performance?
53	2	What is a _____________________, and what are its primary applications in the field of telecommunications? 
54	2	 What devices and applications are commonly associated with ______________________?
55	2	How can you prevent ____________________________ in a network? 
56	2	What is ____________________, and how does it impact internet routing? 
57	2	What is the purpose of _________________, and how does it enhance network reliability? 
58	2	 How does _____________________ facilitate real-time communication over the Internet?
59	2	 What is the role of a _____________________ in web content delivery?
60	2	 How does ______________ work in telecommunications, and what are its benefits?
61	3	Programmers use a specific ____________ to solve complex problems efficiently. 
62	3	 ____________ systems aim to simulate human intelligence by performing tasks such as learning, reasoning, and problem-solving.\n 
63	3	In ____________, computers are trained to learn from data and improve their performance over time. 
64	3	 ____________ is a subset of machine learning that involves neural networks with multiple layers for more sophisticated tasks. 
65	3	A ____________ is a computational model inspired by the way biological neural networks in the human brain work. 
66	3	Unlike classical computers, ____________ leverages quantum bits to perform complex calculations at unprecedented speeds. 
67	3	____________ is the practice of securing communication through the use of codes and ciphers. 
68	3	As technology advances, the importance of ____________ in protecting sensitive information becomes increasingly crucial. 
69	3	____________ is a decentralized and distributed ledger technology underlying cryptocurrencies like Bitcoin. 
70	3	 ____________ involves extracting insights and knowledge from data through various methods and algorithms. 
71	3	In business, ____________ plays a vital role in making informed decisions based on data patterns. 
72	3	 Organizations deal with massive amounts of information, known as ____________, requiring advanced analytics for meaningful insights.
73	3	Many businesses are adopting ____________ to access computing resources and storage over the internet. 
74	3	The ____________ connects everyday devices to the internet, allowing them to send and receive data. 
75	3	____________ immerses users in a computer-generated environment, often used in gaming and simulation. 
76	3	 ____________ involves the interaction between computers and human language, enabling machines to understand, interpret, and generate human-like text. 
77	3	An ____________ is software that manages computer hardware and provides services for computer programs. 
78	3	____________ is the process of creating and maintaining software applications through programming and testing. 
79	3	____________ focuses on creating software applications specifically for mobile devices like smartphones and tablets. 
80	3	____________ involves designing, implementing, and maintaining databases to store and organize data. 
81	3	____________ encompasses measures to protect computer networks and data from unauthorized access and cyberattacks. 
82	3	____________ involves simulating cyberattacks to assess the security of computer systems and networks. 
83	3	____________ refers to the unauthorized access, manipulation, or theft of information from computer systems. 
84	3	A ____________ occurs when sensitive information is accessed or disclosed without authorization. 
85	3	____________ is the point of interaction between the user and a computer program, including screens, pages, and visual elements. 
86	3	____________ focuses on enhancing the overall experience a person has with a product, system, or service. 
87	3	 ____________ allows users to store and access data over the internet instead of on a physical hard drive.
88	3	____________ enables the creation of virtual versions of computing resources, such as servers or storage devices. 
89	3	____________ leverages quantum mechanics to secure communication by encoding messages in quantum bits (qubits). 
90	3	____________ combines digital information with the users real-world environment in real-time. 
91	4	 The ___________ of the system can be analyzed using advanced mathematical models.
92	4	 The rope experienced extreme ___________ as the heavy load was lifted. 
93	4	The structural engineer examined the building for signs of ___________ stress. 
94	4	 ___________ is concerned with the motion of objects without considering the forces causing the motion. 
95	4	The wrench applied a significant amount of ___________ to loosen the tight bolt. 
96	4	 The gymnast maintained perfect ___________ during the challenging balance beam routine.
97	4	The collision resulted in a change in momentum due to the applied ___________. 
98	4	The ___________ of the spinning top gradually increased as it lost energy. 
99	4	The ___________ tried to pull the car outward as it navigated the sharp turn. 
100	4	The principle of ___________ explains why ice skaters spin faster when they pull their arms in. 
101	4	The car crash was an ___________, causing significant damage and deformation. 
102	4	The gymnasts ___________ during the somersault added flair to the routine. 
103	4	The ___________ influences the direction of ocean currents and atmospheric circulation. 
104	4	Engineers use the ___________ to analyze the behavior of materials under different conditions. 
105	4	The ___________ of the molten lava made its movement slow and steady. 
106	4	___________ is characterized by smooth, orderly movement of fluid particles in parallel layers 
107	4	 ___________ occurs when fluid particles move chaotically with irregular fluctuations. 
108	4	___________ is a dimensionless quantity used to predict the flow patterns in different fluid flow situations. 
109	4	___________ is a measure of a substances resistance to uniform compression. 
110	4	 ___________ is the ratio of the relative contraction strain to the relative extension strain in a direction perpendicular to the applied stress.
111	4	___________ is the amount of stress at which a material begins to deform plastically. 
112	4	___________ refers to the maximum and minimum stresses at a point in a loaded material. 
113	4	___________ is a graphical representation of the transformation of stress at a point in a loaded material. 
114	4	___________ states that the sum of the applied forces and the inertial forces acting on a system is equal to zero. 
115	4	___________ are used in classical mechanics to describe the motion of systems subject to holonomic constraints. 
116	4	___________ deals with the motion of systems where the distance between particles remains constant. 
173	6	 Computers use binary ______________ for data storage.
117	4	___________ is a type of periodic motion where the restoring force is directly proportional to the displacement. 
118	4	___________ is the unit of frequency, equal to one cycle per second. 
119	4	A ___________ does not follow Newtons law of viscosity and exhibits a variable viscosity. 
120	4	___________ is the pressure exerted by a fluid at equilibrium due to the force of gravity. 
121	5	The scientist conducted an experiment to determine the period of a ____________. 
122	5	 The gymnast maintained perfect ____________ while balancing on the beam. 
123	5	 The ships design ensured optimal ____________, allowing it to float effortlessly.
124	5	The metal rod facilitates efficient heat ____________ between the two substances. 
125	5	In the kitchen, boiling water illustrates the principle of ____________ as heat rises. 
126	5	The sun emits energy through the process of ____________ in the form of light and heat. 
127	5	The ice skater increased her ____________ by extending her arms during the spin. 
128	5	The physics students studied the ____________ of a projectile in free fall. 
129	5	The grandfather clocks rhythmic ____________ provided a soothing background sound. 
130	5	The ____________ of the oil affected the speed at which it flowed through the narrow tube. 
131	5	The pilot encountered severe ____________ while flying through the storm. 
132	5	The opera singers powerful voice created a beautiful ____________ in the concert hall. 
133	5	The soccer player applied a quick ____________ to the ball, changing its direction. 
134	5	The mechanic used a wrench to apply ____________ and loosen the tight bolt. 
135	5	The roller coasters track was designed to provide sufficient ____________ to keep the cars on the loop. 
136	5	____________ is the force transmitted through a string, rope, cable, or any other type of flexible connector. 
137	5	____________ is the force that opposes the motion of two surfaces sliding past each other.  
138	5	____________ is the property of a material to return to its original shape after being deformed. 
139	5	____________ is a measure of the disorder or randomness in a system. 
140	5	 A ____________ is a longitudinal wave that is caused by a vibrating object and transmitted through a medium.
141	5	____________ is the branch of physics that deals with the study of light and its interactions with matter. 
142	5	____________ is the force of attraction or repulsion between substances with magnetic fields. 
143	5	____________ is the bending of light as it passes from one medium to another with a different refractive index. 
144	5	A ____________ is a transparent optical element with flat, polished surfaces that disperse light into its component colors. 
145	5	A ____________ is a device that measures temperature by generating a voltage proportional to the temperature difference between two dissimilar metals. 
146	5	____________ states that the heat produced by a current-carrying conductor is proportional to the square of the current and the resistance. 
147	5	____________ is the change in frequency or wavelength of a wave in relation to an observer who is moving relative to the wave source. 
148	5	____________ is the process of converting an atom or molecule into an ion by adding or removing charged particles. 
149	5	A ____________ is a mathematical description of the quantum state of a system. 
150	5	A ____________ is a device that detects and measures light, typically converting it into an electrical signal. 
151	6	___________ is the branch of mathematics that deals with basic operations involving numbers, such as addition, subtraction, multiplication, and division. 
152	6	_____________ refers to the process of determining a numerical result by performing mathematical operations or using a formula.  
153	6	 _______ is a branch of mathematics that deals with symbols, variables, and the manipulation of equations to solve for unknown quantities.
154	6	 _________ is a branch of mathematics that focuses on the study of shapes, sizes, properties, and measurements of figures and spaces.
155	6	 ___________ is a branch of mathematics that deals with the relationships between the angles and sides of triangles, often used in navigation, engineering, and physics.
156	6	 ________ is the science of collecting, organizing, analyzing, and interpreting data to make informed decisions or draw conclusions about a population.
157	6	____________ involves the process of assigning numerical values to physical quantities to express their size or extent. 
158	6	____________ is the process of examining, cleaning, and interpreting data to identify patterns, trends, and meaningful information. 
159	6	 __________ refers to the practical use or implementation of mathematical concepts, theories, or techniques to solve real-world problems.
160	6	_________ is the likelihood or chance of an event occurring, often expressed as a numerical value between 0 and 1. 
161	6	__________ refers to the process of determining a numerical result by performing mathematical operations or using a formula. 
162	6	____________ is the execution of mathematical or logical operations by a computer or a person to solve problems or perform tasks. 
163	6	An ____________ is a step-by-step procedure or a set of instructions for solving a specific problem or performing a task. 
164	6	A ______ is a simplified representation of a real-world system or concept designed to gain insights or make predictions about the original system. 
165	6	___ refers to data or information that can be expressed numerically, involving measurable quantities and numerical analysis. 
166	6	The company employed _____________ techniques to maximize its production efficiency. 
167	6	 _______ reasoning is essential in solving complex mathematical problems. 
168	6	The binary ______________ is commonly used in computer science. 
169	6	____________ include both rational and irrational numbers. 
170	6	 The metric system is based on the ____________, making conversions straightforward.
171	6	___________ is often used in statistics to approximate population parameters. 
172	6	Engineers use ____________ methods to simplify complex calculations. 
174	6	Circles, squares, and triangles are common _______________. 
175	6	The butterflys wings displayed perfect ___________. 
176	6	________ a graph can help visualize data more clearly. 
177	6	Cartesian ______________ are used to locate points in a plane. 
178	6	_________  functions helps analyze their behavior. 
179	6	The ________ of boys to girls in the class was 2:1. 
180	6	Maintaining a healthy ___________ of ingredients is crucial in cooking.
\.


--
-- Name: answers_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answers_answer_id_seq', 660, true);


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 6, true);


--
-- Name: questions_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_question_id_seq', 180, true);


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

