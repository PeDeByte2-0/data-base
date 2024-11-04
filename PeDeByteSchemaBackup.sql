--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-11-04 19:33:47

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'WIN1252';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 33454)
-- Name: PeDeByteSchema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "PeDeByteSchema";


ALTER SCHEMA "PeDeByteSchema" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 230 (class 1259 OID 33602)
-- Name: tb_admin; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_admin (
    tb_user_tb_person_id_person integer NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_admin OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 33514)
-- Name: tb_available_time; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_available_time (
    "Member_idMember" integer NOT NULL,
    "Member_tb_person_id_person" integer NOT NULL,
    tb_hours_id_hours integer NOT NULL,
    "Scheduled" smallint NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_available_time OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 33455)
-- Name: tb_hours; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_hours (
    id_hours integer NOT NULL,
    weekday character varying(45) NOT NULL,
    starttime character varying(45) NOT NULL,
    endtime character varying(45) NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_hours OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 33529)
-- Name: tb_login; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_login (
    idlogin integer NOT NULL,
    email character varying(60) NOT NULL,
    token character varying(45) NOT NULL,
    salt character varying(45) NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_login OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 33502)
-- Name: tb_member; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_member (
    tb_person_id_person integer NOT NULL,
    obs text NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_member OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 33587)
-- Name: tb_necessity; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_necessity (
    "tb_student_tb_member_idMember" integer NOT NULL,
    tb_speciality_idtb_speciality integer NOT NULL,
    tb_student_tb_member_tb_person_id_person integer NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_necessity OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 33492)
-- Name: tb_person; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_person (
    id_person integer NOT NULL,
    active smallint NOT NULL,
    tb_school_id_school integer NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_person OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 33569)
-- Name: tb_person_data; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_person_data (
    tb_person_id_person integer NOT NULL,
    first_name character varying(45) NOT NULL,
    last_name character varying(45) NOT NULL,
    cpf character varying(45) NOT NULL,
    celular character varying(45) NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_person_data OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 33554)
-- Name: tb_professional; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_professional (
    tb_member_tb_person_id_person integer NOT NULL,
    tb_speciality_idtb_speciality integer NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_professional OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 33480)
-- Name: tb_school; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_school (
    id_school integer NOT NULL,
    tb_week_profile_id_week_profile integer NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_school OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 33549)
-- Name: tb_speciality; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_speciality (
    idtb_speciality integer NOT NULL,
    name character varying(45) NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_speciality OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 33577)
-- Name: tb_student; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_student (
    tb_member_tb_person_id_person integer NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_student OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 33534)
-- Name: tb_user; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_user (
    tb_person_id_person integer NOT NULL,
    username character varying(45) NOT NULL,
    tb_login_idlogin integer NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_user OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 33460)
-- Name: tb_week_profile; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_week_profile (
    id_week_profile integer NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_week_profile OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 33465)
-- Name: tb_week_profile_has_tb_hours; Type: TABLE; Schema: PeDeByteSchema; Owner: postgres
--

CREATE TABLE "PeDeByteSchema".tb_week_profile_has_tb_hours (
    tb_week_profile_id_week_profile integer NOT NULL,
    tb_hours_id_hours integer NOT NULL
);


ALTER TABLE "PeDeByteSchema".tb_week_profile_has_tb_hours OWNER TO postgres;

--
-- TOC entry 4947 (class 0 OID 33602)
-- Dependencies: 230
-- Data for Name: tb_admin; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_admin (tb_user_tb_person_id_person) FROM stdin;
\.


--
-- TOC entry 4939 (class 0 OID 33514)
-- Dependencies: 222
-- Data for Name: tb_available_time; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_available_time ("Member_idMember", "Member_tb_person_id_person", tb_hours_id_hours, "Scheduled") FROM stdin;
\.


--
-- TOC entry 4933 (class 0 OID 33455)
-- Dependencies: 216
-- Data for Name: tb_hours; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_hours (id_hours, weekday, starttime, endtime) FROM stdin;
\.


--
-- TOC entry 4940 (class 0 OID 33529)
-- Dependencies: 223
-- Data for Name: tb_login; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_login (idlogin, email, token, salt) FROM stdin;
\.


--
-- TOC entry 4938 (class 0 OID 33502)
-- Dependencies: 221
-- Data for Name: tb_member; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_member (tb_person_id_person, obs) FROM stdin;
\.


--
-- TOC entry 4946 (class 0 OID 33587)
-- Dependencies: 229
-- Data for Name: tb_necessity; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_necessity ("tb_student_tb_member_idMember", tb_speciality_idtb_speciality, tb_student_tb_member_tb_person_id_person) FROM stdin;
\.


--
-- TOC entry 4937 (class 0 OID 33492)
-- Dependencies: 220
-- Data for Name: tb_person; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_person (id_person, active, tb_school_id_school) FROM stdin;
\.


--
-- TOC entry 4944 (class 0 OID 33569)
-- Dependencies: 227
-- Data for Name: tb_person_data; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_person_data (tb_person_id_person, first_name, last_name, cpf, celular) FROM stdin;
\.


--
-- TOC entry 4943 (class 0 OID 33554)
-- Dependencies: 226
-- Data for Name: tb_professional; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_professional (tb_member_tb_person_id_person, tb_speciality_idtb_speciality) FROM stdin;
\.


--
-- TOC entry 4936 (class 0 OID 33480)
-- Dependencies: 219
-- Data for Name: tb_school; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_school (id_school, tb_week_profile_id_week_profile) FROM stdin;
\.


--
-- TOC entry 4942 (class 0 OID 33549)
-- Dependencies: 225
-- Data for Name: tb_speciality; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_speciality (idtb_speciality, name) FROM stdin;
\.


--
-- TOC entry 4945 (class 0 OID 33577)
-- Dependencies: 228
-- Data for Name: tb_student; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_student (tb_member_tb_person_id_person) FROM stdin;
\.


--
-- TOC entry 4941 (class 0 OID 33534)
-- Dependencies: 224
-- Data for Name: tb_user; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_user (tb_person_id_person, username, tb_login_idlogin) FROM stdin;
\.


--
-- TOC entry 4934 (class 0 OID 33460)
-- Dependencies: 217
-- Data for Name: tb_week_profile; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_week_profile (id_week_profile) FROM stdin;
\.


--
-- TOC entry 4935 (class 0 OID 33465)
-- Dependencies: 218
-- Data for Name: tb_week_profile_has_tb_hours; Type: TABLE DATA; Schema: PeDeByteSchema; Owner: postgres
--

COPY "PeDeByteSchema".tb_week_profile_has_tb_hours (tb_week_profile_id_week_profile, tb_hours_id_hours) FROM stdin;
\.


--
-- TOC entry 4773 (class 2606 OID 33606)
-- Name: tb_admin tb_admin_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_admin
    ADD CONSTRAINT tb_admin_pkey PRIMARY KEY (tb_user_tb_person_id_person);


--
-- TOC entry 4759 (class 2606 OID 33518)
-- Name: tb_available_time tb_available_time_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_available_time
    ADD CONSTRAINT tb_available_time_pkey PRIMARY KEY ("Member_idMember", "Member_tb_person_id_person", tb_hours_id_hours);


--
-- TOC entry 4745 (class 2606 OID 33459)
-- Name: tb_hours tb_hours_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_hours
    ADD CONSTRAINT tb_hours_pkey PRIMARY KEY (id_hours);


--
-- TOC entry 4761 (class 2606 OID 33533)
-- Name: tb_login tb_login_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_login
    ADD CONSTRAINT tb_login_pkey PRIMARY KEY (idlogin);


--
-- TOC entry 4757 (class 2606 OID 33508)
-- Name: tb_member tb_member_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_member
    ADD CONSTRAINT tb_member_pkey PRIMARY KEY (tb_person_id_person);


--
-- TOC entry 4771 (class 2606 OID 33591)
-- Name: tb_necessity tb_necessity_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_necessity
    ADD CONSTRAINT tb_necessity_pkey PRIMARY KEY ("tb_student_tb_member_idMember", tb_speciality_idtb_speciality, tb_student_tb_member_tb_person_id_person);


--
-- TOC entry 4755 (class 2606 OID 33496)
-- Name: tb_person tb_person_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_person
    ADD CONSTRAINT tb_person_pkey PRIMARY KEY (id_person);


--
-- TOC entry 4767 (class 2606 OID 33558)
-- Name: tb_professional tb_professional_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_professional
    ADD CONSTRAINT tb_professional_pkey PRIMARY KEY (tb_member_tb_person_id_person);


--
-- TOC entry 4751 (class 2606 OID 33486)
-- Name: tb_school tb_school_id_school_key; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_school
    ADD CONSTRAINT tb_school_id_school_key UNIQUE (id_school);


--
-- TOC entry 4753 (class 2606 OID 33484)
-- Name: tb_school tb_school_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_school
    ADD CONSTRAINT tb_school_pkey PRIMARY KEY (id_school, tb_week_profile_id_week_profile);


--
-- TOC entry 4765 (class 2606 OID 33553)
-- Name: tb_speciality tb_speciality_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_speciality
    ADD CONSTRAINT tb_speciality_pkey PRIMARY KEY (idtb_speciality);


--
-- TOC entry 4769 (class 2606 OID 33581)
-- Name: tb_student tb_student_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_student
    ADD CONSTRAINT tb_student_pkey PRIMARY KEY (tb_member_tb_person_id_person);


--
-- TOC entry 4763 (class 2606 OID 33538)
-- Name: tb_user tb_user_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_user
    ADD CONSTRAINT tb_user_pkey PRIMARY KEY (tb_person_id_person);


--
-- TOC entry 4749 (class 2606 OID 33469)
-- Name: tb_week_profile_has_tb_hours tb_week_profile_has_tb_hours_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_week_profile_has_tb_hours
    ADD CONSTRAINT tb_week_profile_has_tb_hours_pkey PRIMARY KEY (tb_week_profile_id_week_profile, tb_hours_id_hours);


--
-- TOC entry 4747 (class 2606 OID 33464)
-- Name: tb_week_profile tb_week_profile_pkey; Type: CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_week_profile
    ADD CONSTRAINT tb_week_profile_pkey PRIMARY KEY (id_week_profile);


--
-- TOC entry 4779 (class 2606 OID 33519)
-- Name: tb_available_time fk_Member_has_tb_hours_Member1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_available_time
    ADD CONSTRAINT "fk_Member_has_tb_hours_Member1" FOREIGN KEY ("Member_tb_person_id_person") REFERENCES "PeDeByteSchema".tb_member(tb_person_id_person);


--
-- TOC entry 4780 (class 2606 OID 33524)
-- Name: tb_available_time fk_Member_has_tb_hours_tb_hours1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_available_time
    ADD CONSTRAINT "fk_Member_has_tb_hours_tb_hours1" FOREIGN KEY (tb_hours_id_hours) REFERENCES "PeDeByteSchema".tb_hours(id_hours);


--
-- TOC entry 4778 (class 2606 OID 33509)
-- Name: tb_member fk_Member_tb_person1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_member
    ADD CONSTRAINT "fk_Member_tb_person1" FOREIGN KEY (tb_person_id_person) REFERENCES "PeDeByteSchema".tb_person(id_person);


--
-- TOC entry 4781 (class 2606 OID 33539)
-- Name: tb_user fk_table1_tb_person1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_user
    ADD CONSTRAINT fk_table1_tb_person1 FOREIGN KEY (tb_person_id_person) REFERENCES "PeDeByteSchema".tb_person(id_person);


--
-- TOC entry 4789 (class 2606 OID 33607)
-- Name: tb_admin fk_tb_admin_tb_user1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_admin
    ADD CONSTRAINT fk_tb_admin_tb_user1 FOREIGN KEY (tb_user_tb_person_id_person) REFERENCES "PeDeByteSchema".tb_user(tb_person_id_person);


--
-- TOC entry 4787 (class 2606 OID 33597)
-- Name: tb_necessity fk_tb_necessity_tb_student1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_necessity
    ADD CONSTRAINT fk_tb_necessity_tb_student1 FOREIGN KEY (tb_student_tb_member_tb_person_id_person) REFERENCES "PeDeByteSchema".tb_student(tb_member_tb_person_id_person);


--
-- TOC entry 4785 (class 2606 OID 33572)
-- Name: tb_person_data fk_tb_person_data_tb_person1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_person_data
    ADD CONSTRAINT fk_tb_person_data_tb_person1 FOREIGN KEY (tb_person_id_person) REFERENCES "PeDeByteSchema".tb_person(id_person);


--
-- TOC entry 4777 (class 2606 OID 33497)
-- Name: tb_person fk_tb_person_tb_school1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_person
    ADD CONSTRAINT fk_tb_person_tb_school1 FOREIGN KEY (tb_school_id_school) REFERENCES "PeDeByteSchema".tb_school(id_school);


--
-- TOC entry 4783 (class 2606 OID 33564)
-- Name: tb_professional fk_tb_professional_tb_member1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_professional
    ADD CONSTRAINT fk_tb_professional_tb_member1 FOREIGN KEY (tb_member_tb_person_id_person) REFERENCES "PeDeByteSchema".tb_member(tb_person_id_person);


--
-- TOC entry 4784 (class 2606 OID 33559)
-- Name: tb_professional fk_tb_professional_tb_speciality1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_professional
    ADD CONSTRAINT fk_tb_professional_tb_speciality1 FOREIGN KEY (tb_speciality_idtb_speciality) REFERENCES "PeDeByteSchema".tb_speciality(idtb_speciality);


--
-- TOC entry 4776 (class 2606 OID 33487)
-- Name: tb_school fk_tb_school_tb_week_profile1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_school
    ADD CONSTRAINT fk_tb_school_tb_week_profile1 FOREIGN KEY (tb_week_profile_id_week_profile) REFERENCES "PeDeByteSchema".tb_week_profile(id_week_profile);


--
-- TOC entry 4788 (class 2606 OID 33592)
-- Name: tb_necessity fk_tb_student_has_tb_speciality_tb_speciality1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_necessity
    ADD CONSTRAINT fk_tb_student_has_tb_speciality_tb_speciality1 FOREIGN KEY (tb_speciality_idtb_speciality) REFERENCES "PeDeByteSchema".tb_speciality(idtb_speciality);


--
-- TOC entry 4786 (class 2606 OID 33582)
-- Name: tb_student fk_tb_student_tb_member1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_student
    ADD CONSTRAINT fk_tb_student_tb_member1 FOREIGN KEY (tb_member_tb_person_id_person) REFERENCES "PeDeByteSchema".tb_member(tb_person_id_person);


--
-- TOC entry 4782 (class 2606 OID 33544)
-- Name: tb_user fk_tb_user_tb_login1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_user
    ADD CONSTRAINT fk_tb_user_tb_login1 FOREIGN KEY (tb_login_idlogin) REFERENCES "PeDeByteSchema".tb_login(idlogin);


--
-- TOC entry 4774 (class 2606 OID 33475)
-- Name: tb_week_profile_has_tb_hours fk_tb_week_profile_has_tb_hours_tb_hours1; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_week_profile_has_tb_hours
    ADD CONSTRAINT fk_tb_week_profile_has_tb_hours_tb_hours1 FOREIGN KEY (tb_hours_id_hours) REFERENCES "PeDeByteSchema".tb_hours(id_hours);


--
-- TOC entry 4775 (class 2606 OID 33470)
-- Name: tb_week_profile_has_tb_hours fk_tb_week_profile_has_tb_hours_tb_week_profile; Type: FK CONSTRAINT; Schema: PeDeByteSchema; Owner: postgres
--

ALTER TABLE ONLY "PeDeByteSchema".tb_week_profile_has_tb_hours
    ADD CONSTRAINT fk_tb_week_profile_has_tb_hours_tb_week_profile FOREIGN KEY (tb_week_profile_id_week_profile) REFERENCES "PeDeByteSchema".tb_week_profile(id_week_profile);


-- Completed on 2024-11-04 19:33:47

--
-- PostgreSQL database dump complete
--

