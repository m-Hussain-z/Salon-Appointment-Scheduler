--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer,
    service_id integer,
    "time" character varying(50)
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying(20),
    name character varying(50)
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (1, 4, 1, '10:30');
INSERT INTO public.appointments VALUES (2, 4, 2, '11am');
INSERT INTO public.appointments VALUES (87, 10, 1, '');
INSERT INTO public.appointments VALUES (13, 10, 1, '');
INSERT INTO public.appointments VALUES (98, 4, 5, '6:00');
INSERT INTO public.appointments VALUES (19, 10, 1, '');
INSERT INTO public.appointments VALUES (100, 10, 1, '');
INSERT INTO public.appointments VALUES (101, 10, 1, '');
INSERT INTO public.appointments VALUES (102, 10, 1, '');
INSERT INTO public.appointments VALUES (103, 10, 1, '');
INSERT INTO public.appointments VALUES (104, 10, 1, '');
INSERT INTO public.appointments VALUES (25, 10, 1, '');
INSERT INTO public.appointments VALUES (105, 10, 1, '');
INSERT INTO public.appointments VALUES (106, 10, 1, '');
INSERT INTO public.appointments VALUES (107, 10, 1, '');
INSERT INTO public.appointments VALUES (108, 10, 1, '');
INSERT INTO public.appointments VALUES (109, 10, 1, '');
INSERT INTO public.appointments VALUES (110, 10, 1, '');
INSERT INTO public.appointments VALUES (111, 10, 1, '');
INSERT INTO public.appointments VALUES (112, 10, 1, '');
INSERT INTO public.appointments VALUES (113, 10, 1, '');
INSERT INTO public.appointments VALUES (114, 10, 1, '');
INSERT INTO public.appointments VALUES (115, 10, 1, '');
INSERT INTO public.appointments VALUES (116, 10, 1, '');
INSERT INTO public.appointments VALUES (117, 10, 1, '');
INSERT INTO public.appointments VALUES (118, 10, 1, '');
INSERT INTO public.appointments VALUES (119, 10, 1, '');
INSERT INTO public.appointments VALUES (120, 10, 1, '');
INSERT INTO public.appointments VALUES (121, 10, 1, '');
INSERT INTO public.appointments VALUES (122, 10, 1, '');
INSERT INTO public.appointments VALUES (123, 10, 1, '');
INSERT INTO public.appointments VALUES (124, 10, 1, '');
INSERT INTO public.appointments VALUES (125, 10, 1, '');
INSERT INTO public.appointments VALUES (126, 10, 1, '');
INSERT INTO public.appointments VALUES (127, 10, 1, '');
INSERT INTO public.appointments VALUES (128, 10, 1, '');
INSERT INTO public.appointments VALUES (130, 10, 1, '');
INSERT INTO public.appointments VALUES (131, 10, 1, '');
INSERT INTO public.appointments VALUES (132, 10, 1, '');
INSERT INTO public.appointments VALUES (133, 10, 1, '');
INSERT INTO public.appointments VALUES (134, 10, 1, '');
INSERT INTO public.appointments VALUES (135, 10, 1, '');
INSERT INTO public.appointments VALUES (136, 10, 1, '');
INSERT INTO public.appointments VALUES (137, 10, 1, '');
INSERT INTO public.appointments VALUES (138, 10, 1, '');
INSERT INTO public.appointments VALUES (139, 10, 1, '');
INSERT INTO public.appointments VALUES (140, 10, 1, '');
INSERT INTO public.appointments VALUES (141, 10, 1, '');
INSERT INTO public.appointments VALUES (63, 4, 3, '12:30');
INSERT INTO public.appointments VALUES (142, 10, 1, '');
INSERT INTO public.appointments VALUES (143, 10, 1, '');
INSERT INTO public.appointments VALUES (66, 10, 1, '');
INSERT INTO public.appointments VALUES (144, 10, 1, '');
INSERT INTO public.appointments VALUES (145, 10, 1, '');
INSERT INTO public.appointments VALUES (146, 10, 1, '');
INSERT INTO public.appointments VALUES (147, 10, 1, '');
INSERT INTO public.appointments VALUES (148, 10, 1, '');
INSERT INTO public.appointments VALUES (149, 10, 1, '');
INSERT INTO public.appointments VALUES (73, 10, 1, '');
INSERT INTO public.appointments VALUES (150, 10, 1, '');
INSERT INTO public.appointments VALUES (151, 10, 1, '');
INSERT INTO public.appointments VALUES (152, 10, 1, '');
INSERT INTO public.appointments VALUES (153, 10, 1, '');
INSERT INTO public.appointments VALUES (154, 10, 1, '');
INSERT INTO public.appointments VALUES (155, 10, 1, '');
INSERT INTO public.appointments VALUES (80, 10, 1, '');
INSERT INTO public.appointments VALUES (156, 10, 1, '');
INSERT INTO public.appointments VALUES (157, 10, 1, '');
INSERT INTO public.appointments VALUES (158, 10, 1, '');
INSERT INTO public.appointments VALUES (159, 10, 1, '');
INSERT INTO public.appointments VALUES (160, 10, 1, '');
INSERT INTO public.appointments VALUES (161, 10, 1, '');
INSERT INTO public.appointments VALUES (162, 10, 1, '');
INSERT INTO public.appointments VALUES (163, 10, 1, '');
INSERT INTO public.appointments VALUES (164, 10, 1, '');
INSERT INTO public.appointments VALUES (165, 10, 1, '');
INSERT INTO public.appointments VALUES (166, 10, 1, '');
INSERT INTO public.appointments VALUES (167, 10, 1, '');
INSERT INTO public.appointments VALUES (168, 10, 1, '');
INSERT INTO public.appointments VALUES (169, 10, 1, '');
INSERT INTO public.appointments VALUES (170, 10, 1, '');
INSERT INTO public.appointments VALUES (172, 10, 1, '');
INSERT INTO public.appointments VALUES (173, 10, 1, '');
INSERT INTO public.appointments VALUES (174, 10, 1, '');
INSERT INTO public.appointments VALUES (175, 10, 1, '');
INSERT INTO public.appointments VALUES (176, 10, 1, '');
INSERT INTO public.appointments VALUES (177, 10, 1, '');
INSERT INTO public.appointments VALUES (178, 10, 1, '');
INSERT INTO public.appointments VALUES (179, 10, 1, '');
INSERT INTO public.appointments VALUES (180, 10, 1, '');
INSERT INTO public.appointments VALUES (181, 10, 1, '');
INSERT INTO public.appointments VALUES (182, 10, 1, '');
INSERT INTO public.appointments VALUES (183, 10, 1, '');
INSERT INTO public.appointments VALUES (184, 10, 1, '');
INSERT INTO public.appointments VALUES (185, 10, 1, '');
INSERT INTO public.appointments VALUES (186, 10, 1, '');
INSERT INTO public.appointments VALUES (187, 10, 1, '');
INSERT INTO public.appointments VALUES (188, 10, 1, '');
INSERT INTO public.appointments VALUES (189, 10, 1, '');
INSERT INTO public.appointments VALUES (190, 10, 1, '');
INSERT INTO public.appointments VALUES (191, 10, 1, '');
INSERT INTO public.appointments VALUES (192, 10, 1, '');
INSERT INTO public.appointments VALUES (193, 10, 1, '');
INSERT INTO public.appointments VALUES (194, 10, 1, '');
INSERT INTO public.appointments VALUES (195, 10, 1, '');
INSERT INTO public.appointments VALUES (196, 10, 1, '');
INSERT INTO public.appointments VALUES (197, 10, 1, '');
INSERT INTO public.appointments VALUES (198, 10, 1, '');
INSERT INTO public.appointments VALUES (199, 10, 1, '');
INSERT INTO public.appointments VALUES (200, 10, 1, '');
INSERT INTO public.appointments VALUES (201, 10, 1, '');
INSERT INTO public.appointments VALUES (202, 10, 1, '');
INSERT INTO public.appointments VALUES (203, 10, 1, '');
INSERT INTO public.appointments VALUES (204, 10, 1, '');
INSERT INTO public.appointments VALUES (205, 10, 1, '');
INSERT INTO public.appointments VALUES (206, 10, 1, '');
INSERT INTO public.appointments VALUES (207, 10, 1, '');
INSERT INTO public.appointments VALUES (208, 10, 1, '');
INSERT INTO public.appointments VALUES (209, 10, 1, '');
INSERT INTO public.appointments VALUES (210, 10, 1, '');
INSERT INTO public.appointments VALUES (211, 10, 1, '');
INSERT INTO public.appointments VALUES (212, 10, 1, '');
INSERT INTO public.appointments VALUES (213, 10, 1, '');
INSERT INTO public.appointments VALUES (214, 10, 1, '');
INSERT INTO public.appointments VALUES (216, 10, 1, '');
INSERT INTO public.appointments VALUES (217, 10, 1, '');
INSERT INTO public.appointments VALUES (218, 10, 1, '');
INSERT INTO public.appointments VALUES (219, 10, 1, '');
INSERT INTO public.appointments VALUES (220, 10, 1, '');
INSERT INTO public.appointments VALUES (221, 10, 1, '');
INSERT INTO public.appointments VALUES (222, 10, 1, '');
INSERT INTO public.appointments VALUES (223, 10, 1, '');
INSERT INTO public.appointments VALUES (224, 10, 1, '');
INSERT INTO public.appointments VALUES (225, 10, 1, '');
INSERT INTO public.appointments VALUES (226, 10, 1, '');
INSERT INTO public.appointments VALUES (227, 10, 1, '');
INSERT INTO public.appointments VALUES (228, 10, 1, '');
INSERT INTO public.appointments VALUES (229, 10, 1, '');
INSERT INTO public.appointments VALUES (230, 10, 1, '');
INSERT INTO public.appointments VALUES (231, 10, 1, '');
INSERT INTO public.appointments VALUES (232, 10, 1, '');
INSERT INTO public.appointments VALUES (233, 10, 1, '');
INSERT INTO public.appointments VALUES (234, 10, 1, '');
INSERT INTO public.appointments VALUES (235, 10, 1, '');
INSERT INTO public.appointments VALUES (236, 10, 1, '');
INSERT INTO public.appointments VALUES (237, 10, 1, '');
INSERT INTO public.appointments VALUES (238, 10, 1, '');
INSERT INTO public.appointments VALUES (239, 10, 1, '');
INSERT INTO public.appointments VALUES (240, 10, 1, '');
INSERT INTO public.appointments VALUES (241, 10, 1, '');
INSERT INTO public.appointments VALUES (242, 10, 1, '');
INSERT INTO public.appointments VALUES (243, 10, 1, '');
INSERT INTO public.appointments VALUES (244, 10, 1, '');
INSERT INTO public.appointments VALUES (245, 10, 1, '');
INSERT INTO public.appointments VALUES (246, 10, 1, '');
INSERT INTO public.appointments VALUES (247, 10, 1, '');
INSERT INTO public.appointments VALUES (248, 10, 1, '');
INSERT INTO public.appointments VALUES (249, 10, 1, '');
INSERT INTO public.appointments VALUES (250, 10, 1, '');
INSERT INTO public.appointments VALUES (251, 10, 1, '');
INSERT INTO public.appointments VALUES (252, 10, 1, '');
INSERT INTO public.appointments VALUES (253, 10, 1, '');
INSERT INTO public.appointments VALUES (254, 10, 1, '');
INSERT INTO public.appointments VALUES (255, 10, 1, '');
INSERT INTO public.appointments VALUES (256, 10, 1, '');
INSERT INTO public.appointments VALUES (257, 10, 1, '');
INSERT INTO public.appointments VALUES (258, 10, 1, '');
INSERT INTO public.appointments VALUES (259, 10, 1, '');
INSERT INTO public.appointments VALUES (260, 10, 1, '');
INSERT INTO public.appointments VALUES (261, 10, 1, '');
INSERT INTO public.appointments VALUES (263, 10, 1, '');
INSERT INTO public.appointments VALUES (264, 10, 1, '');
INSERT INTO public.appointments VALUES (265, 10, 1, '');
INSERT INTO public.appointments VALUES (266, 10, 1, '');
INSERT INTO public.appointments VALUES (267, 10, 1, '');
INSERT INTO public.appointments VALUES (268, 10, 1, '');
INSERT INTO public.appointments VALUES (269, 10, 1, '');
INSERT INTO public.appointments VALUES (270, 10, 1, '');
INSERT INTO public.appointments VALUES (271, 10, 1, '');
INSERT INTO public.appointments VALUES (272, 10, 1, '');
INSERT INTO public.appointments VALUES (273, 10, 1, '');
INSERT INTO public.appointments VALUES (274, 10, 1, '');
INSERT INTO public.appointments VALUES (275, 10, 1, '');
INSERT INTO public.appointments VALUES (276, 10, 1, '');
INSERT INTO public.appointments VALUES (277, 10, 1, '');
INSERT INTO public.appointments VALUES (278, 10, 1, '');
INSERT INTO public.appointments VALUES (279, 10, 1, '');
INSERT INTO public.appointments VALUES (280, 10, 1, '');
INSERT INTO public.appointments VALUES (281, 10, 1, '');
INSERT INTO public.appointments VALUES (282, 10, 1, '');
INSERT INTO public.appointments VALUES (283, 10, 1, '');
INSERT INTO public.appointments VALUES (284, 10, 1, '');
INSERT INTO public.appointments VALUES (285, 10, 1, '');
INSERT INTO public.appointments VALUES (286, 10, 1, '');
INSERT INTO public.appointments VALUES (287, 10, 1, '');
INSERT INTO public.appointments VALUES (288, 10, 1, '');
INSERT INTO public.appointments VALUES (289, 10, 1, '');
INSERT INTO public.appointments VALUES (290, 10, 1, '');
INSERT INTO public.appointments VALUES (291, 10, 1, '');
INSERT INTO public.appointments VALUES (292, 10, 1, '');
INSERT INTO public.appointments VALUES (293, 10, 1, '');
INSERT INTO public.appointments VALUES (294, 10, 1, '');
INSERT INTO public.appointments VALUES (295, 10, 1, '');
INSERT INTO public.appointments VALUES (296, 10, 1, '');
INSERT INTO public.appointments VALUES (297, 10, 1, '');
INSERT INTO public.appointments VALUES (298, 4, 4, '5:30');
INSERT INTO public.appointments VALUES (310, 100, 1, '1:00');
INSERT INTO public.appointments VALUES (312, 102, 1, '2:00');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (83, '1', '555-5555');
INSERT INTO public.customers VALUES (84, 'FakeTime', '');
INSERT INTO public.customers VALUES (4, '555-555-5555', 'Fabio');
INSERT INTO public.customers VALUES (85, 'BadInput', '1');
INSERT INTO public.customers VALUES (86, 'Test', 'FakeTime');
INSERT INTO public.customers VALUES (10, '', 'Test');
INSERT INTO public.customers VALUES (100, '000-000-0000', 'ALI');
INSERT INTO public.customers VALUES (102, '333-333-3333', 'FABIO');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'cut');
INSERT INTO public.services VALUES (2, 'color');
INSERT INTO public.services VALUES (3, 'perm');
INSERT INTO public.services VALUES (4, 'style');
INSERT INTO public.services VALUES (5, 'trim');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 318, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 107, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 5, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments appointments_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments appointments_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

