--
-- PostgreSQL database dump
--

\restrict xG63lQfeNJyzlMNa4b9boUXDcGn3NFyQwJyojqLT7iCNNPyTcNXRnCWZCPNhgb0

-- Dumped from database version 17.5 (1b53132)
-- Dumped by pg_dump version 17.6

-- Started on 2025-08-30 18:36:00

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

ALTER TABLE ONLY public.example_studentinvoice DROP CONSTRAINT example_studentinvoi_student_id_ed900df6_fk_example_s;
ALTER TABLE ONLY public.example_student DROP CONSTRAINT example_student_created_by_id_f877729d_fk_example_csrprofile_id;
ALTER TABLE ONLY public.example_student_courses DROP CONSTRAINT example_student_courses_course_id_bf6e0865_fk_example_course_id;
ALTER TABLE ONLY public.example_student_courses DROP CONSTRAINT example_student_cour_student_id_2ce78121_fk_example_s;
ALTER TABLE ONLY public.example_student DROP CONSTRAINT example_student_batch_id_56166908_fk_example_batch_id;
ALTER TABLE ONLY public.example_invoicesettings DROP CONSTRAINT example_invoicesetti_csr_id_bc8e0dad_fk_example_c;
ALTER TABLE ONLY public.example_csrprofile DROP CONSTRAINT example_csrprofile_user_id_dcbd2a7d_fk_auth_user_id;
ALTER TABLE ONLY public.example_batch DROP CONSTRAINT example_batch_created_by_id_404779c1_fk_example_csrprofile_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX public.example_student_created_by_id_f877729d;
DROP INDEX public.example_student_courses_student_id_2ce78121;
DROP INDEX public.example_student_courses_course_id_bf6e0865;
DROP INDEX public.example_student_batch_id_56166908;
DROP INDEX public.example_batch_created_by_id_404779c1;
DROP INDEX public.example_batch_batch_number_a25881c9_like;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
DROP INDEX neon_auth.users_sync_deleted_at_idx;
ALTER TABLE ONLY public.example_studentinvoice DROP CONSTRAINT example_studentinvoice_student_id_key;
ALTER TABLE ONLY public.example_studentinvoice DROP CONSTRAINT example_studentinvoice_pkey;
ALTER TABLE ONLY public.example_student DROP CONSTRAINT example_student_pkey;
ALTER TABLE ONLY public.example_student_courses DROP CONSTRAINT example_student_courses_student_id_course_id_24edd662_uniq;
ALTER TABLE ONLY public.example_student_courses DROP CONSTRAINT example_student_courses_pkey;
ALTER TABLE ONLY public.example_invoicesettings DROP CONSTRAINT example_invoicesettings_pkey;
ALTER TABLE ONLY public.example_invoicesettings DROP CONSTRAINT example_invoicesettings_csr_id_key;
ALTER TABLE ONLY public.example_csrprofile DROP CONSTRAINT example_csrprofile_user_id_key;
ALTER TABLE ONLY public.example_csrprofile DROP CONSTRAINT example_csrprofile_pkey;
ALTER TABLE ONLY public.example_course DROP CONSTRAINT example_course_pkey;
ALTER TABLE ONLY public.example_batch DROP CONSTRAINT example_batch_pkey;
ALTER TABLE ONLY public.example_batch DROP CONSTRAINT example_batch_batch_number_key;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE ONLY neon_auth.users_sync DROP CONSTRAINT users_sync_pkey;
DROP TABLE public.example_studentinvoice;
DROP TABLE public.example_student_courses;
DROP TABLE public.example_student;
DROP TABLE public.example_invoicesettings;
DROP TABLE public.example_csrprofile;
DROP TABLE public.example_course;
DROP TABLE public.example_batch;
DROP TABLE public.django_session;
DROP TABLE public.django_migrations;
DROP TABLE public.django_content_type;
DROP TABLE public.django_admin_log;
DROP TABLE public.auth_user_user_permissions;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP TABLE public.auth_permission;
DROP TABLE public.auth_group_permissions;
DROP TABLE public.auth_group;
DROP TABLE neon_auth.users_sync;
DROP SCHEMA neon_auth;
--
-- TOC entry 6 (class 2615 OID 16481)
-- Name: neon_auth; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA neon_auth;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16482)
-- Name: users_sync; Type: TABLE; Schema: neon_auth; Owner: -
--

CREATE TABLE neon_auth.users_sync (
    raw_json jsonb NOT NULL,
    id text GENERATED ALWAYS AS ((raw_json ->> 'id'::text)) STORED NOT NULL,
    name text GENERATED ALWAYS AS ((raw_json ->> 'display_name'::text)) STORED,
    email text GENERATED ALWAYS AS ((raw_json ->> 'primary_email'::text)) STORED,
    created_at timestamp with time zone GENERATED ALWAYS AS (to_timestamp((trunc((((raw_json ->> 'signed_up_at_millis'::text))::bigint)::double precision) / (1000)::double precision))) STORED,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);


--
-- TOC entry 226 (class 1259 OID 24687)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- TOC entry 225 (class 1259 OID 24686)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 24695)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- TOC entry 227 (class 1259 OID 24694)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 24681)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- TOC entry 223 (class 1259 OID 24680)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 24701)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- TOC entry 232 (class 1259 OID 24709)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- TOC entry 231 (class 1259 OID 24708)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 24700)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 24715)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- TOC entry 233 (class 1259 OID 24714)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 24773)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- TOC entry 235 (class 1259 OID 24772)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 24673)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 24672)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 24665)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 24664)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 249 (class 1259 OID 24887)
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 24802)
-- Name: example_batch; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.example_batch (
    id bigint NOT NULL,
    batch_number character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    created_by_id bigint,
    status character varying(10) NOT NULL
);


--
-- TOC entry 237 (class 1259 OID 24801)
-- Name: example_batch_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.example_batch ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.example_batch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 24810)
-- Name: example_course; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.example_course (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    trainer_name character varying(100) NOT NULL,
    price numeric(10,2) NOT NULL,
    duration character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


--
-- TOC entry 239 (class 1259 OID 24809)
-- Name: example_course_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.example_course ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.example_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 24816)
-- Name: example_csrprofile; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.example_csrprofile (
    id bigint NOT NULL,
    full_name character varying(100) NOT NULL,
    is_active boolean NOT NULL,
    lead_role boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    last_login timestamp with time zone,
    user_id integer NOT NULL
);


--
-- TOC entry 241 (class 1259 OID 24815)
-- Name: example_csrprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.example_csrprofile ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.example_csrprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 248 (class 1259 OID 24836)
-- Name: example_invoicesettings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.example_invoicesettings (
    id bigint NOT NULL,
    current_serial_number integer NOT NULL,
    school_name character varying(255) NOT NULL,
    bank_name character varying(100) NOT NULL,
    account_number character varying(50) NOT NULL,
    iban_number character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    csr_id bigint NOT NULL,
    CONSTRAINT example_invoicesettings_current_serial_number_check CHECK ((current_serial_number >= 0))
);


--
-- TOC entry 247 (class 1259 OID 24835)
-- Name: example_invoicesettings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.example_invoicesettings ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.example_invoicesettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 24824)
-- Name: example_student; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.example_student (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    guardian_name character varying(100) NOT NULL,
    phone_number character varying(15) NOT NULL,
    cnic character varying(15) NOT NULL,
    discount numeric(5,2) NOT NULL,
    total_fees integer NOT NULL,
    discounted_price integer NOT NULL,
    advance_payment integer NOT NULL,
    second_installment integer NOT NULL,
    due_date date,
    invoice_number character varying(50),
    payment_status character varying(10) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    batch_id bigint NOT NULL,
    created_by_id bigint,
    created_by_name character varying(100) NOT NULL,
    schedule character varying(15) NOT NULL,
    payment_method character varying(10) NOT NULL,
    total_amount integer NOT NULL,
    balance integer NOT NULL,
    second_installment_due_date date
);


--
-- TOC entry 246 (class 1259 OID 24830)
-- Name: example_student_courses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.example_student_courses (
    id bigint NOT NULL,
    student_id bigint NOT NULL,
    course_id bigint NOT NULL
);


--
-- TOC entry 245 (class 1259 OID 24829)
-- Name: example_student_courses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.example_student_courses ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.example_student_courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 243 (class 1259 OID 24823)
-- Name: example_student_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.example_student ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.example_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 251 (class 1259 OID 204801)
-- Name: example_studentinvoice; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.example_studentinvoice (
    id bigint NOT NULL,
    present_invoice_no integer NOT NULL,
    pending_invoice_no integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    student_id bigint NOT NULL
);


--
-- TOC entry 250 (class 1259 OID 204800)
-- Name: example_studentinvoice_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.example_studentinvoice ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.example_studentinvoice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3519 (class 0 OID 16482)
-- Dependencies: 218
-- Data for Name: users_sync; Type: TABLE DATA; Schema: neon_auth; Owner: -
--

COPY neon_auth.users_sync (raw_json, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3527 (class 0 OID 24687)
-- Dependencies: 226
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3529 (class 0 OID 24695)
-- Dependencies: 228
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3525 (class 0 OID 24681)
-- Dependencies: 224
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add batch	7	add_batch
26	Can change batch	7	change_batch
27	Can delete batch	7	delete_batch
28	Can view batch	7	view_batch
29	Can add course	8	add_course
30	Can change course	8	change_course
31	Can delete course	8	delete_course
32	Can view course	8	view_course
33	Can add csr profile	9	add_csrprofile
34	Can change csr profile	9	change_csrprofile
35	Can delete csr profile	9	delete_csrprofile
36	Can view csr profile	9	view_csrprofile
37	Can add student	10	add_student
38	Can change student	10	change_student
39	Can delete student	10	delete_student
40	Can view student	10	view_student
41	Can add invoice settings	11	add_invoicesettings
42	Can change invoice settings	11	change_invoicesettings
43	Can delete invoice settings	11	delete_invoicesettings
44	Can view invoice settings	11	view_invoicesettings
45	Can add Student Invoice	12	add_studentinvoice
46	Can change Student Invoice	12	change_studentinvoice
47	Can delete Student Invoice	12	delete_studentinvoice
48	Can view Student Invoice	12	view_studentinvoice
\.


--
-- TOC entry 3531 (class 0 OID 24701)
-- Dependencies: 230
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
6	pbkdf2_sha256$390000$mXv95WRXJFMGZIliGDEPNp$Xirna3KY0Hk7vjKMThsg/MXNtk1JfMKDgNL10HBAc9I=	2025-08-08 09:50:46.099485+00	f	iqra1122				f	t	2025-08-02 12:04:30.139603+00
1	pbkdf2_sha256$390000$v5Ff9Wj6oYQUmjJZNBCBQR$miW4ol8TkuO8dg/BQf5TZFgIbvNRWmj97f5u67Hl5wI=	2025-08-27 08:44:42.448463+00	t	admin				t	t	2025-07-01 13:58:27.894235+00
3	pbkdf2_sha256$390000$gj6Ml7vjSAIopKCjuN0wpy$So74xgzh/xgLeaLerRgruVss0HEM9/c9NMJPg2Q+YOE=	2025-08-27 13:34:46.938313+00	f	aliraza				f	t	2025-07-02 14:47:32.39515+00
\.


--
-- TOC entry 3533 (class 0 OID 24709)
-- Dependencies: 232
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3535 (class 0 OID 24715)
-- Dependencies: 234
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3537 (class 0 OID 24773)
-- Dependencies: 236
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2025-07-04 06:46:46.410572+00	21	Hasnain Muavia	3		10	1
2	2025-07-04 09:15:36.069542+00	22	Mubeen Asif	2	[{"changed": {"fields": ["Second installment", "Payment status"]}}]	10	1
3	2025-07-04 11:45:23.972453+00	3	Asna Hassan Khan	2	[{"changed": {"fields": ["Courses"]}}]	10	1
4	2025-07-04 11:50:33.189409+00	4	Qarsam Khan	2	[{"changed": {"fields": ["Courses"]}}]	10	1
5	2025-07-04 11:51:23.413469+00	4	Qarsam Khan	2	[{"changed": {"fields": ["Courses"]}}]	10	1
6	2025-07-12 16:05:11.658581+00	46	Areeba khurram 	3		10	1
7	2025-07-12 16:05:11.882258+00	27	Hasnain Muavia	3		10	1
8	2025-07-12 16:05:12.08949+00	26	Hasnain Muavia	3		10	1
9	2025-07-18 07:44:53.613275+00	57	Muhammad kaifi javed	3		10	1
10	2025-07-24 10:11:49.725921+00	98	Abdul Hadi  zain	3		10	1
11	2025-07-29 10:25:05.146367+00	85	Iqra Rafiq	3		10	1
12	2025-08-08 14:02:29.827234+00	101	Invoice for Ameer Mustafa	2	[{"changed": {"fields": ["Present invoice no", "Pending invoice no"]}}]	12	1
13	2025-08-08 14:05:45.518873+00	100	Invoice for Minahil Khalid	2	[{"changed": {"fields": ["Present invoice no"]}}]	12	1
14	2025-08-08 14:06:12.503955+00	98	Invoice for Khadija	2	[{"changed": {"fields": ["Present invoice no"]}}]	12	1
15	2025-08-16 09:53:09.577463+00	156	Chand Haider	3		10	1
16	2025-08-19 11:19:50.824676+00	161	Hasnain Muavia	3		10	1
17	2025-08-19 11:19:51.037654+00	160	hasnain hassu	3		10	1
18	2025-08-24 05:49:48.686686+00	165	Hasnain Muavia	3		10	1
19	2025-08-27 08:45:19.348867+00	163	Abdul Rehman Shahi	3		10	1
\.


--
-- TOC entry 3523 (class 0 OID 24673)
-- Dependencies: 222
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	example	batch
8	example	course
9	example	csrprofile
10	example	student
11	example	invoicesettings
12	example	studentinvoice
\.


--
-- TOC entry 3521 (class 0 OID 24665)
-- Dependencies: 220
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-07-01 13:05:33.507807+00
2	auth	0001_initial	2025-07-01 13:05:40.128663+00
3	admin	0001_initial	2025-07-01 13:05:42.11287+00
4	admin	0002_logentry_remove_auto_add	2025-07-01 13:05:42.8046+00
5	admin	0003_logentry_add_action_flag_choices	2025-07-01 13:05:43.656364+00
6	contenttypes	0002_remove_content_type_name	2025-07-01 13:05:44.938685+00
7	auth	0002_alter_permission_name_max_length	2025-07-01 13:05:45.999373+00
8	auth	0003_alter_user_email_max_length	2025-07-01 13:05:47.069663+00
9	auth	0004_alter_user_username_opts	2025-07-01 13:05:47.921556+00
10	auth	0005_alter_user_last_login_null	2025-07-01 13:05:48.981979+00
11	auth	0006_require_contenttypes_0002	2025-07-01 13:05:49.828021+00
12	auth	0007_alter_validators_add_error_messages	2025-07-01 13:05:50.683678+00
13	auth	0008_alter_user_username_max_length	2025-07-01 13:05:51.764365+00
14	auth	0009_alter_user_last_name_max_length	2025-07-01 13:05:52.84405+00
15	auth	0010_alter_group_name_max_length	2025-07-01 13:05:53.936164+00
16	auth	0011_update_proxy_permissions	2025-07-01 13:05:54.799928+00
17	auth	0012_alter_user_first_name_max_length	2025-07-01 13:05:55.876165+00
18	example	0001_initial	2025-07-01 13:05:56.723582+00
19	example	0002_initial	2025-07-01 13:06:02.148324+00
20	sessions	0001_initial	2025-07-01 13:06:03.638219+00
21	example	0003_student_created_by_name	2025-07-04 06:07:28.675267+00
22	example	0004_alter_course_duration	2025-07-04 10:08:42.5011+00
23	example	0005_student_schedule	2025-07-04 10:19:11.264827+00
24	example	0006_batch_is_completed_student_is_active	2025-07-29 15:48:35.90897+00
25	example	0007_remove_batch_is_completed_remove_student_is_active	2025-07-30 12:10:54.011578+00
26	example	0008_alter_course_price_alter_student_advance_payment_and_more	2025-07-30 16:37:56.190668+00
27	example	0009_student_payment_method_alter_course_price_and_more	2025-08-02 13:49:38.042251+00
28	example	0010_batch_status	2025-08-02 14:48:27.527187+00
29	example	0011_alter_student_cnic_alter_student_guardian_name_and_more	2025-08-08 13:03:57.535268+00
30	example	0012_alter_student_advance_payment_alter_student_discount_and_more	2025-08-08 14:49:00.308315+00
31	example	0013_alter_student_schedule	2025-08-08 14:53:05.724324+00
32	example	0014_alter_student_schedule	2025-08-08 15:02:17.417147+00
33	example	0015_student_total_amount	2025-08-18 16:11:01.833599+00
34	example	0016_student_balance	2025-08-19 08:47:07.31976+00
35	example	0017_student_second_installment_due_date_and_more	2025-08-19 10:27:49.295935+00
36	example	0018_alter_student_discount	2025-08-24 05:29:52.913465+00
\.


--
-- TOC entry 3550 (class 0 OID 24887)
-- Dependencies: 249
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
f88k09gohmetwer8jdp4hittxzettxqy	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1ukNsH:zz5UX0jJPkqzK8CxNcaEQoFYxAwOmh_EvBMxvAxfwnk	2025-08-22 14:15:13.110798+00
xwhdubecs4bj48p6nljsu5eyj500x85l	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1uYiL8:Ryut4vsrnfJXZX7zMwMowipdfUJGWXMf42jAYJkHzj0	2025-07-21 09:40:46.621461+00
q4d1b0ycel0b8fx0yy047wbbjsej9r07	.eJxVjEEOwiAQRe_C2hAYgzAu3XsGMsyAVA1NSrtqvLtt0oVu_3vvryrSMte49DzFQdRVgTr9bon4ldsO5EntMWoe2zwNSe-KPmjX91Hy-3a4fweVet1qL8BCDCAmOJMkBWOKxcTFIyGzEYPgMthzYI-WLg42JTgMHnNJqD5f83E33Q:1uWbbE:2aaqCL-F2TKDh_AXTx_XAl7CpGWz_Dnv2CSQPipUeiU	2025-07-15 14:04:40.871565+00
t30oq3294l9i019k9wi9ugerj4i5twtt	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1uoer4:YU8PfKHwjjAgwSiOsvm7k_BefbbLCg-c19sxEnvIrfY	2025-09-03 09:11:38.367158+00
aml5l4y2p1h4vvxq19ycre8fpjf7dq3n	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1uh4x8:e-kAJo42x0Ll-u9p1TR9Mz5RtWFRC-3r6NPHnKQwIUM	2025-08-13 11:26:34.566662+00
m0gsx8prry6ojgkqk4dsdsg12r3v0yzg	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1uZrsz:GYlJWyKmAFxs5ovLxYFm9OMFFL-QoVW7G0b_n2Ns4cg	2025-07-24 14:04:29.107628+00
vbh3p4wmccq4yna9s4w658n0v1hgf31i	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1ulpWU:yHd2ZdsZsAkOqLUI8HeRhRqtIV1sYWApHv5EckP0kTk	2025-08-26 13:58:42.676002+00
o8sairq23j5ov7idazaj2kt1tfzkf6sh	.eJxVjEEOwiAQRe_C2hAYgzAu3XsGMsyAVA1NSrtqvLtt0oVu_3vvryrSMte49DzFQdRVgTr9bon4ldsO5EntMWoe2zwNSe-KPmjX91Hy-3a4fweVet1qL8BCDCAmOJMkBWOKxcTFIyGzEYPgMthzYI-WLg42JTgMHnNJqD5f83E33Q:1uWdKk:A6HMYOsBejXz25kxQiKatRDMW2VwpVI8f9tSAZuYXbg	2025-07-15 15:55:46.614364+00
rof4qxgrh9bjx4h2zlwzftb4cbo36ehi	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1unZJh:2J1SimC_637GmM_HtVC2KE1zWzBn3DypIOOQ3YVD_ZY	2025-08-31 09:04:41.579421+00
j6hetn2gqq7e74q5803f1o0shq46jg2d	.eJxVjcEOgyAQRP-Fc0MQWUGPvfsNZIHdYrWaiJ6a_ns18dBe5828eQuP-5b9Xmj1QxKdqMXtNwsYR5pPkJ44PxYZl3lbhyDPirxokf2SaLpf3T9BxpKPNWiOxlIwwNa1DmtmBRGJkjJOgbUVANoagyUDmqrKoW5dwkYxADenNOE6-tdxJDrGqdDnCw5LPj8:1uiCdo:-HyrwgDvFq6HJLxfWH23VW4K7aJE6K_OeN_2BUbLpvc	2025-08-16 13:51:16.199993+00
8p0vo8o87nybd7ii7zgz3dqix4vkjttu	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1uax1j:O7htG9JHRC0eMIzMBep4-QDZUaLeotFQITLO7qLiNxM	2025-07-27 13:45:59.871009+00
ilruvphkp7gkahgb0ot4o79hxzmc7j5x	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1ubd0X:xUVI1VCAfKHq2CIPurSMevXjy13mo8-LlDbHqJ21Ztk	2025-07-29 10:35:33.683501+00
w9mb31mhc8homkd3qp2eqp0w0nf5l4kg	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1uip6i:Q3nx_CTDaf6cJxQXtprAVvaQ4Vt2BafIc0_4vVv3JDA	2025-08-18 06:55:40.921286+00
qg3pj5kfan83ho8l99hs23k6jjhmg1nm	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1uiq1u:5DNCcnnrKDSMncOrb38EXYG50KzAvYoBaFagc9LsrSg	2025-08-18 07:54:46.299963+00
ju7xmbtx6zt6kaykd4fg7uvysesgy3vd	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1uWzxf:sfqMchfEJdtM9SS4lIDoem-MGeb5Tce78Y2PaoShaRw	2025-07-16 16:05:27.575212+00
wccxvbhvog20qk63qcza2mcxpq0d923v	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1uXC5m:xOsVPvpP6h1_9VntghIQp1sqOUsHMh7TYlcCOgaQyAQ	2025-07-17 05:02:38.735562+00
ogmytpv6y9ucvwph9gpxz00vsekwboh0	.eJxVjcsOgjAURP-la9P0AVRYuvcbmvuqIAgJhZXx3y0JC93OOTPzVhH2rY97ljUOrDpl1eU3Q6BR5gPwE-bHommZt3VAfSj6pFnfF5bpdrp_Az3kvrSbJrBDIUO-sokTU8UszrZoxGHg2lrv0RAne0UwlQtNIgx1Yb4tWhllWMf4KkeqSzBl-XwBMv4-pQ:1uffls:f7P5tzr-JeQs72oHH7RYC_4lvs5QwkTDTmWAZAZ2s4M	2025-08-09 14:21:08.947547+00
0851y75e8hw9xm9474omr40qs4tzxigm	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1uXCC7:9QxGv9EVRo1gueTXVLn7jRyk3rnykddjobBrLZJshe0	2025-07-17 05:09:11.074366+00
e1qgmljit2rj3c4jvpassvx31y5q4wvu	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1uXCMp:tmXShSG76O5E4VUO6uhgBdSo1KvcnT4i0Q4blwfXW8g	2025-07-17 05:20:15.273565+00
pymlzkucsn9s1ctoc7i0agpv6bgmyl85	.eJxVjUEOwiAURO_C2hAK_EK7dO8ZyAc-tlZLAnRlvLtt0oVu5828eTOHW5vcVqm4ObKRKXb5zTyGhdYDxAeu98xDXluZPT8q_KSV33Kk5_Xs_gkmrNO-BpmCNuQ1JGMHiyolAQGJotBWgDEdABqF3pAGSV1nUQ42Yi8SQOoPacSyuNd-xMZWNvp8AdCePfQ:1ufL91:1vj3qroYpbrPaemFTCWoBYvRgUuZWFrXvUCuDKhxUNA	2025-08-08 16:19:39.582738+00
b7i7pf7cyc4ufbfz49rntmkx2zgs2wfc	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1ukJkw:o9Iq5Qckuc0gp9qocdet-G2zxIP06AWeX5oSNXz7GDA	2025-08-22 09:51:22.232451+00
h8xzw30h1xbuuy2kq2izdmw9s44g9dbg	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1ugiFt:nfT94dyvImD6K1OURlNYTeE0K3zrQGNjW_KoyqBiPqI	2025-08-12 11:12:25.141388+00
1udk6fiic4kfw6vk5yqw5afoetackzxl	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1ukM9m:yxVjSePOo4aIKMyQsNj3m2HHaLebTuSgApx7zhlSYPw	2025-08-22 12:25:10.754281+00
2cd7fjr86870ehvi71eykza5q8s8n844	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1uptGS:KhWnU12mlHV3k4ifnG_L7Vj-gg87tuxVexx2YQ1TQW4	2025-09-06 18:46:56.417168+00
g9fs7mkvx1ydl64w9tk27h9qo2f9a5jl	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1uoFG3:zqnwtQ5tt1mydStPClxNgqayMI6q2LBxM9Qb3mXRnCY	2025-09-02 05:51:43.751716+00
8s2ko1kbao8rt5fjgch0niystzu1burt	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1uqsaf:n36V7Ewiur536hGCM_xkyAbPKJeO21ntEyihVYv7Uf0	2025-09-09 12:15:53.996168+00
26um7a2o5waz2m0u8i3jsiiz4wufao9i	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1uoMKD:xkbPWWvsKMl1O7XnX0H7q15JOCLuAlwgfmNDLibX7hY	2025-09-02 13:24:29.140682+00
kw0x56t4hxpvh4y54w279xcexxvz72ie	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1uqtU4:XwlxsLbPMU_uycVyCLzH4jjaFoGSMYNJq-Eq_6Sx2Jg	2025-09-09 13:13:08.755715+00
2jlz5sy07sp21gwlxp5gljc1zckov3v5	.eJxVjEEOwiAQRe_C2hAGKFiX7j0DYWZAqoYmpV0Z7y5NutDtf-_9twhxW0vYWlrCxOIiQJx-N4z0THUH_Ij1Pkua67pMKHdFHrTJ28zpdT3cv4MSW-m1c541JlJkLGTOTJY5aRhRJY2eBwBjUBFnOGNUVnuXCf3QmRm7Jj5fBok4Sg:1urBlq:Wu5J2Ey0M5t7SPSFjmgOqA19G5O02lMN4W6zPH-F3Sk	2025-09-10 08:44:42.46976+00
6rsekfdtn22oixl4fcnxrb6adu58mebu	.eJxVjEEOwiAQRe_C2hCgTKEu3XsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3EWgzj9bhHTg-oO8h3rrcnU6rrMUe6KPGiX15bpeTncv4OCvXxrMJyso2iBnZ88DswKEhJlZb0C5zQAugGjIwuGtPZoJp9xVAzAYxbvD-jzN-Q:1urGIY:wv3aw5psXz4PQPvFTq2YX6w4uuWUgDbkO-zWqBfvmRM	2025-09-10 13:34:46.952777+00
\.


--
-- TOC entry 3539 (class 0 OID 24802)
-- Dependencies: 238
-- Data for Name: example_batch; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.example_batch (id, batch_number, created_at, updated_at, created_by_id, status) FROM stdin;
1	Batch 5	2025-07-01 14:04:52.602231+00	2025-07-01 14:04:52.602486+00	\N	active
2	Batch 6	2025-07-01 14:05:08.142634+00	2025-07-01 14:05:08.142814+00	\N	active
4	Batch # 04	2025-07-15 09:51:26.508696+00	2025-07-15 09:51:26.508836+00	2	active
3	Batch # 02	2025-07-15 09:51:05.402645+00	2025-08-02 15:32:09.711852+00	2	inactive
\.


--
-- TOC entry 3541 (class 0 OID 24810)
-- Dependencies: 240
-- Data for Name: example_course; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.example_course (id, name, trainer_name, price, duration, created_at, updated_at) FROM stdin;
4	Digital Media Marketing	Muhammad Usman	40000.00	weekend,weekdays	2025-07-01 14:04:00.692969+00	2025-07-04 10:09:20.267345+00
2	Generative AI	Hasnain Muavia	40000.00	weekend,weekdays	2025-07-01 14:03:27.130707+00	2025-07-04 10:09:35.668909+00
15	AI For professional	Hasnain Muavia	50000.00	1_month	2025-07-02 15:21:08.975577+00	2025-07-04 10:09:52.467697+00
14	Graphic Designing	Muhammad Zubair	40000.00	weekend,weekdays	2025-07-02 15:20:10.17498+00	2025-07-04 10:10:01.812005+00
11	Super Kid Camp	All	50000.00	weekdays	2025-07-02 15:18:32.168076+00	2025-07-04 10:10:40.331746+00
10	Shopify	Rana Islam	40000.00	weekend,weekdays	2025-07-02 15:17:52.031269+00	2025-07-04 10:12:02.97123+00
9	Web development	Ahmad Affan	40000.00	weekend,weekdays	2025-07-02 15:17:34.15177+00	2025-07-04 10:12:41.577337+00
6	AI for children + Python 	Hasnain Muavia	20000.00	1_month	2025-07-02 14:59:06.55121+00	2025-07-04 10:13:13.144958+00
12	Video Editing + Youtube Automation	Muhammad Zubair	40000.00	weekdays	2025-07-02 15:19:30.213017+00	2025-07-04 12:37:15.28012+00
16	Certificate Fee (Batch# 02)	dha campus	650.00	weekend	2025-07-13 12:15:43.694743+00	2025-07-13 12:16:19.974679+00
17	Recovery (Batch 4)	admin	10000.00	weekend	2025-07-14 09:53:22.227152+00	2025-07-14 09:55:53.552524+00
18	Basic to Advance Computer Skills	Ali Raza	15000.00	weekend	2025-07-21 05:52:25.467695+00	2025-07-21 05:52:25.467946+00
19	UI/UX Designing	Mr. Zubair	40000.00	weekdays	2025-08-20 09:14:10.196532+00	2025-08-20 09:14:10.196738+00
\.


--
-- TOC entry 3543 (class 0 OID 24816)
-- Dependencies: 242
-- Data for Name: example_csrprofile; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.example_csrprofile (id, full_name, is_active, lead_role, date_joined, last_login, user_id) FROM stdin;
2	Ali raza	t	t	2025-07-02 14:47:33.502004+00	\N	3
5	Iqra Ijaz	t	f	2025-08-02 12:04:31.1396+00	\N	6
\.


--
-- TOC entry 3549 (class 0 OID 24836)
-- Dependencies: 248
-- Data for Name: example_invoicesettings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.example_invoicesettings (id, current_serial_number, school_name, bank_name, account_number, iban_number, created_at, updated_at, csr_id) FROM stdin;
2	605	Big Binary Tech	Alfalah Islamic Bank	5002480650	PK80ALFH5657005002480650	2025-07-02 16:19:41.699036+00	2025-08-27 14:44:51.372149+00	2
\.


--
-- TOC entry 3545 (class 0 OID 24824)
-- Dependencies: 244
-- Data for Name: example_student; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.example_student (id, name, guardian_name, phone_number, cnic, discount, total_fees, discounted_price, advance_payment, second_installment, due_date, invoice_number, payment_status, created_at, updated_at, batch_id, created_by_id, created_by_name, schedule, payment_method, total_amount, balance, second_installment_due_date) FROM stdin;
7	Hamnah Usman	Usman Javed	0316842216	-	25.00	20000	15000	15000	0	2025-07-03	466	paid	2025-07-03 06:13:40.22358+00	2025-07-07 08:26:10.166622+00	1	2	Ali raza	weekend	cash	15000	0	\N
59	Muhammad kaifi javed	Mr Javed Mansha	03214495521	35301-6825149-3	40.00	40000	24000	14000	10000	2025-08-19	\N	paid	2025-07-15 09:30:37.85641+00	2025-08-19 11:30:17.809508+00	1	2	Ali raza	weekend	cash	24000	0	2025-08-10
68	Muhammad Danish Ali	Waris Ali Prince	03405389702	34203-1171720-5	40.00	40000	24000	14000	10000	2025-08-19	\N	paid	2025-07-17 11:29:00.218196+00	2025-08-19 11:50:38.439636+00	1	2	Ali raza	weekend	cash	24000	0	2025-08-15
162	Atika Sajid	M Sajid	03156436684	-	40.00	40000	24000	15000	9000	\N	\N	pending	2025-08-20 09:15:23.868413+00	2025-08-20 09:15:23.868641+00	2	2	Ali raza	weekdays	cash	15000	9000	2025-09-07
69	KIRAN MOHSIN	-	-	-	0.00	10000	10000	10000	0	2025-07-17	\N	paid	2025-07-17 14:13:12.258551+00	2025-07-18 07:16:27.268991+00	4	2	Ali raza	weekend	cash	10000	0	\N
142	Ibrahim Akram	Akram	+905355170955	-	45.00	40000	22000	22000	0	2025-08-02	\N	paid	2025-08-02 08:41:09.571416+00	2025-08-02 08:43:50.813175+00	1	2	Ali raza	weekend	cash	22000	0	\N
145	Khadija	Lal Din	03321441686	-	63.00	40000	15000	15000	0	2025-08-03	\N	paid	2025-08-03 07:00:29.120619+00	2025-08-04 05:50:08.599169+00	1	2	Ali raza	weekend	cash	15000	0	\N
144	Khadija	Lal din	03321441868	-	33.00	15000	10001	10001	0	2025-08-03	\N	paid	2025-08-03 06:58:24.974038+00	2025-08-04 05:50:10.04063+00	1	2	Ali raza	weekend	cash	10001	0	\N
146	Joshua Javed	-	-	-	20.00	10000	8000	8000	0	2025-08-03	\N	paid	2025-08-03 13:19:31.714913+00	2025-08-04 05:50:12.809907+00	4	2	Ali raza	weekend	cash	8000	0	\N
148	Ameer Mustafa	-	-	-	0.00	10000	10000	10000	0	2025-08-06	\N	paid	2025-08-06 14:36:47.764363+00	2025-08-06 14:36:55.420018+00	4	2	Ali raza	weekend	cash	10000	0	\N
143	Hanzla	Tanweer	03024455799	-	40.00	40000	24000	15000	9000	\N	\N	pending	2025-08-02 12:12:27.946883+00	2025-08-19 10:28:21.160077+00	1	2	Ali raza	weekend	cash	15000	9000	2025-08-15
147	Minahil Khalid	Rana Khalid Nazir	03284143504	-	25.00	40000	30000	15000	15000	\N	\N	pending	2025-08-04 10:01:23.214829+00	2025-08-19 11:26:14.601352+00	2	2	Ali raza	weekend	cash	15000	15000	2025-08-31
34	Qudsia Awan	Imran Ahmed Awan	03232427251	42201-9361793-6	40.00	40000	24000	12000	12000	2025-08-19	\N	paid	2025-07-07 12:59:11.631044+00	2025-08-19 11:26:33.066876+00	1	2	Ali raza	weekdays	cash	24000	0	2025-07-31
11	Iram 	Muhammad Waqae Javaid	03226719233	35201-5852800-2	60.00	50000	20000	20000	0	2025-07-03	470	paid	2025-07-03 07:25:54.483131+00	2025-07-07 08:26:34.703812+00	1	2	Ali raza	weekend	cash	20000	0	\N
12	Afsheen	Muhammad Waqar Javaid	03226719233	35201-0300142-4	60.00	50000	20000	20000	0	2025-07-03	472	paid	2025-07-03 07:28:28.813279+00	2025-07-07 08:26:33.956502+00	1	2	Ali raza	weekend	cash	20000	0	\N
13	Sofia Rajut	Muhammad Waqar Javaid	03226719233	35201-6354511-8	60.00	50000	20000	20000	0	2025-07-03	473	paid	2025-07-03 07:30:53.948475+00	2025-07-07 08:26:36.097941+00	1	2	Ali raza	weekend	cash	20000	0	\N
32	Muhammad Daniyal	Amjad Mushtaq	03070541000	3230214913171	25.00	20000	15000	15000	0	2025-07-07	\N	paid	2025-07-07 08:44:23.707825+00	2025-07-07 08:46:03.968818+00	1	2	Ali raza	weekend	cash	15000	0	\N
159	Hasnain Abbas	Malik Nadeem	03221199514	-	50.00	40000	20000	20000	0	2025-08-17	\N	paid	2025-08-17 10:37:11.664793+00	2025-08-17 10:37:15.855173+00	2	2	Ali raza	weekend	cash	20000	0	\N
33	Muahmmad Talha 	Mr. Kashif	03114537064	-	60.00	50000	20000	20000	0	2025-07-07	\N	paid	2025-07-07 08:47:52.058879+00	2025-07-07 08:47:56.482331+00	1	2	Ali raza	weekdays	cash	20000	0	\N
47	Areeba khurram 	Khurram Javaid	03328402671	-	40.00	40000	24000	14000	10000	\N	\N	pending	2025-07-12 10:44:22.43391+00	2025-08-19 10:28:23.347901+00	1	2	Ali raza	weekend	cash	14000	10000	2025-08-01
149	Laiba Ansar	-	-	-	0.00	10000	10000	10000	0	2025-08-09	\N	paid	2025-08-09 07:13:32.09505+00	2025-08-11 11:36:42.794144+00	4	2	Ali raza	weekend	cash	10000	0	\N
22	Mubeen Asif	Muhammad Asif	03024161318	-	50.00	40000	20000	10000	10000	\N	466	pending	2025-07-03 15:24:29+00	2025-08-19 10:28:23.782327+00	1	2	Ali raza	weekend	cash	10000	10000	2025-08-05
28	Abdul Rehman	Ali Javed	03218461656	35201-7500123-9	45.00	40000	22000	22000	0	2025-07-04	\N	paid	2025-07-04 14:12:40.369339+00	2025-07-07 08:23:46.655814+00	1	2	Ali raza	weekend	cash	22000	0	\N
29	Khadija Ali 	Ali Javed	03218461656	35201-6529720-4	45.00	40000	22000	22000	0	2025-07-04	\N	paid	2025-07-04 14:13:44.056793+00	2025-07-07 08:23:49.976258+00	1	2	Ali raza	weekend	cash	22000	0	\N
8	Rania Shahid	Shahid Iqbal	03009486691	3520243863146	25.00	20000	15000	15000	0	2025-07-03	467	paid	2025-07-03 06:27:20.355944+00	2025-07-07 08:26:07.786588+00	1	2	Ali raza	weekend	cash	15000	0	\N
41	Ahmad Shahzad	Shahzad	03294011671	-	40.00	40000	24000	24000	0	2025-07-11	\N	paid	2025-07-11 11:42:25.653503+00	2025-07-13 11:44:17.654592+00	1	2	Ali raza	weekend	cash	24000	0	\N
154	Dua Javaid	-	-	-	10.00	10000	9000	9000	0	2025-08-12	\N	paid	2025-08-12 10:13:21.263133+00	2025-08-12 10:17:38.351277+00	4	2	Ali raza	weekend	cash	9000	0	\N
30	Zoraiz Zeeshan	Zeeshan	03224343647	-	60.00	50000	20000	10000	10000	\N	\N	pending	2025-07-04 14:34:43.074319+00	2025-08-19 10:28:24.217786+00	1	2	Ali raza	weekend	cash	10000	10000	2025-07-15
158	Aiman Iqbal	M Iqbal 	03234580581	-	50.00	40000	20000	10000	10000	\N	\N	pending	2025-08-17 10:31:28.772486+00	2025-08-19 10:28:26.394712+00	2	2	Ali raza	weekend	cash	10000	10000	2025-09-05
150	Faiza	Ayyaz	03084880346	-	75.00	40000	10000	3000	7000	\N	\N	pending	2025-08-09 08:57:12.01268+00	2025-08-19 10:28:21.600841+00	2	2	Ali raza	weekend	cash	3000	7000	2025-08-31
157	Chand Haider	-	03417156320	-	37.00	40000	25200	12500	12700	\N	\N	pending	2025-08-16 09:36:13.122277+00	2025-08-20 09:27:33.334005+00	2	2	Ali raza	weekend	cash	12500	12700	2025-08-31
103	Muhammad Mukarram	Muhammad Younas	03274088047	-	40.00	40000	24000	12000	12000	2025-08-19	\N	paid	2025-07-27 10:51:38.120608+00	2025-08-19 11:48:55.182551+00	1	2	Ali raza	weekend	cash	24000	0	2025-08-17
153	Sana Nasir	-	-	-	50.00	10000	5000	5000	0	2025-08-12	\N	paid	2025-08-12 10:12:17.809716+00	2025-08-12 10:17:39.884698+00	4	2	Ali raza	weekend	cash	5000	0	\N
50	Raana Urooj	Shakir	03075626949	-	40.00	40000	24000	15000	9000	2025-08-23	\N	paid	2025-07-13 10:08:43.213693+00	2025-08-23 09:09:52.10717+00	1	2	Ali raza	weekend	cash	24000	0	2025-07-31
3	Asna Hassan Khan	Rubina	03004212515	33100-2305765-0	45.00	40000	22000	22000	0	2025-07-03	462	paid	2025-07-03 05:22:19+00	2025-07-07 08:26:15.431794+00	1	2	Ali raza	weekend	cash	22000	0	\N
4	Qarsam Khan	Asna Hassan	03004212515	33102-1775445-6	45.00	40000	22000	22000	0	2025-07-03	463	paid	2025-07-03 05:41:38+00	2025-07-07 08:26:16.836186+00	1	2	Ali raza	weekend	cash	22000	0	\N
5	Hareem Usman	Usman Javed	03191610751	3520170329842	50.00	40000	20000	20000	0	2025-07-03	464	paid	2025-07-03 05:58:43.477726+00	2025-07-07 08:26:19.246737+00	1	2	Ali raza	weekdays	cash	20000	0	\N
152	Noor Fatima	-	-	-	50.00	10000	5000	5000	0	2025-08-12	\N	paid	2025-08-12 10:11:45.01238+00	2025-08-12 10:17:40.908009+00	4	2	Ali raza	weekend	cash	5000	0	\N
151	Sameen Fatima	-	-	-	50.00	10000	5000	5000	0	2025-08-12	\N	paid	2025-08-12 10:11:11.614729+00	2025-08-12 10:17:43.290013+00	4	2	Ali raza	weekend	cash	5000	0	\N
155	Fatima Nadeem	Muhammad Nadeem	03312446599	-	40.00	40000	24000	24000	0	2025-08-13	\N	paid	2025-08-13 10:36:53.139357+00	2025-08-13 10:39:56.206202+00	2	2	Ali raza	weekend	cash	24000	0	\N
6	Khadija Usman	Usman Javed	03168422116	35201-3544387-0	50.00	40000	20000	20000	0	2025-07-03	465	paid	2025-07-03 06:08:35.813966+00	2025-07-07 08:26:21.227318+00	1	2	Ali raza	weekdays	cash	20000	0	\N
10	Abdul Moiz	Muhammad Waqar Javaid	03224799458	35201-2143963-5	60.00	50000	20000	20000	0	2025-07-03	470	paid	2025-07-03 07:21:57.441078+00	2025-07-07 08:26:30.957955+00	1	2	Ali raza	weekend	cash	20000	0	\N
38	Faizan Bashir	Bashir Ahmad	03360039703	35202-8120318-5	40.00	40000	24000	14000	10000	\N	\N	pending	2025-07-08 12:17:11.119215+00	2025-08-19 10:28:25.088861+00	1	2	Ali raza	weekend	cash	14000	10000	2025-07-31
9	Ali Zaib	-	03208784299	-	38.00	40000	25000	15000	10000	\N	469	pending	2025-07-03 06:31:15.890188+00	2025-08-19 10:28:22.913117+00	1	2	Ali raza	weekend	cash	15000	10000	2025-07-25
31	Abdul Qudoos	Muhammad Iqbal	03087877891	33106-7093237-9	40.00	40000	24000	12000	12000	\N	\N	pending	2025-07-07 08:19:54.927698+00	2025-08-19 10:28:24.65378+00	1	2	Ali raza	weekend	cash	12000	12000	2025-07-31
58	Muhammad kaifi javed	Mr Javed Mansha	03214495521	35301-6825149-3	50.00	40000	20000	10000	10000	2025-08-19	\N	paid	2025-07-15 09:28:39.63875+00	2025-08-19 11:47:27.360059+00	1	2	Ali raza	weekend	cash	20000	0	2025-08-10
73	Sahibzada Aalay Quraam Baig	Shireen Nazeem	03334349615	-	60.00	50000	20000	10000	10000	\N	\N	pending	2025-07-18 07:09:47.09657+00	2025-08-19 10:28:27.818081+00	1	2	Ali raza	weekend	cash	10000	10000	2025-08-02
79	Emaan Ali	Naveed	03254321329	-	50.00	40000	20000	10000	10000	2025-08-23	\N	paid	2025-07-19 08:23:21.180569+00	2025-08-23 08:41:21.651269+00	1	2	Ali raza	weekend	cash	20000	0	2025-08-15
40	Ahmed Shahzad	Shahzad	03294011671	35201-0946399-3	25.00	40000	30000	30000	0	2025-07-11	\N	paid	2025-07-11 11:41:29.130707+00	2025-07-13 11:44:18.785275+00	1	2	Ali raza	weekend	cash	30000	0	\N
42	Ahmed Shahzad	Shahzad	03294011671	-	25.00	20000	15000	15000	0	2025-07-11	\N	paid	2025-07-11 11:47:59.8457+00	2025-07-13 11:44:21.648004+00	1	2	Ali raza	weekdays	cash	15000	0	\N
39	Samona Naseer	Rukhsana Kausar	03210955579	35201-7425088-2	40.00	40000	24000	24000	0	2025-07-09	\N	paid	2025-07-09 07:36:49.111512+00	2025-07-13 11:44:24.457292+00	1	2	Ali raza	weekend	cash	24000	0	\N
48	Hashir Naseem	Shahid Naseem	03211681541	-	25.00	20000	15000	15000	0	2025-07-12	\N	paid	2025-07-12 11:09:42.510701+00	2025-07-13 11:45:03.242614+00	1	2	Ali raza	weekdays	cash	15000	0	\N
45	Mustafa Zohaib	Sidra Zohaib	03334022232	-	50.00	40000	20000	20000	0	2025-07-12	\N	paid	2025-07-12 10:31:25.399142+00	2025-07-13 11:45:08.976549+00	1	2	Ali raza	weekend	cash	20000	0	\N
44	Abdullah Asif	Aiman Asif	03004499279	-	50.00	40000	20000	20000	0	2025-07-12	\N	paid	2025-07-12 10:30:29.056258+00	2025-07-13 11:45:16.265504+00	1	2	Ali raza	weekend	cash	20000	0	\N
43	Sheheryar	Nazaqat Ali	03285865747	-	40.00	40000	24000	24000	0	2025-07-12	\N	paid	2025-07-12 08:45:43.781301+00	2025-07-13 11:45:18.367367+00	1	2	Ali raza	weekend	cash	24000	0	\N
37	Sameer Raza	Amir RAZA	0321044452	-	70.00	50000	15000	15000	0	2025-07-08	\N	paid	2025-07-08 08:24:50.811738+00	2025-07-13 11:45:26.183784+00	1	2	Ali raza	weekend	cash	15000	0	\N
36	Zoeema Fatima raza	Amir Raza	03210444452	-	70.00	50000	15000	15000	0	2025-07-08	\N	paid	2025-07-08 08:23:08.063617+00	2025-07-13 11:45:28.454981+00	1	2	Ali raza	weekend	cash	15000	0	\N
35	Zara Raza	Amir Raza	03210444452	35201-8298706-0	58.00	40000	17000	17000	0	2025-07-08	\N	paid	2025-07-08 08:16:17.955657+00	2025-07-13 11:45:50.248699+00	1	2	Ali raza	weekend	cash	17000	0	\N
52	Arsal Bilal	-	Summer kids	-	0.00	10000	10000	10000	0	2025-07-14	\N	paid	2025-07-14 09:55:00.218208+00	2025-07-15 09:53:39.015973+00	4	2	Ali raza	weekend	cash	10000	0	\N
54	Ali Abbas	Altaf	03041210083	3340106313741	50.00	40000	20000	20000	0	2025-07-14	\N	paid	2025-07-14 13:15:18.165223+00	2025-07-14 13:15:30.750895+00	1	2	Ali raza	weekend	cash	20000	0	\N
55	Nida Rauf	-	-	-	0.00	650	650	650	0	2025-07-14	\N	paid	2025-07-14 13:35:55.12514+00	2025-07-15 09:52:46.309303+00	3	2	Ali raza	weekend	cash	650	0	\N
53	Abdullah Iftikhar	-	-	-	0.00	10000	10000	10000	0	2025-07-14	\N	paid	2025-07-14 10:25:01.214852+00	2025-07-15 09:53:23.561637+00	4	2	Ali raza	weekend	cash	10000	0	\N
56	Ali Muhammad	-	-	-	0.00	10000	10000	10000	0	2025-07-15	\N	paid	2025-07-15 07:07:08.863811+00	2025-07-15 09:52:35.441319+00	4	2	Ali raza	weekend	cash	10000	0	\N
71	Shireen Nazeem	-	03124068142	-	63.00	40000	15000	15000	0	2025-07-18	\N	paid	2025-07-18 07:07:01.61092+00	2025-07-18 07:16:22.322142+00	1	2	Ali raza	weekend	cash	15000	0	\N
83	M Hassan	Shafiq ur rehman	03285193702	-	50.00	40000	20000	10000	10000	\N	\N	pending	2025-07-19 10:25:11.612962+00	2025-08-19 10:28:28.690607+00	1	2	Ali raza	weekend	cash	10000	10000	2025-09-01
70	EISHAL ZAHRA	-	-	-	0.00	10000	10000	10000	0	2025-07-17	\N	paid	2025-07-17 14:15:46.719357+00	2025-07-18 07:16:29.741174+00	4	2	Ali raza	weekend	cash	10000	0	\N
67	Zohaima Raza	-	-	-	60.00	20000	8000	8000	0	2025-07-16	\N	paid	2025-07-16 15:05:47.59309+00	2025-07-18 07:16:36.519773+00	1	2	Ali raza	weekend	cash	8000	0	\N
66	Zohaima Raza	-	-	-	70.00	50000	15000	15000	0	2025-07-16	\N	paid	2025-07-16 15:05:07.201875+00	2025-07-18 07:16:37.619544+00	1	2	Ali raza	weekdays	cash	15000	0	\N
65	Fahad Ali	-	Shopify-	-	25.00	10000	7500	7500	0	2025-07-16	\N	paid	2025-07-16 14:49:38.35021+00	2025-07-18 07:16:44.555613+00	4	2	Ali raza	weekend	cash	7500	0	\N
64	Fahad Ali	-	Digital Media	-	25.00	10000	7500	7500	0	2025-07-16	\N	paid	2025-07-16 14:48:52.962541+00	2025-07-18 07:16:45.990287+00	4	2	Ali raza	weekend	cash	7500	0	\N
63	Amna Imran	-	Digital Media	-	25.00	10000	7500	7500	0	2025-07-16	\N	paid	2025-07-16 14:47:38.094196+00	2025-07-18 07:16:47.289037+00	4	2	Ali raza	weekend	cash	7500	0	\N
62	Amna Imran	-	Shopify	-	25.00	10000	7500	7500	0	2025-07-16	\N	paid	2025-07-16 14:46:46.384365+00	2025-07-18 07:16:48.531072+00	4	2	Ali raza	weekend	cash	7500	0	\N
61	SaBAH Rehmat	-	-	-	0.00	10000	10000	10000	0	2025-07-16	\N	paid	2025-07-16 14:45:37.187481+00	2025-07-18 07:16:50.007869+00	4	2	Ali raza	weekdays	cash	10000	0	\N
60	Anum Rahim	-	-	-	0.00	10000	10000	10000	0	2025-07-16	\N	paid	2025-07-16 14:43:35.575517+00	2025-07-18 07:16:54.403238+00	4	2	Ali raza	weekdays	cash	10000	0	\N
75	Ayesha Noor	Rana Khalil ur rehman	03002319392	-	48.00	40000	21000	21000	0	2025-07-18	\N	paid	2025-07-18 15:04:14.808587+00	2025-07-18 15:07:36.995834+00	1	2	Ali raza	weekend	cash	21000	0	\N
74	Rana Muhammad Ali	Rana Khalil ur rehman	03008855789	-	40.00	40000	24000	24000	0	2025-07-18	\N	paid	2025-07-18 15:03:24.279623+00	2025-07-18 15:07:38.177294+00	1	2	Ali raza	weekend	cash	24000	0	\N
77	Hassan Babar	-	-	-	0.00	10000	10000	10000	0	2025-07-19	\N	paid	2025-07-19 07:06:51.670358+00	2025-07-19 07:06:56.85595+00	4	2	Ali raza	weekend	cash	10000	0	\N
78	Hasnain Sultan	Muhammad Shehzad	03224075540	-	50.00	40000	20000	20000	0	2025-07-19	\N	paid	2025-07-19 08:19:16.759393+00	2025-07-19 08:21:22.357229+00	1	2	Ali raza	weekend	cash	20000	0	\N
82	Hasnain Nazeer	Nazeer Ahmed	03009497015	-	63.00	40000	15000	15000	0	2025-07-19	\N	paid	2025-07-19 10:19:52.859755+00	2025-07-19 10:23:42.669436+00	1	2	Ali raza	weekend	cash	15000	0	\N
95	Hijaab zahra	Mujtaba	03214182019	-	63.00	40000	15000	10000	5000	\N	\N	pending	2025-07-21 07:10:36.02696+00	2025-08-19 10:28:29.560902+00	1	2	Ali raza	weekend	cash	10000	5000	2025-08-02
81	Muhammad Zuraiz khattak	Masroor khattak	03124614649	-	63.00	40000	15000	15000	0	2025-07-19	\N	paid	2025-07-19 10:18:25.156003+00	2025-07-19 10:23:43.16746+00	1	2	Ali raza	weekend	cash	15000	0	\N
76	Khawaja Muhammad Danish	-	-	-	0.00	650	650	650	0	2025-07-19	\N	paid	2025-07-19 06:54:00.324885+00	2025-08-19 08:37:34.60975+00	3	2	Ali raza	weekend	cash	650	0	\N
87	Abdullah Bhatti	Mohsin Bhatti	03274146054	-	50.00	40000	20000	10000	10000	\N	\N	pending	2025-07-19 10:47:31.513425+00	2025-08-19 10:28:29.99605+00	1	2	Ali raza	weekend	cash	10000	10000	2025-08-01
80	Minahil Mustaqeem	Mustaqeem	03204875676	-	38.00	40000	25000	12500	12500	2025-08-24	\N	pending	2025-07-19 08:46:33.914249+00	2025-07-19 08:46:33.914615+00	1	2	Ali raza	weekend	cash	25000	12500	\N
88	Abdullah Bhatti	Mohsin BHATII	03274146054	-	50.00	40000	20000	10000	10000	\N	\N	pending	2025-07-19 10:48:22.780589+00	2025-08-19 10:28:30.4317+00	1	2	Ali raza	weekend	cash	10000	10000	2025-08-01
49	Zainab Naeem	Naeem Ashfaq	03371425493	-	50.00	40000	20000	20000	0	2025-07-13	\N	paid	2025-07-13 06:42:31.903802+00	2025-07-13 11:44:06.45337+00	1	2	Ali raza	weekend	cash	20000	0	\N
72	Eshaal Kurkum Big	Shireen Nazeem 	03334349615	-	60.00	50000	20000	10000	10000	\N	\N	pending	2025-07-18 07:08:36.379353+00	2025-08-19 10:28:27.383131+00	1	2	Ali raza	weekdays	cash	10000	10000	2025-08-02
86	Iqra Rafiq	M Rafiq	03214575513	-	50.00	40000	20000	10000	10000	2025-08-23	\N	paid	2025-07-19 10:27:01.117821+00	2025-08-23 09:27:44.024424+00	1	2	Ali raza	weekend	cash	20000	0	2025-09-01
106	Akram	-	-	-	38.00	40000	25000	25000	0	2025-07-28	\N	paid	2025-07-28 13:09:23.129418+00	2025-07-29 08:58:11.46729+00	1	2	Ali raza	weekend	cash	25000	0	\N
137	M.Haseeb Tofeeq	Toofeeq Ahmad	03036069258	-	40.00	40000	24000	24000	0	2025-07-30	\N	paid	2025-07-30 12:27:32.176632+00	2025-07-30 12:41:21.98624+00	2	2	Ali raza	weekdays	cash	24000	0	\N
138	Kaleem Ullah	Abdullah 	03324678071	-	50.00	40000	20000	20000	0	2025-07-30	\N	paid	2025-07-30 12:47:12.963242+00	2025-07-30 12:47:18.905678+00	1	2	Ali raza	weekend	cash	20000	0	\N
139	Ahmad Nadeem	-	-	-	0.00	10000	10000	10000	0	2025-07-31	\N	paid	2025-07-31 12:49:42.420814+00	2025-07-31 12:50:23.032952+00	4	2	Ali raza	weekend	cash	10000	0	\N
140	Owais Naveed	Naveed 	03009424566	-	25.00	40000	30000	30000	0	2025-08-01	\N	paid	2025-08-01 06:28:24.825449+00	2025-08-01 06:28:30.079248+00	2	2	Ali raza	weekdays	cash	30000	0	\N
93	Raheema Agha	-	03286932212	-	40.00	40000	24000	10000	14000	\N	\N	pending	2025-07-20 08:56:19.808703+00	2025-08-19 10:28:32.178183+00	1	2	Ali raza	weekend	cash	10000	14000	2025-08-10
94	muhammad ahmad	ahmad ashraf	03279416186	-	33.00	15000	10001	10000	1	\N	\N	paid	2025-07-21 05:53:33.864098+00	2025-07-21 05:57:22.192859+00	1	2	Ali raza	weekend	cash	10001	0	\N
109	Muhammad Zain	Muhammad Afzal	03034063109	-	40.00	40000	24000	12000	12000	\N	\N	pending	2025-07-29 11:00:36.619157+00	2025-08-19 10:28:32.613862+00	2	2	Ali raza	weekdays	cash	12000	12000	2025-08-15
141	Zain ul Abidin	Ansar Mehmood	03035770079	-	25.00	40000	30000	15000	15000	\N	\N	pending	2025-08-01 13:17:28.11726+00	2025-08-19 10:28:33.04932+00	2	2	Ali raza	weekend	cash	15000	15000	2025-08-15
104	Shamoon Shahram	Shahram Aslam	03314113397	35202-2819762-5	25.00	40000	30000	20000	10000	\N	\N	pending	2025-07-28 06:22:27.842458+00	2025-08-19 10:28:30.866607+00	2	2	Ali raza	weekend	cash	20000	10000	2025-08-10
89	FATIMA TALHA	TALHA ISHFAQ	03234076380	-	50.00	40000	20000	10000	10000	\N	\N	pending	2025-07-19 11:24:55.404737+00	2025-08-19 10:28:31.305811+00	1	2	Ali raza	weekend	cash	10000	10000	2025-08-02
51	Maryam khan	Gulam mahhyudin	03063780458	3320271163152	40.00	40000	24000	14000	10000	2025-08-19	\N	paid	2025-07-14 07:50:16.877746+00	2025-08-19 11:47:41.789009+00	1	2	Ali raza	weekend	cash	24000	0	2025-08-01
105	Rizwan	-	03217763459	-	33.00	15000	10001	10001	0	2025-07-28	\N	paid	2025-07-28 08:12:13.241997+00	2025-07-29 08:58:14.709967+00	1	2	Ali raza	weekend	cash	10001	0	\N
108	Rehaab Awais	Awais	03004481335	-	80.00	50000	10000	10000	0	2025-07-29	\N	paid	2025-07-29 08:53:02.283891+00	2025-07-29 08:56:38.804272+00	1	2	Ali raza	weekend	cash	10000	0	\N
90	Aliza Omer zia	Omer zia	03294229922	-	50.00	40000	20000	20000	0	2025-07-20	\N	paid	2025-07-20 05:57:54.04789+00	2025-07-20 05:58:02.059747+00	1	2	Ali raza	weekend	cash	20000	0	\N
92	Maham Shaukat	Sikandar Shaukat 	03111449976	-	50.00	40000	20000	20000	0	2025-07-20	\N	paid	2025-07-20 08:43:03.71007+00	2025-07-20 08:43:19.008532+00	1	2	Ali raza	weekend	cash	20000	0	\N
91	Maham Sikandar	Sikandar Shaukat	03022588830	-	38.00	40000	25000	25000	0	2025-07-20	\N	paid	2025-07-20 08:40:55.888888+00	2025-07-20 08:43:19.681795+00	1	2	Ali raza	weekend	cash	25000	0	\N
96	Aiza Nadeem	Nadeem	-	-	0.00	10000	10000	10000	0	2025-07-21	\N	paid	2025-07-21 14:02:52.365991+00	2025-07-21 14:06:33.479473+00	4	2	Ali raza	weekend	cash	10000	0	\N
97	Muhammad Ahmad Sajjad	M Sajjad	-	-	10.00	10000	9000	9000	0	2025-07-21	\N	paid	2025-07-21 14:11:01.670145+00	2025-07-21 14:11:13.191847+00	4	2	Ali raza	weekend	cash	9000	0	\N
99	Abdul Hadi  zain	Hadi Zain	030747740588	-	64.00	50000	18000	18000	0	2025-07-22	\N	paid	2025-07-22 06:07:22.918477+00	2025-07-25 07:20:50.026352+00	1	2	Ali raza	weekend	cash	18000	0	\N
100	Zara Zain	Zain	03074740588	-	64.00	50000	18000	18000	0	2025-07-22	\N	paid	2025-07-22 06:08:55.504238+00	2025-07-25 07:20:51.107151+00	1	2	Ali raza	weekend	cash	18000	0	\N
102	Humaima Shafqat	Shafqat	03134001342	-	40.00	40000	24000	24000	0	2025-07-25	\N	paid	2025-07-25 13:01:33.58662+00	2025-07-25 13:13:03.382895+00	1	2	Ali raza	weekend	cash	24000	0	\N
101	Muqeet	Khalid	03170047909	-	50.00	40000	20000	20000	0	2025-07-23	\N	paid	2025-07-23 09:07:09.666406+00	2025-07-25 13:13:04.325562+00	1	2	Ali raza	weekend	cash	20000	0	\N
107	Madeeha Saboor	-	-	-	0.00	650	650	650	0	2025-07-28	\N	paid	2025-07-28 13:15:13.11061+00	2025-07-29 08:58:09.801426+00	3	2	Ali raza	weekend	cash	650	0	\N
164	Muzahid	-	03045082255	-	33.00	15000	10050	10000	50	\N	\N	paid	2025-08-24 05:24:23.151759+00	2025-08-24 05:55:49.270928+00	2	2	Ali raza	weekend	cash	10050	0	\N
84	Muhammad Ali	Shafiq ur rehman	03285193702	-	50.00	40000	20000	10000	10000	2025-08-24	\N	paid	2025-07-19 10:26:07.634454+00	2025-08-24 08:58:19.976908+00	1	2	Ali raza	weekend	cash	20000	0	2025-09-01
166	Samoona	Naseer	03210955579	-	40.00	40000	24000	24000	0	2025-08-24	\N	paid	2025-08-24 10:17:14.461026+00	2025-08-24 10:17:14.46133+00	2	2	Ali raza	weekend	cash	24000	0	\N
167	Hadia Taha	-	03204874854	-	40.00	40000	24000	24000	0	2025-08-26	\N	paid	2025-08-26 13:11:15.486828+00	2025-08-26 13:11:15.48713+00	2	2	Ali raza	weekend	cash	24000	0	\N
168	abdul ahad khalil	khali lullah	03061666032	-	50.00	40000	20000	20000	0	\N	\N	paid	2025-08-27 14:44:46.112321+00	2025-08-29 09:16:03.985774+00	2	2	Ali raza	weekend	cash	20000	0	\N
\.


--
-- TOC entry 3547 (class 0 OID 24830)
-- Dependencies: 246
-- Data for Name: example_student_courses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.example_student_courses (id, student_id, course_id) FROM stdin;
8	7	6
9	8	6
10	9	2
11	10	11
12	11	11
13	12	11
14	13	11
29	3	4
31	4	10
32	5	2
33	6	2
34	22	10
35	28	14
36	29	9
37	30	11
38	31	9
39	32	6
40	33	11
41	34	4
42	35	10
43	36	11
44	37	11
45	38	14
46	39	10
47	40	2
48	41	9
49	42	6
50	43	4
51	44	14
52	45	14
54	47	9
55	48	6
56	49	12
57	50	2
58	51	2
59	52	17
60	53	17
61	54	4
62	55	16
63	56	17
65	58	10
66	59	2
68	60	17
69	61	17
70	62	17
71	63	17
72	64	17
73	65	17
74	66	11
75	67	6
76	68	4
77	69	17
78	70	17
79	71	10
80	72	11
81	73	11
82	74	2
83	75	4
84	76	16
85	77	17
86	78	4
87	79	2
88	80	2
89	81	2
90	82	2
91	83	4
92	84	4
94	86	4
95	87	4
96	88	10
97	89	14
98	90	12
99	91	2
100	92	10
101	93	2
102	94	18
103	95	2
104	96	17
105	97	17
107	99	11
108	100	11
109	101	2
110	102	4
111	103	4
112	104	2
113	105	18
114	106	9
115	107	16
116	108	11
117	109	4
118	137	4
119	138	12
120	139	17
121	140	2
122	141	2
123	142	4
124	143	10
125	144	18
126	145	4
127	146	17
128	147	2
129	148	17
130	149	17
131	150	4
132	151	17
133	152	17
134	153	17
135	154	17
136	155	14
138	157	10
139	158	9
140	159	4
143	162	19
145	164	18
147	166	4
148	167	14
149	168	10
\.


--
-- TOC entry 3552 (class 0 OID 204801)
-- Dependencies: 251
-- Data for Name: example_studentinvoice; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.example_studentinvoice (id, present_invoice_no, pending_invoice_no, created_at, updated_at, student_id) FROM stdin;
1	466	0	2025-08-08 13:10:30.831282+00	2025-08-08 13:10:30.832215+00	7
2	462	0	2025-08-08 13:10:31.303772+00	2025-08-08 13:10:31.304402+00	3
3	463	0	2025-08-08 13:10:31.747348+00	2025-08-08 13:10:31.747916+00	4
4	464	0	2025-08-08 13:10:32.197062+00	2025-08-08 13:10:32.197656+00	5
5	465	0	2025-08-08 13:10:32.655532+00	2025-08-08 13:10:32.656107+00	6
6	470	0	2025-08-08 13:10:33.118523+00	2025-08-08 13:10:33.119096+00	10
7	472	0	2025-08-08 13:10:33.571826+00	2025-08-08 13:10:33.572399+00	12
8	470	0	2025-08-08 13:10:34.034426+00	2025-08-08 13:10:34.034986+00	11
9	473	0	2025-08-08 13:10:34.487738+00	2025-08-08 13:10:34.488311+00	13
10	0	0	2025-08-08 13:10:34.934267+00	2025-08-08 13:10:34.934821+00	32
11	0	0	2025-08-08 13:10:35.393211+00	2025-08-08 13:10:35.393752+00	33
12	469	0	2025-08-08 13:10:35.84959+00	2025-08-08 13:10:35.850203+00	9
13	0	0	2025-08-08 13:10:36.31279+00	2025-08-08 13:10:36.313359+00	47
14	466	0	2025-08-08 13:10:36.766224+00	2025-08-08 13:10:36.76684+00	22
15	0	0	2025-08-08 13:10:37.223022+00	2025-08-08 13:10:37.22356+00	30
16	0	0	2025-08-08 13:10:37.697112+00	2025-08-08 13:10:37.697632+00	31
17	0	0	2025-08-08 13:10:38.15381+00	2025-08-08 13:10:38.154385+00	28
18	0	0	2025-08-08 13:10:38.611995+00	2025-08-08 13:10:38.612554+00	29
19	467	0	2025-08-08 13:10:39.061378+00	2025-08-08 13:10:39.061947+00	8
20	0	0	2025-08-08 13:10:39.510407+00	2025-08-08 13:10:39.51097+00	38
21	0	0	2025-08-08 13:10:39.961483+00	2025-08-08 13:10:39.962047+00	41
23	0	0	2025-08-08 13:10:40.860414+00	2025-08-08 13:10:40.860913+00	49
24	0	0	2025-08-08 13:10:41.309124+00	2025-08-08 13:10:41.309679+00	40
25	0	0	2025-08-08 13:10:41.7664+00	2025-08-08 13:10:41.766939+00	42
26	0	0	2025-08-08 13:10:42.209589+00	2025-08-08 13:10:42.210146+00	39
27	0	0	2025-08-08 13:10:42.652644+00	2025-08-08 13:10:42.65328+00	48
28	0	0	2025-08-08 13:10:43.135045+00	2025-08-08 13:10:43.135603+00	45
29	0	0	2025-08-08 13:10:43.594901+00	2025-08-08 13:10:43.59549+00	44
30	0	0	2025-08-08 13:10:44.048869+00	2025-08-08 13:10:44.049451+00	43
31	0	0	2025-08-08 13:10:44.4989+00	2025-08-08 13:10:44.499423+00	37
32	0	0	2025-08-08 13:10:44.966161+00	2025-08-08 13:10:44.966654+00	36
33	0	0	2025-08-08 13:10:45.426825+00	2025-08-08 13:10:45.427379+00	35
35	0	0	2025-08-08 13:10:46.377269+00	2025-08-08 13:10:46.377817+00	52
36	0	0	2025-08-08 13:10:46.827386+00	2025-08-08 13:10:46.828022+00	54
37	0	0	2025-08-08 13:10:47.287667+00	2025-08-08 13:10:47.288226+00	55
38	0	0	2025-08-08 13:10:47.749274+00	2025-08-08 13:10:47.749813+00	53
41	0	0	2025-08-08 13:10:49.105135+00	2025-08-08 13:10:49.105693+00	56
43	0	0	2025-08-08 13:10:50.002291+00	2025-08-08 13:10:50.002568+00	72
44	0	0	2025-08-08 13:10:50.4608+00	2025-08-08 13:10:50.461356+00	73
45	0	0	2025-08-08 13:10:51.002303+00	2025-08-08 13:10:51.002797+00	71
46	0	0	2025-08-08 13:10:51.49146+00	2025-08-08 13:10:51.492011+00	69
47	0	0	2025-08-08 13:10:51.956928+00	2025-08-08 13:10:51.957266+00	70
48	0	0	2025-08-08 13:10:52.414819+00	2025-08-08 13:10:52.415375+00	67
49	0	0	2025-08-08 13:10:52.848374+00	2025-08-08 13:10:52.848935+00	66
50	0	0	2025-08-08 13:10:53.281771+00	2025-08-08 13:10:53.282205+00	65
51	0	0	2025-08-08 13:10:53.72674+00	2025-08-08 13:10:53.727105+00	64
52	0	0	2025-08-08 13:10:54.162492+00	2025-08-08 13:10:54.162782+00	63
53	0	0	2025-08-08 13:10:54.602287+00	2025-08-08 13:10:54.602902+00	62
54	0	0	2025-08-08 13:10:55.037967+00	2025-08-08 13:10:55.038234+00	61
55	0	0	2025-08-08 13:10:55.822057+00	2025-08-08 13:10:55.822392+00	60
56	0	0	2025-08-08 13:10:56.432674+00	2025-08-08 13:10:56.433259+00	75
57	0	0	2025-08-08 13:10:56.867906+00	2025-08-08 13:10:56.868244+00	74
58	0	0	2025-08-08 13:10:57.546127+00	2025-08-08 13:10:57.546695+00	76
59	0	0	2025-08-08 13:10:57.994349+00	2025-08-08 13:10:57.994896+00	77
60	0	0	2025-08-08 13:10:58.437981+00	2025-08-08 13:10:58.438531+00	78
63	0	0	2025-08-08 13:10:59.75753+00	2025-08-08 13:10:59.758124+00	82
64	0	0	2025-08-08 13:11:00.194516+00	2025-08-08 13:11:00.195103+00	81
65	0	0	2025-08-08 13:11:00.637486+00	2025-08-08 13:11:00.637948+00	83
67	0	0	2025-08-08 13:11:01.526124+00	2025-08-08 13:11:01.52639+00	95
68	0	0	2025-08-08 13:11:01.966829+00	2025-08-08 13:11:01.967083+00	87
69	0	0	2025-08-08 13:11:02.409023+00	2025-08-08 13:11:02.409566+00	88
70	0	0	2025-08-08 13:11:02.847286+00	2025-08-08 13:11:02.847843+00	89
72	0	0	2025-08-08 13:11:03.721056+00	2025-08-08 13:11:03.721489+00	90
73	0	0	2025-08-08 13:11:04.168987+00	2025-08-08 13:11:04.169537+00	92
74	0	0	2025-08-08 13:11:04.643257+00	2025-08-08 13:11:04.643605+00	91
75	0	0	2025-08-08 13:11:05.090591+00	2025-08-08 13:11:05.091141+00	93
76	0	0	2025-08-08 13:11:05.529056+00	2025-08-08 13:11:05.529602+00	94
77	0	0	2025-08-08 13:11:05.963097+00	2025-08-08 13:11:05.963625+00	96
78	0	0	2025-08-08 13:11:06.397225+00	2025-08-08 13:11:06.397771+00	97
79	0	0	2025-08-08 13:11:06.834363+00	2025-08-08 13:11:06.834857+00	99
80	0	0	2025-08-08 13:11:07.269148+00	2025-08-08 13:11:07.269734+00	100
81	0	0	2025-08-08 13:11:07.704375+00	2025-08-08 13:11:07.704641+00	102
82	0	0	2025-08-08 13:11:08.150493+00	2025-08-08 13:11:08.150755+00	101
84	0	0	2025-08-08 13:11:09.026267+00	2025-08-08 13:11:09.026781+00	104
85	0	0	2025-08-08 13:11:09.464164+00	2025-08-08 13:11:09.46475+00	105
86	0	0	2025-08-08 13:11:09.895352+00	2025-08-08 13:11:09.895953+00	108
87	0	0	2025-08-08 13:11:10.333829+00	2025-08-08 13:11:10.334376+00	107
88	0	0	2025-08-08 13:11:10.766627+00	2025-08-08 13:11:10.767202+00	106
89	0	0	2025-08-08 13:11:11.200659+00	2025-08-08 13:11:11.201191+00	109
90	0	0	2025-08-08 13:11:11.637678+00	2025-08-08 13:11:11.638216+00	137
91	0	0	2025-08-08 13:11:12.074526+00	2025-08-08 13:11:12.074887+00	138
92	0	0	2025-08-08 13:11:12.507349+00	2025-08-08 13:11:12.507892+00	139
93	0	0	2025-08-08 13:11:12.947675+00	2025-08-08 13:11:12.948221+00	140
94	0	0	2025-08-08 13:11:13.379417+00	2025-08-08 13:11:13.379678+00	141
95	0	0	2025-08-08 13:11:13.812622+00	2025-08-08 13:11:13.813195+00	142
96	0	0	2025-08-08 13:11:14.246428+00	2025-08-08 13:11:14.246959+00	143
97	0	0	2025-08-08 13:11:14.683824+00	2025-08-08 13:11:14.684328+00	145
99	0	0	2025-08-08 13:11:15.556573+00	2025-08-08 13:11:15.557155+00	146
100	0	583	2025-08-08 13:11:15.989455+00	2025-08-08 14:17:06.445669+00	147
101	584	581	2025-08-08 13:11:16.424831+00	2025-08-08 14:24:59.994663+00	148
105	582	0	2025-08-12 10:13:29.024024+00	2025-08-12 10:13:29.057569+00	154
98	0	0	2025-08-08 13:11:15.121201+00	2025-08-08 14:06:12.291088+00	144
102	0	582	2025-08-08 13:11:16.8599+00	2025-08-08 14:06:13.886942+00	34
103	582	0	2025-08-09 07:13:39.4442+00	2025-08-09 07:13:39.477139+00	149
104	583	0	2025-08-09 08:57:15.618919+00	2025-08-09 08:57:15.650692+00	150
106	583	0	2025-08-12 10:14:05.985621+00	2025-08-12 10:14:06.007483+00	153
107	584	0	2025-08-12 10:14:23.437468+00	2025-08-12 10:14:23.459182+00	152
108	585	0	2025-08-12 10:14:38.947754+00	2025-08-12 10:14:38.972053+00	151
109	586	0	2025-08-13 10:37:16.634712+00	2025-08-13 10:37:16.6728+00	155
110	587	0	2025-08-16 09:37:07.535877+00	2025-08-16 09:37:07.57186+00	157
40	0	588	2025-08-08 13:10:48.665358+00	2025-08-16 09:44:45.557926+00	59
39	0	589	2025-08-08 13:10:48.201178+00	2025-08-16 09:45:14.184065+00	58
42	0	590	2025-08-08 13:10:49.549331+00	2025-08-16 10:18:24.686905+00	68
83	0	592	2025-08-08 13:11:08.584821+00	2025-08-17 10:22:24.983041+00	103
111	593	0	2025-08-17 10:31:33.102167+00	2025-08-17 10:31:33.136443+00	158
112	594	0	2025-08-17 10:37:23.986905+00	2025-08-17 10:37:24.017919+00	159
34	595	591	2025-08-08 13:10:45.891792+00	2025-08-19 09:29:08.683724+00	51
114	595	0	2025-08-20 09:15:28.647246+00	2025-08-20 09:15:28.677929+00	162
22	0	596	2025-08-08 13:10:40.420687+00	2025-08-23 07:57:11.826178+00	50
71	0	599	2025-08-08 13:11:03.282057+00	2025-08-23 09:25:53.869026+00	86
61	597	598	2025-08-08 13:10:58.876699+00	2025-08-23 08:38:18.471927+00	79
115	600	0	2025-08-24 05:24:27.951582+00	2025-08-24 05:24:27.981763+00	164
66	0	601	2025-08-08 13:11:01.080345+00	2025-08-24 08:53:53.648601+00	84
62	0	602	2025-08-08 13:10:59.31768+00	2025-08-24 09:16:34.611146+00	80
116	603	0	2025-08-24 10:17:18.799878+00	2025-08-24 10:17:18.821804+00	166
117	604	0	2025-08-26 13:11:24.078266+00	2025-08-26 13:11:24.109106+00	167
118	605	0	2025-08-27 14:44:51.346374+00	2025-08-27 14:44:51.378234+00	168
\.


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 231
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 233
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 235
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 19, true);


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 221
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 219
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 237
-- Name: example_batch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.example_batch_id_seq', 4, true);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 239
-- Name: example_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.example_course_id_seq', 19, true);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 241
-- Name: example_csrprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.example_csrprofile_id_seq', 5, true);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 247
-- Name: example_invoicesettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.example_invoicesettings_id_seq', 3, true);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 245
-- Name: example_student_courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.example_student_courses_id_seq', 149, true);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 243
-- Name: example_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.example_student_id_seq', 168, true);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 250
-- Name: example_studentinvoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.example_studentinvoice_id_seq', 118, true);


--
-- TOC entry 3279 (class 2606 OID 16492)
-- Name: users_sync users_sync_pkey; Type: CONSTRAINT; Schema: neon_auth; Owner: -
--

ALTER TABLE ONLY neon_auth.users_sync
    ADD CONSTRAINT users_sync_pkey PRIMARY KEY (id);


--
-- TOC entry 3293 (class 2606 OID 24799)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3298 (class 2606 OID 24730)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3301 (class 2606 OID 24699)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 24691)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3288 (class 2606 OID 24721)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3290 (class 2606 OID 24685)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 24713)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3312 (class 2606 OID 24745)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3303 (class 2606 OID 24705)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3315 (class 2606 OID 24719)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3318 (class 2606 OID 24759)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3306 (class 2606 OID 24794)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3321 (class 2606 OID 24780)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 24679)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3285 (class 2606 OID 24677)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3281 (class 2606 OID 24671)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3351 (class 2606 OID 24893)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3325 (class 2606 OID 24808)
-- Name: example_batch example_batch_batch_number_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_batch
    ADD CONSTRAINT example_batch_batch_number_key UNIQUE (batch_number);


--
-- TOC entry 3328 (class 2606 OID 24806)
-- Name: example_batch example_batch_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_batch
    ADD CONSTRAINT example_batch_pkey PRIMARY KEY (id);


--
-- TOC entry 3330 (class 2606 OID 24814)
-- Name: example_course example_course_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_course
    ADD CONSTRAINT example_course_pkey PRIMARY KEY (id);


--
-- TOC entry 3332 (class 2606 OID 24820)
-- Name: example_csrprofile example_csrprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_csrprofile
    ADD CONSTRAINT example_csrprofile_pkey PRIMARY KEY (id);


--
-- TOC entry 3334 (class 2606 OID 24822)
-- Name: example_csrprofile example_csrprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_csrprofile
    ADD CONSTRAINT example_csrprofile_user_id_key UNIQUE (user_id);


--
-- TOC entry 3346 (class 2606 OID 24843)
-- Name: example_invoicesettings example_invoicesettings_csr_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_invoicesettings
    ADD CONSTRAINT example_invoicesettings_csr_id_key UNIQUE (csr_id);


--
-- TOC entry 3348 (class 2606 OID 24841)
-- Name: example_invoicesettings example_invoicesettings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_invoicesettings
    ADD CONSTRAINT example_invoicesettings_pkey PRIMARY KEY (id);


--
-- TOC entry 3341 (class 2606 OID 24834)
-- Name: example_student_courses example_student_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_student_courses
    ADD CONSTRAINT example_student_courses_pkey PRIMARY KEY (id);


--
-- TOC entry 3344 (class 2606 OID 24868)
-- Name: example_student_courses example_student_courses_student_id_course_id_24edd662_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_student_courses
    ADD CONSTRAINT example_student_courses_student_id_course_id_24edd662_uniq UNIQUE (student_id, course_id);


--
-- TOC entry 3338 (class 2606 OID 24828)
-- Name: example_student example_student_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_student
    ADD CONSTRAINT example_student_pkey PRIMARY KEY (id);


--
-- TOC entry 3354 (class 2606 OID 204805)
-- Name: example_studentinvoice example_studentinvoice_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_studentinvoice
    ADD CONSTRAINT example_studentinvoice_pkey PRIMARY KEY (id);


--
-- TOC entry 3356 (class 2606 OID 204807)
-- Name: example_studentinvoice example_studentinvoice_student_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_studentinvoice
    ADD CONSTRAINT example_studentinvoice_student_id_key UNIQUE (student_id);


--
-- TOC entry 3277 (class 1259 OID 16493)
-- Name: users_sync_deleted_at_idx; Type: INDEX; Schema: neon_auth; Owner: -
--

CREATE INDEX users_sync_deleted_at_idx ON neon_auth.users_sync USING btree (deleted_at);


--
-- TOC entry 3291 (class 1259 OID 24800)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3296 (class 1259 OID 24741)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3299 (class 1259 OID 24742)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3286 (class 1259 OID 24727)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3307 (class 1259 OID 24757)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3310 (class 1259 OID 24756)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3313 (class 1259 OID 24771)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3316 (class 1259 OID 24770)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3304 (class 1259 OID 24795)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3319 (class 1259 OID 24791)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3322 (class 1259 OID 24792)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3349 (class 1259 OID 24895)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3352 (class 1259 OID 24894)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3323 (class 1259 OID 24849)
-- Name: example_batch_batch_number_a25881c9_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX example_batch_batch_number_a25881c9_like ON public.example_batch USING btree (batch_number varchar_pattern_ops);


--
-- TOC entry 3326 (class 1259 OID 24886)
-- Name: example_batch_created_by_id_404779c1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX example_batch_created_by_id_404779c1 ON public.example_batch USING btree (created_by_id);


--
-- TOC entry 3335 (class 1259 OID 24865)
-- Name: example_student_batch_id_56166908; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX example_student_batch_id_56166908 ON public.example_student USING btree (batch_id);


--
-- TOC entry 3339 (class 1259 OID 24880)
-- Name: example_student_courses_course_id_bf6e0865; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX example_student_courses_course_id_bf6e0865 ON public.example_student_courses USING btree (course_id);


--
-- TOC entry 3342 (class 1259 OID 24879)
-- Name: example_student_courses_student_id_2ce78121; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX example_student_courses_student_id_2ce78121 ON public.example_student_courses USING btree (student_id);


--
-- TOC entry 3336 (class 1259 OID 24866)
-- Name: example_student_created_by_id_f877729d; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX example_student_created_by_id_f877729d ON public.example_student USING btree (created_by_id);


--
-- TOC entry 3358 (class 2606 OID 24736)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3359 (class 2606 OID 24731)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3357 (class 2606 OID 24722)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3360 (class 2606 OID 24751)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3361 (class 2606 OID 24746)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3362 (class 2606 OID 24765)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3363 (class 2606 OID 24760)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3364 (class 2606 OID 24781)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3365 (class 2606 OID 24786)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3366 (class 2606 OID 24844)
-- Name: example_batch example_batch_created_by_id_404779c1_fk_example_csrprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_batch
    ADD CONSTRAINT example_batch_created_by_id_404779c1_fk_example_csrprofile_id FOREIGN KEY (created_by_id) REFERENCES public.example_csrprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3367 (class 2606 OID 24850)
-- Name: example_csrprofile example_csrprofile_user_id_dcbd2a7d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_csrprofile
    ADD CONSTRAINT example_csrprofile_user_id_dcbd2a7d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3372 (class 2606 OID 24881)
-- Name: example_invoicesettings example_invoicesetti_csr_id_bc8e0dad_fk_example_c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_invoicesettings
    ADD CONSTRAINT example_invoicesetti_csr_id_bc8e0dad_fk_example_c FOREIGN KEY (csr_id) REFERENCES public.example_csrprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3368 (class 2606 OID 24855)
-- Name: example_student example_student_batch_id_56166908_fk_example_batch_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_student
    ADD CONSTRAINT example_student_batch_id_56166908_fk_example_batch_id FOREIGN KEY (batch_id) REFERENCES public.example_batch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3370 (class 2606 OID 24869)
-- Name: example_student_courses example_student_cour_student_id_2ce78121_fk_example_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_student_courses
    ADD CONSTRAINT example_student_cour_student_id_2ce78121_fk_example_s FOREIGN KEY (student_id) REFERENCES public.example_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3371 (class 2606 OID 24874)
-- Name: example_student_courses example_student_courses_course_id_bf6e0865_fk_example_course_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_student_courses
    ADD CONSTRAINT example_student_courses_course_id_bf6e0865_fk_example_course_id FOREIGN KEY (course_id) REFERENCES public.example_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3369 (class 2606 OID 24860)
-- Name: example_student example_student_created_by_id_f877729d_fk_example_csrprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_student
    ADD CONSTRAINT example_student_created_by_id_f877729d_fk_example_csrprofile_id FOREIGN KEY (created_by_id) REFERENCES public.example_csrprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3373 (class 2606 OID 204808)
-- Name: example_studentinvoice example_studentinvoi_student_id_ed900df6_fk_example_s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.example_studentinvoice
    ADD CONSTRAINT example_studentinvoi_student_id_ed900df6_fk_example_s FOREIGN KEY (student_id) REFERENCES public.example_student(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2025-08-30 18:37:16

--
-- PostgreSQL database dump complete
--

\unrestrict xG63lQfeNJyzlMNa4b9boUXDcGn3NFyQwJyojqLT7iCNNPyTcNXRnCWZCPNhgb0

