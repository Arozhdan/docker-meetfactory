--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Debian 13.3-1.pgdg100+1)
-- Dumped by pg_dump version 13.3 (Debian 13.3-1.pgdg100+1)

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

ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_pkey;
ALTER TABLE ONLY public.i18n_locales DROP CONSTRAINT i18n_locales_code_unique;
ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
ALTER TABLE ONLY public.collections DROP CONSTRAINT collections_pkey;
ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.i18n_locales ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.collections ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public."users-permissions_user_id_seq";
DROP TABLE public."users-permissions_user";
DROP SEQUENCE public."users-permissions_role_id_seq";
DROP TABLE public."users-permissions_role";
DROP SEQUENCE public."users-permissions_permission_id_seq";
DROP TABLE public."users-permissions_permission";
DROP SEQUENCE public.upload_file_morph_id_seq;
DROP TABLE public.upload_file_morph;
DROP SEQUENCE public.upload_file_id_seq;
DROP TABLE public.upload_file;
DROP SEQUENCE public.strapi_webhooks_id_seq;
DROP TABLE public.strapi_webhooks;
DROP SEQUENCE public.strapi_users_roles_id_seq;
DROP TABLE public.strapi_users_roles;
DROP SEQUENCE public.strapi_role_id_seq;
DROP TABLE public.strapi_role;
DROP SEQUENCE public.strapi_permission_id_seq;
DROP TABLE public.strapi_permission;
DROP SEQUENCE public.strapi_administrator_id_seq;
DROP TABLE public.strapi_administrator;
DROP SEQUENCE public.i18n_locales_id_seq;
DROP TABLE public.i18n_locales;
DROP SEQUENCE public.core_store_id_seq;
DROP TABLE public.core_store;
DROP SEQUENCE public.collections_id_seq;
DROP TABLE public.collections;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: collections; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.collections (
    id integer NOT NULL,
    unique_id character varying(255),
    content character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.collections OWNER TO strapi;

--
-- Name: collections_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.collections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.collections_id_seq OWNER TO strapi;

--
-- Name: collections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.collections_id_seq OWNED BY public.collections.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO strapi;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO strapi;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.i18n_locales OWNER TO strapi;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locales_id_seq OWNER TO strapi;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


ALTER TABLE public.strapi_administrator OWNER TO strapi;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO strapi;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO strapi;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO strapi;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO strapi;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO strapi;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO strapi;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO strapi;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO strapi;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO strapi;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO strapi;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO strapi;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO strapi;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO strapi;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO strapi;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO strapi;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: collections id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.collections ALTER COLUMN id SET DEFAULT nextval('public.collections_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.collections (id, unique_id, content, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	1	1	2021-07-30 13:44:28.315+00	1	1	2021-07-30 13:44:26.077+00	2021-07-30 14:52:43.1+00
2	2	2	2021-07-30 14:52:51.998+00	1	1	2021-07-30 14:50:19.523+00	2021-07-30 14:52:52.019+00
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
3	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
4	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
5	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
6	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
7	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
8	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
9	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
12	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
13	plugin_documentation_config	{"restrictedAccess":false}	object		
14	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
16	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
24	plugin_i18n_default_locale	"en"	string		
11	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::application::collection.collection	{"uid":"application::collection.collection","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"unique_id","defaultSortBy":"unique_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"unique_id":{"edit":{"label":"Unique_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Unique_id","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","unique_id","content","created_at"],"edit":[[{"name":"unique_id","size":6},{"name":"content","size":6}],[{"name":"image","size":6}]],"editRelations":[]}}	object		
17	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
18	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
19	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
20	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
21	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
25	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
26	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
27	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
22	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
23	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
2	model_def_application::collection.collection	{"uid":"application::collection.collection","collectionName":"collections","kind":"collectionType","info":{"name":"collection","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"unique_id":{"type":"string"},"content":{"type":"string"},"image":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
10	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
\.


--
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	\N	2021-07-30 13:31:01.151+00	2021-07-30 13:31:01.151+00
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
1	Arozhdan	Baibussynov	\N	halala30@gmail.com	$2a$10$lYR5GeRY.hbyELNPNy8nLOawXBCbFyf4eL2x89hLAFisI.3fu6Wz6	\N	\N	t	\N	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
1	plugins::content-manager.explorer.create	application::collection.collection	{"fields": ["unique_id", "content"]}	[]	2	2021-07-30 13:31:03.542+00	2021-07-30 13:31:03.564+00
2	plugins::content-manager.explorer.read	application::collection.collection	{"fields": ["unique_id", "content"]}	[]	2	2021-07-30 13:31:03.542+00	2021-07-30 13:31:03.565+00
4	plugins::content-manager.explorer.update	application::collection.collection	{"fields": ["unique_id", "content"]}	[]	2	2021-07-30 13:31:03.543+00	2021-07-30 13:31:03.565+00
3	plugins::content-manager.explorer.delete	application::collection.collection	{}	[]	2	2021-07-30 13:31:03.543+00	2021-07-30 13:31:03.565+00
5	plugins::content-manager.explorer.publish	application::collection.collection	{}	[]	2	2021-07-30 13:31:03.543+00	2021-07-30 13:31:03.565+00
6	plugins::upload.read	\N	{}	[]	2	2021-07-30 13:31:03.543+00	2021-07-30 13:31:03.565+00
7	plugins::upload.assets.create	\N	{}	[]	2	2021-07-30 13:31:03.544+00	2021-07-30 13:31:03.566+00
8	plugins::upload.assets.update	\N	{}	[]	2	2021-07-30 13:31:03.544+00	2021-07-30 13:31:03.566+00
9	plugins::upload.assets.download	\N	{}	[]	2	2021-07-30 13:31:03.544+00	2021-07-30 13:31:03.566+00
10	plugins::upload.assets.copy-link	\N	{}	[]	2	2021-07-30 13:31:03.544+00	2021-07-30 13:31:03.57+00
12	plugins::content-manager.explorer.read	application::collection.collection	{"fields": ["unique_id", "content"]}	["admin::is-creator"]	3	2021-07-30 13:31:03.607+00	2021-07-30 13:31:03.627+00
11	plugins::content-manager.explorer.create	application::collection.collection	{"fields": ["unique_id", "content"]}	["admin::is-creator"]	3	2021-07-30 13:31:03.607+00	2021-07-30 13:31:03.627+00
13	plugins::content-manager.explorer.update	application::collection.collection	{"fields": ["unique_id", "content"]}	["admin::is-creator"]	3	2021-07-30 13:31:03.608+00	2021-07-30 13:31:03.627+00
14	plugins::content-manager.explorer.delete	application::collection.collection	{}	["admin::is-creator"]	3	2021-07-30 13:31:03.608+00	2021-07-30 13:31:03.628+00
15	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2021-07-30 13:31:03.608+00	2021-07-30 13:31:03.628+00
16	plugins::upload.assets.create	\N	{}	[]	3	2021-07-30 13:31:03.608+00	2021-07-30 13:31:03.628+00
17	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2021-07-30 13:31:03.608+00	2021-07-30 13:31:03.628+00
18	plugins::upload.assets.download	\N	{}	[]	3	2021-07-30 13:31:03.609+00	2021-07-30 13:31:03.628+00
19	plugins::upload.assets.copy-link	\N	{}	[]	3	2021-07-30 13:31:03.609+00	2021-07-30 13:31:03.633+00
21	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-07-30 13:31:03.704+00	2021-07-30 13:31:03.748+00
23	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-07-30 13:31:03.705+00	2021-07-30 13:31:03.749+00
30	plugins::email.settings.read	\N	{}	[]	1	2021-07-30 13:31:03.793+00	2021-07-30 13:31:03.822+00
31	plugins::documentation.read	\N	{}	[]	1	2021-07-30 13:31:03.793+00	2021-07-30 13:31:03.822+00
32	plugins::documentation.settings.update	\N	{}	[]	1	2021-07-30 13:31:03.794+00	2021-07-30 13:31:03.823+00
33	plugins::documentation.settings.regenerate	\N	{}	[]	1	2021-07-30 13:31:03.794+00	2021-07-30 13:31:03.823+00
35	plugins::upload.assets.create	\N	{}	[]	1	2021-07-30 13:31:03.795+00	2021-07-30 13:31:03.836+00
39	plugins::upload.settings.read	\N	{}	[]	1	2021-07-30 13:31:03.813+00	2021-07-30 13:31:03.853+00
40	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2021-07-30 13:31:03.893+00	2021-07-30 13:31:03.914+00
43	plugins::i18n.locale.create	\N	{}	[]	1	2021-07-30 13:31:03.898+00	2021-07-30 13:31:03.919+00
46	plugins::i18n.locale.delete	\N	{}	[]	1	2021-07-30 13:31:03.898+00	2021-07-30 13:31:03.919+00
41	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2021-07-30 13:31:03.893+00	2021-07-30 13:31:03.919+00
48	plugins::users-permissions.roles.read	\N	{}	[]	1	2021-07-30 13:31:03.903+00	2021-07-30 13:31:03.925+00
49	plugins::users-permissions.roles.update	\N	{}	[]	1	2021-07-30 13:31:03.915+00	2021-07-30 13:31:03.94+00
52	plugins::users-permissions.providers.update	\N	{}	[]	1	2021-07-30 13:31:03.953+00	2021-07-30 13:31:03.979+00
53	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2021-07-30 13:31:03.953+00	2021-07-30 13:31:03.986+00
56	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2021-07-30 13:31:03.957+00	2021-07-30 13:31:03.986+00
55	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2021-07-30 13:31:03.953+00	2021-07-30 13:31:03.986+00
58	admin::marketplace.plugins.install	\N	{}	[]	1	2021-07-30 13:31:03.964+00	2021-07-30 13:31:03.993+00
59	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2021-07-30 13:31:03.987+00	2021-07-30 13:31:04.02+00
61	admin::webhooks.read	\N	{}	[]	1	2021-07-30 13:31:04.025+00	2021-07-30 13:31:04.064+00
63	admin::webhooks.delete	\N	{}	[]	1	2021-07-30 13:31:04.037+00	2021-07-30 13:31:04.073+00
66	admin::users.update	\N	{}	[]	1	2021-07-30 13:31:04.038+00	2021-07-30 13:31:04.073+00
67	admin::users.delete	\N	{}	[]	1	2021-07-30 13:31:04.047+00	2021-07-30 13:31:04.08+00
68	admin::roles.create	\N	{}	[]	1	2021-07-30 13:31:04.047+00	2021-07-30 13:31:04.081+00
69	admin::roles.read	\N	{}	[]	1	2021-07-30 13:31:04.081+00	2021-07-30 13:31:04.109+00
25	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-07-30 13:31:03.706+00	2021-07-30 13:31:03.75+00
34	plugins::upload.read	\N	{}	[]	1	2021-07-30 13:31:03.794+00	2021-07-30 13:31:03.824+00
42	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2021-07-30 13:31:03.897+00	2021-07-30 13:31:03.919+00
50	plugins::users-permissions.roles.delete	\N	{}	[]	1	2021-07-30 13:31:03.952+00	2021-07-30 13:31:03.979+00
60	admin::webhooks.create	\N	{}	[]	1	2021-07-30 13:31:04.024+00	2021-07-30 13:31:04.064+00
71	admin::roles.delete	\N	{}	[]	1	2021-07-30 13:31:04.114+00	2021-07-30 13:31:04.128+00
37	plugins::upload.assets.download	\N	{}	[]	1	2021-07-30 13:31:03.8+00	2021-07-30 13:31:03.836+00
45	plugins::i18n.locale.update	\N	{}	[]	1	2021-07-30 13:31:03.898+00	2021-07-30 13:31:03.919+00
51	plugins::users-permissions.providers.read	\N	{}	[]	1	2021-07-30 13:31:03.953+00	2021-07-30 13:31:03.979+00
62	admin::webhooks.update	\N	{}	[]	1	2021-07-30 13:31:04.025+00	2021-07-30 13:31:04.065+00
70	admin::roles.update	\N	{}	[]	1	2021-07-30 13:31:04.113+00	2021-07-30 13:31:04.124+00
36	plugins::upload.assets.update	\N	{}	[]	1	2021-07-30 13:31:03.8+00	2021-07-30 13:31:03.836+00
44	plugins::i18n.locale.read	\N	{}	[]	1	2021-07-30 13:31:03.898+00	2021-07-30 13:31:03.919+00
54	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2021-07-30 13:31:03.953+00	2021-07-30 13:31:03.98+00
65	admin::users.read	\N	{}	[]	1	2021-07-30 13:31:04.038+00	2021-07-30 13:31:04.073+00
29	plugins::content-type-builder.read	\N	{}	[]	1	2021-07-30 13:31:03.717+00	2021-07-30 13:31:03.757+00
38	plugins::upload.assets.copy-link	\N	{}	[]	1	2021-07-30 13:31:03.807+00	2021-07-30 13:31:03.845+00
47	plugins::users-permissions.roles.create	\N	{}	[]	1	2021-07-30 13:31:03.903+00	2021-07-30 13:31:03.924+00
57	admin::marketplace.read	\N	{}	[]	1	2021-07-30 13:31:03.958+00	2021-07-30 13:31:03.986+00
64	admin::users.create	\N	{}	[]	1	2021-07-30 13:31:04.038+00	2021-07-30 13:31:04.073+00
72	plugins::content-manager.explorer.create	application::collection.collection	{"fields": ["unique_id", "content", "image"]}	[]	1	2021-07-30 14:52:25.548+00	2021-07-30 14:52:25.573+00
73	plugins::content-manager.explorer.update	application::collection.collection	{"fields": ["unique_id", "content", "image"]}	[]	1	2021-07-30 14:52:25.548+00	2021-07-30 14:52:25.574+00
74	plugins::content-manager.explorer.read	application::collection.collection	{"fields": ["unique_id", "content", "image"]}	[]	1	2021-07-30 14:52:25.549+00	2021-07-30 14:52:25.574+00
75	plugins::content-manager.explorer.delete	application::collection.collection	{}	[]	1	2021-07-30 14:52:25.549+00	2021-07-30 14:52:25.574+00
76	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2021-07-30 14:52:25.55+00	2021-07-30 14:52:25.574+00
77	plugins::content-manager.explorer.publish	application::collection.collection	{}	[]	1	2021-07-30 14:52:25.551+00	2021-07-30 14:52:25.58+00
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2021-07-30 13:31:03.449+00	2021-07-30 13:31:03.449+00
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2021-07-30 13:31:03.484+00	2021-07-30 13:31:03.484+00
3	Author	strapi-author	Authors can manage the content they have created.	2021-07-30 13:31:03.509+00	2021-07-30 13:31:03.509+00
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
1	or-hakim-b5JbQrhGyEU-unsplash.jpg			6000	4000	{"large": {"ext": ".jpg", "url": "/uploads/large_or_hakim_b5_Jb_Qrh_Gy_EU_unsplash_91ef49bfad.jpg", "hash": "large_or_hakim_b5_Jb_Qrh_Gy_EU_unsplash_91ef49bfad", "mime": "image/jpeg", "name": "large_or-hakim-b5JbQrhGyEU-unsplash.jpg", "path": null, "size": 13.4, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "/uploads/small_or_hakim_b5_Jb_Qrh_Gy_EU_unsplash_91ef49bfad.jpg", "hash": "small_or_hakim_b5_Jb_Qrh_Gy_EU_unsplash_91ef49bfad", "mime": "image/jpeg", "name": "small_or-hakim-b5JbQrhGyEU-unsplash.jpg", "path": null, "size": 4.8, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "/uploads/medium_or_hakim_b5_Jb_Qrh_Gy_EU_unsplash_91ef49bfad.jpg", "hash": "medium_or_hakim_b5_Jb_Qrh_Gy_EU_unsplash_91ef49bfad", "mime": "image/jpeg", "name": "medium_or-hakim-b5JbQrhGyEU-unsplash.jpg", "path": null, "size": 8.47, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_or_hakim_b5_Jb_Qrh_Gy_EU_unsplash_91ef49bfad.jpg", "hash": "thumbnail_or_hakim_b5_Jb_Qrh_Gy_EU_unsplash_91ef49bfad", "mime": "image/jpeg", "name": "thumbnail_or-hakim-b5JbQrhGyEU-unsplash.jpg", "path": null, "size": 1.85, "width": 234, "height": 156}}	or_hakim_b5_Jb_Qrh_Gy_EU_unsplash_91ef49bfad	.jpg	image/jpeg	1281.32	/uploads/or_hakim_b5_Jb_Qrh_Gy_EU_unsplash_91ef49bfad.jpg	\N	local	\N	1	1	2021-07-30 14:52:40.414+00	2021-07-30 14:52:40.43+00
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	collections	image	1
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	application	collection	count	f		1	\N	\N
2	application	collection	count	f		2	\N	\N
3	application	collection	create	f		1	\N	\N
5	application	collection	delete	f		1	\N	\N
4	application	collection	create	f		2	\N	\N
6	application	collection	delete	f		2	\N	\N
7	application	collection	find	f		1	\N	\N
8	application	collection	find	f		2	\N	\N
9	application	collection	findone	f		1	\N	\N
10	application	collection	findone	f		2	\N	\N
12	application	collection	update	f		2	\N	\N
13	content-manager	collection-types	bulkdelete	f		1	\N	\N
14	content-manager	collection-types	bulkdelete	f		2	\N	\N
15	content-manager	collection-types	create	f		1	\N	\N
16	content-manager	collection-types	create	f		2	\N	\N
17	content-manager	collection-types	delete	f		1	\N	\N
18	content-manager	collection-types	delete	f		2	\N	\N
11	application	collection	update	f		1	\N	\N
19	content-manager	collection-types	find	f		1	\N	\N
20	content-manager	collection-types	find	f		2	\N	\N
21	content-manager	collection-types	findone	f		1	\N	\N
22	content-manager	collection-types	findone	f		2	\N	\N
23	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
24	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
25	content-manager	collection-types	publish	f		1	\N	\N
26	content-manager	collection-types	publish	f		2	\N	\N
27	content-manager	collection-types	unpublish	f		1	\N	\N
28	content-manager	collection-types	unpublish	f		2	\N	\N
29	content-manager	collection-types	update	f		1	\N	\N
30	content-manager	collection-types	update	f		2	\N	\N
31	content-manager	components	findcomponentconfiguration	f		1	\N	\N
32	content-manager	components	findcomponentconfiguration	f		2	\N	\N
33	content-manager	components	findcomponents	f		1	\N	\N
34	content-manager	components	findcomponents	f		2	\N	\N
35	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
36	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
38	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
39	content-manager	content-types	findcontenttypes	f		1	\N	\N
37	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
40	content-manager	content-types	findcontenttypes	f		2	\N	\N
41	content-manager	content-types	findcontenttypessettings	f		1	\N	\N
42	content-manager	content-types	findcontenttypessettings	f		2	\N	\N
43	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
45	content-manager	relations	find	f		1	\N	\N
44	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
46	content-manager	relations	find	f		2	\N	\N
47	content-manager	single-types	createorupdate	f		1	\N	\N
48	content-manager	single-types	createorupdate	f		2	\N	\N
49	content-manager	single-types	delete	f		1	\N	\N
50	content-manager	single-types	delete	f		2	\N	\N
51	content-manager	single-types	find	f		1	\N	\N
52	content-manager	single-types	find	f		2	\N	\N
53	content-manager	single-types	publish	f		1	\N	\N
54	content-manager	single-types	publish	f		2	\N	\N
55	content-manager	single-types	unpublish	f		1	\N	\N
56	content-manager	single-types	unpublish	f		2	\N	\N
57	content-manager	uid	checkuidavailability	f		1	\N	\N
58	content-manager	uid	checkuidavailability	f		2	\N	\N
59	content-manager	uid	generateuid	f		1	\N	\N
60	content-manager	uid	generateuid	f		2	\N	\N
61	content-type-builder	builder	getreservednames	f		1	\N	\N
62	content-type-builder	builder	getreservednames	f		2	\N	\N
63	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
64	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
66	content-type-builder	componentcategories	editcategory	f		2	\N	\N
67	content-type-builder	components	createcomponent	f		1	\N	\N
68	content-type-builder	components	createcomponent	f		2	\N	\N
65	content-type-builder	componentcategories	editcategory	f		1	\N	\N
70	content-type-builder	components	deletecomponent	f		2	\N	\N
71	content-type-builder	components	getcomponent	f		1	\N	\N
73	content-type-builder	components	getcomponents	f		1	\N	\N
74	content-type-builder	components	getcomponents	f		2	\N	\N
75	content-type-builder	components	updatecomponent	f		1	\N	\N
76	content-type-builder	components	updatecomponent	f		2	\N	\N
77	content-type-builder	connections	getconnections	f		1	\N	\N
72	content-type-builder	components	getcomponent	f		2	\N	\N
81	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
91	documentation	documentation	getinfos	f		1	\N	\N
102	documentation	documentation	updatesettings	f		2	\N	\N
111	i18n	iso-locales	listisolocales	f		1	\N	\N
121	upload	upload	count	f		1	\N	\N
131	upload	upload	search	f		1	\N	\N
141	users-permissions	auth	emailconfirmation	f		1	\N	\N
151	users-permissions	user	count	f		1	\N	\N
160	users-permissions	user	find	f		2	\N	\N
69	content-type-builder	components	deletecomponent	f		1	\N	\N
78	content-type-builder	connections	getconnections	f		2	\N	\N
87	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
96	documentation	documentation	login	f		2	\N	\N
103	email	email	getsettings	f		1	\N	\N
114	i18n	locales	createlocale	f		2	\N	\N
126	upload	upload	find	f		2	\N	\N
138	users-permissions	auth	callback	t		2	\N	\N
147	users-permissions	auth	resetpassword	f		1	\N	\N
156	users-permissions	user	destroy	f		2	\N	\N
164	users-permissions	user	me	t		2	\N	\N
175	users-permissions	userspermissions	getpermissions	f		1	\N	\N
187	users-permissions	userspermissions	index	f		1	\N	\N
193	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
79	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
89	documentation	documentation	deletedoc	f		1	\N	\N
98	documentation	documentation	loginview	f		2	\N	\N
107	email	email	test	f		1	\N	\N
119	i18n	locales	updatelocale	f		1	\N	\N
129	upload	upload	getsettings	f		1	\N	\N
139	users-permissions	auth	connect	t		1	\N	\N
149	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
159	users-permissions	user	find	f		1	\N	\N
169	users-permissions	userspermissions	deleterole	f		1	\N	\N
178	users-permissions	userspermissions	getpolicies	f		2	\N	\N
188	users-permissions	userspermissions	index	f		2	\N	\N
80	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
90	documentation	documentation	deletedoc	f		2	\N	\N
100	documentation	documentation	regeneratedoc	f		2	\N	\N
110	i18n	content-types	getnonlocalizedattributes	f		2	\N	\N
120	i18n	locales	updatelocale	f		2	\N	\N
130	upload	upload	getsettings	f		2	\N	\N
140	users-permissions	auth	connect	t		2	\N	\N
150	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
163	users-permissions	user	me	t		1	\N	\N
177	users-permissions	userspermissions	getpolicies	f		1	\N	\N
186	users-permissions	userspermissions	getroutes	f		2	\N	\N
195	users-permissions	userspermissions	updateproviders	f		1	\N	\N
82	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
93	documentation	documentation	index	f		1	\N	\N
104	email	email	getsettings	f		2	\N	\N
112	i18n	iso-locales	listisolocales	f		2	\N	\N
123	upload	upload	destroy	f		1	\N	\N
134	upload	upload	updatesettings	f		2	\N	\N
144	users-permissions	auth	forgotpassword	t		2	\N	\N
154	users-permissions	user	create	f		2	\N	\N
166	users-permissions	user	update	f		2	\N	\N
172	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
182	users-permissions	userspermissions	getrole	f		2	\N	\N
197	users-permissions	userspermissions	updaterole	f		1	\N	\N
83	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
92	documentation	documentation	getinfos	f		2	\N	\N
101	documentation	documentation	updatesettings	f		1	\N	\N
115	i18n	locales	deletelocale	f		1	\N	\N
124	upload	upload	destroy	f		2	\N	\N
133	upload	upload	updatesettings	f		1	\N	\N
142	users-permissions	auth	emailconfirmation	t		2	\N	\N
152	users-permissions	user	count	f		2	\N	\N
162	users-permissions	user	findone	f		2	\N	\N
171	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
181	users-permissions	userspermissions	getproviders	f		2	\N	\N
191	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
84	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
97	documentation	documentation	loginview	f		1	\N	\N
105	email	email	send	f		1	\N	\N
113	i18n	locales	createlocale	f		1	\N	\N
122	upload	upload	count	f		2	\N	\N
132	upload	upload	search	f		2	\N	\N
148	users-permissions	auth	resetpassword	t		2	\N	\N
158	users-permissions	user	destroyall	f		2	\N	\N
168	users-permissions	userspermissions	createrole	f		2	\N	\N
179	users-permissions	userspermissions	getproviders	f		1	\N	\N
189	users-permissions	userspermissions	searchusers	f		1	\N	\N
198	users-permissions	userspermissions	updaterole	f		2	\N	\N
85	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
95	documentation	documentation	login	f		1	\N	\N
108	email	email	test	f		2	\N	\N
116	i18n	locales	deletelocale	f		2	\N	\N
125	upload	upload	find	f		1	\N	\N
137	users-permissions	auth	callback	f		1	\N	\N
146	users-permissions	auth	register	t		2	\N	\N
155	users-permissions	user	destroy	f		1	\N	\N
167	users-permissions	userspermissions	createrole	f		1	\N	\N
174	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
183	users-permissions	userspermissions	getroles	f		1	\N	\N
190	users-permissions	userspermissions	searchusers	f		2	\N	\N
86	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
94	documentation	documentation	index	f		2	\N	\N
109	i18n	content-types	getnonlocalizedattributes	f		1	\N	\N
117	i18n	locales	listlocales	f		1	\N	\N
128	upload	upload	findone	f		2	\N	\N
135	upload	upload	upload	f		1	\N	\N
145	users-permissions	auth	register	f		1	\N	\N
157	users-permissions	user	destroyall	f		1	\N	\N
165	users-permissions	user	update	f		1	\N	\N
176	users-permissions	userspermissions	getpermissions	f		2	\N	\N
185	users-permissions	userspermissions	getroutes	f		1	\N	\N
196	users-permissions	userspermissions	updateproviders	f		2	\N	\N
88	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
99	documentation	documentation	regeneratedoc	f		1	\N	\N
106	email	email	send	f		2	\N	\N
118	i18n	locales	listlocales	f		2	\N	\N
127	upload	upload	findone	f		1	\N	\N
136	upload	upload	upload	f		2	\N	\N
143	users-permissions	auth	forgotpassword	f		1	\N	\N
153	users-permissions	user	create	f		1	\N	\N
161	users-permissions	user	findone	f		1	\N	\N
173	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
180	users-permissions	userspermissions	getrole	f		1	\N	\N
192	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
170	users-permissions	userspermissions	deleterole	f		2	\N	\N
184	users-permissions	userspermissions	getroles	f		2	\N	\N
194	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Name: collections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.collections_id_seq', 2, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.core_store_id_seq', 27, true);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 77, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 1, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 198, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);


--
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- PostgreSQL database dump complete
--

