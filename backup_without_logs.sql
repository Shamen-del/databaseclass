--
-- PostgreSQL database dump
--

\restrict RLHDwvfbWuJlWrLoNIDR9NPYvc94RE94jRgzpDX8q8HkhXRWHhG4jFDKzsPtOm5

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cof_inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cof_inventory (
    date_val date,
    quan integer,
    sup_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    cof_name character varying(32) NOT NULL
);


ALTER TABLE public.cof_inventory OWNER TO postgres;

--
-- Name: coffee_houses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coffee_houses (
    coffee integer,
    merch integer,
    store_id integer NOT NULL,
    total integer,
    city character varying(255)
);


ALTER TABLE public.coffee_houses OWNER TO postgres;

--
-- Name: coffees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coffees (
    price real,
    sales integer,
    sup_id integer NOT NULL,
    total integer,
    cof_name character varying(32) NOT NULL
);


ALTER TABLE public.coffees OWNER TO postgres;

--
-- Name: merch_inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.merch_inventory (
    date date,
    item_id integer NOT NULL,
    quan integer,
    sup_id integer,
    item_name character varying(255)
);


ALTER TABLE public.merch_inventory OWNER TO postgres;

--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    birth_date date
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    sup_id integer NOT NULL,
    city character varying(255),
    state character varying(255),
    street character varying(255),
    sup_name character varying(255),
    zip character varying(255)
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- Name: suppliers_sup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.suppliers ALTER COLUMN sup_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.suppliers_sup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: university_students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.university_students (
    student_id integer NOT NULL,
    first_name text,
    last_name character varying(50),
    email_address character varying(100),
    date_of_birth date
);


ALTER TABLE public.university_students OWNER TO postgres;

--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


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
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suppliers (sup_id, city, state, street, sup_name, zip) FROM stdin;
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
-- Name: cof_inventory cof_inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cof_inventory
    ADD CONSTRAINT cof_inventory_pkey PRIMARY KEY (warehouse_id, cof_name, sup_id);


--
-- Name: coffee_houses coffee_houses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coffee_houses
    ADD CONSTRAINT coffee_houses_pkey PRIMARY KEY (store_id);


--
-- Name: coffees coffees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coffees
    ADD CONSTRAINT coffees_pkey PRIMARY KEY (cof_name, sup_id);


--
-- Name: merch_inventory merch_inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merch_inventory
    ADD CONSTRAINT merch_inventory_pkey PRIMARY KEY (item_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (sup_id);


--
-- Name: university_students university_students_email_address_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.university_students
    ADD CONSTRAINT university_students_email_address_key UNIQUE (email_address);


--
-- Name: university_students university_students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.university_students
    ADD CONSTRAINT university_students_pkey PRIMARY KEY (student_id);


--
-- Name: cof_inventory cof_inventory_sup_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cof_inventory
    ADD CONSTRAINT cof_inventory_sup_id_fkey FOREIGN KEY (sup_id) REFERENCES public.suppliers(sup_id);


--
-- Name: coffees coffees_sup_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coffees
    ADD CONSTRAINT coffees_sup_id_fkey FOREIGN KEY (sup_id) REFERENCES public.suppliers(sup_id);


--
-- Name: merch_inventory merch_inventory_sup_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merch_inventory
    ADD CONSTRAINT merch_inventory_sup_id_fkey FOREIGN KEY (sup_id) REFERENCES public.suppliers(sup_id);


--
-- PostgreSQL database dump complete
--

\unrestrict RLHDwvfbWuJlWrLoNIDR9NPYvc94RE94jRgzpDX8q8HkhXRWHhG4jFDKzsPtOm5

