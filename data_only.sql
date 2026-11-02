--
-- PostgreSQL database dump
--

\restrict o9od5QelPlHZRIt1Qgh6xtyHbEmA87bDxFUg2e32y4niBqwQ6brxTbzkdkqAeWG

-- Dumped from database version 17.7
-- Dumped by pg_dump version 17.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suppliers (sup_id, city, state, street, sup_name, zip) FROM stdin;
\.


--
-- Data for Name: cof_inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cof_inventory (date_val, quan, sup_id, warehouse_id, cof_name) FROM stdin;
\.


--
-- Data for Name: coffee_houses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coffee_houses (coffee, merch, store_id, total, city) FROM stdin;
\.


--
-- Data for Name: coffees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coffees (price, sales, sup_id, total, cof_name) FROM stdin;
\.


--
-- Data for Name: merch_inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.merch_inventory (date, item_id, quan, sup_id, item_name) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, first_name, last_name, birth_date) FROM stdin;
1	Aibek	Sharshenov	2002-05-12
\.


--
-- Data for Name: university_students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.university_students (student_id, first_name, last_name, email_address, date_of_birth) FROM stdin;
\.


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 1, true);


--
-- Name: suppliers_sup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_sup_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict o9od5QelPlHZRIt1Qgh6xtyHbEmA87bDxFUg2e32y4niBqwQ6brxTbzkdkqAeWG

