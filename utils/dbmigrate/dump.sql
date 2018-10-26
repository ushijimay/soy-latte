--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
--







--
-- Database creation
--

--CREATE DATABASE soylatte WITH TEMPLATE = template0 OWNER = postgres;
--REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
--GRANT CONNECT ON DATABASE template1 TO PUBLIC;


\connect postgres

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 9.6.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: blog_blogcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blog_blogcategory (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE blog_blogcategory OWNER TO postgres;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogcategory_id_seq OWNER TO postgres;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogcategory_id_seq OWNED BY blog_blogcategory.id;


--
-- Name: blog_blogpost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blog_blogpost (
    id integer NOT NULL,
    comments_count integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000) NOT NULL,
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    content text NOT NULL,
    allow_comments boolean NOT NULL,
    featured_image character varying(255),
    site_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE blog_blogpost OWNER TO postgres;

--
-- Name: blog_blogpost_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blog_blogpost_categories (
    id integer NOT NULL,
    blogpost_id integer NOT NULL,
    blogcategory_id integer NOT NULL
);


ALTER TABLE blog_blogpost_categories OWNER TO postgres;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogpost_categories_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_categories_id_seq OWNED BY blog_blogpost_categories.id;


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogpost_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_id_seq OWNED BY blog_blogpost.id;


--
-- Name: blog_blogpost_related_posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blog_blogpost_related_posts (
    id integer NOT NULL,
    from_blogpost_id integer NOT NULL,
    to_blogpost_id integer NOT NULL
);


ALTER TABLE blog_blogpost_related_posts OWNER TO postgres;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_related_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogpost_related_posts_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_related_posts_id_seq OWNED BY blog_blogpost_related_posts.id;


--
-- Name: conf_setting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE conf_setting (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    value character varying(2000) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE conf_setting OWNER TO postgres;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE conf_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE conf_setting_id_seq OWNER TO postgres;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE conf_setting_id_seq OWNED BY conf_setting.id;


--
-- Name: core_sitepermission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_sitepermission (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE core_sitepermission OWNER TO postgres;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_sitepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_sitepermission_id_seq OWNER TO postgres;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_sitepermission_id_seq OWNED BY core_sitepermission.id;


--
-- Name: core_sitepermission_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE core_sitepermission_sites (
    id integer NOT NULL,
    sitepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE core_sitepermission_sites OWNER TO postgres;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_sitepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_sitepermission_sites_id_seq OWNER TO postgres;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_sitepermission_sites_id_seq OWNED BY core_sitepermission_sites.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_comment_flags (
    id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE django_comment_flags OWNER TO postgres;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_comment_flags_id_seq OWNER TO postgres;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_comment_flags_id_seq OWNED BY django_comment_flags.id;


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_comments (
    id integer NOT NULL,
    object_pk text NOT NULL,
    user_name character varying(50) NOT NULL,
    user_email character varying(254) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL,
    content_type_id integer NOT NULL,
    site_id integer NOT NULL,
    user_id integer
);


ALTER TABLE django_comments OWNER TO postgres;

--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_comments_id_seq OWNER TO postgres;

--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_comments_id_seq OWNED BY django_comments.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_redirect; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_redirect (
    id integer NOT NULL,
    site_id integer NOT NULL,
    old_path character varying(200) NOT NULL,
    new_path character varying(200) NOT NULL
);


ALTER TABLE django_redirect OWNER TO postgres;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_redirect_id_seq OWNER TO postgres;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_redirect_id_seq OWNED BY django_redirect.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: forms_field; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE forms_field (
    id integer NOT NULL,
    _order integer,
    label text NOT NULL,
    field_type integer NOT NULL,
    required boolean NOT NULL,
    visible boolean NOT NULL,
    choices character varying(1000) NOT NULL,
    "default" character varying(2000) NOT NULL,
    placeholder_text character varying(100) NOT NULL,
    help_text text NOT NULL,
    form_id integer NOT NULL
);


ALTER TABLE forms_field OWNER TO postgres;

--
-- Name: forms_field_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forms_field_id_seq OWNER TO postgres;

--
-- Name: forms_field_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_field_id_seq OWNED BY forms_field.id;


--
-- Name: forms_fieldentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE forms_fieldentry (
    id integer NOT NULL,
    field_id integer NOT NULL,
    value character varying(2000),
    entry_id integer NOT NULL
);


ALTER TABLE forms_fieldentry OWNER TO postgres;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_fieldentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forms_fieldentry_id_seq OWNER TO postgres;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_fieldentry_id_seq OWNED BY forms_fieldentry.id;


--
-- Name: forms_form; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE forms_form (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    button_text character varying(50) NOT NULL,
    response text NOT NULL,
    send_email boolean NOT NULL,
    email_from character varying(254) NOT NULL,
    email_copies character varying(200) NOT NULL,
    email_subject character varying(200) NOT NULL,
    email_message text NOT NULL
);


ALTER TABLE forms_form OWNER TO postgres;

--
-- Name: forms_formentry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE forms_formentry (
    id integer NOT NULL,
    entry_time timestamp with time zone NOT NULL,
    form_id integer NOT NULL
);


ALTER TABLE forms_formentry OWNER TO postgres;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_formentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE forms_formentry_id_seq OWNER TO postgres;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_formentry_id_seq OWNED BY forms_formentry.id;


--
-- Name: galleries_gallery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE galleries_gallery (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    zip_import character varying(100) NOT NULL
);


ALTER TABLE galleries_gallery OWNER TO postgres;

--
-- Name: galleries_galleryimage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE galleries_galleryimage (
    id integer NOT NULL,
    _order integer,
    file character varying(200) NOT NULL,
    description character varying(1000) NOT NULL,
    gallery_id integer NOT NULL
);


ALTER TABLE galleries_galleryimage OWNER TO postgres;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE galleries_galleryimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE galleries_galleryimage_id_seq OWNER TO postgres;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE galleries_galleryimage_id_seq OWNED BY galleries_galleryimage.id;


--
-- Name: generic_assignedkeyword; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE generic_assignedkeyword (
    id integer NOT NULL,
    _order integer,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    keyword_id integer NOT NULL
);


ALTER TABLE generic_assignedkeyword OWNER TO postgres;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_assignedkeyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generic_assignedkeyword_id_seq OWNER TO postgres;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_assignedkeyword_id_seq OWNED BY generic_assignedkeyword.id;


--
-- Name: generic_keyword; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE generic_keyword (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE generic_keyword OWNER TO postgres;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generic_keyword_id_seq OWNER TO postgres;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_keyword_id_seq OWNED BY generic_keyword.id;


--
-- Name: generic_rating; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE generic_rating (
    id integer NOT NULL,
    value integer NOT NULL,
    rating_date timestamp with time zone,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer
);


ALTER TABLE generic_rating OWNER TO postgres;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE generic_rating_id_seq OWNER TO postgres;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_rating_id_seq OWNED BY generic_rating.id;


--
-- Name: generic_threadedcomment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE generic_threadedcomment (
    comment_ptr_id integer NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    by_author boolean NOT NULL,
    replied_to_id integer
);


ALTER TABLE generic_threadedcomment OWNER TO postgres;

--
-- Name: pages_link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pages_link (
    page_ptr_id integer NOT NULL
);


ALTER TABLE pages_link OWNER TO postgres;

--
-- Name: pages_page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pages_page (
    id integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000) NOT NULL,
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    _order integer,
    in_menus character varying(100),
    titles character varying(1000),
    content_model character varying(50),
    login_required boolean NOT NULL,
    parent_id integer,
    site_id integer NOT NULL
);


ALTER TABLE pages_page OWNER TO postgres;

--
-- Name: pages_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pages_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pages_page_id_seq OWNER TO postgres;

--
-- Name: pages_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pages_page_id_seq OWNED BY pages_page.id;


--
-- Name: pages_richtextpage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pages_richtextpage (
    page_ptr_id integer NOT NULL,
    content text NOT NULL
);


ALTER TABLE pages_richtextpage OWNER TO postgres;

--
-- Name: twitter_query; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE twitter_query (
    id integer NOT NULL,
    type character varying(10) NOT NULL,
    value character varying(140) NOT NULL,
    interested boolean NOT NULL
);


ALTER TABLE twitter_query OWNER TO postgres;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE twitter_query_id_seq OWNER TO postgres;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_query_id_seq OWNED BY twitter_query.id;


--
-- Name: twitter_tweet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE twitter_tweet (
    id integer NOT NULL,
    remote_id character varying(50) NOT NULL,
    created_at timestamp with time zone,
    text text,
    profile_image_url character varying(200),
    user_name character varying(100),
    full_name character varying(100),
    retweeter_profile_image_url character varying(200),
    retweeter_user_name character varying(100),
    retweeter_full_name character varying(100),
    query_id integer NOT NULL
);


ALTER TABLE twitter_tweet OWNER TO postgres;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_tweet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE twitter_tweet_id_seq OWNER TO postgres;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_tweet_id_seq OWNED BY twitter_tweet.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_blogcategory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogcategory ALTER COLUMN id SET DEFAULT nextval('blog_blogcategory_id_seq'::regclass);


--
-- Name: blog_blogpost id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_id_seq'::regclass);


--
-- Name: blog_blogpost_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_categories_id_seq'::regclass);


--
-- Name: blog_blogpost_related_posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_related_posts_id_seq'::regclass);


--
-- Name: conf_setting id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conf_setting ALTER COLUMN id SET DEFAULT nextval('conf_setting_id_seq'::regclass);


--
-- Name: core_sitepermission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_id_seq'::regclass);


--
-- Name: core_sitepermission_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_sites_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_comment_flags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags ALTER COLUMN id SET DEFAULT nextval('django_comment_flags_id_seq'::regclass);


--
-- Name: django_comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments ALTER COLUMN id SET DEFAULT nextval('django_comments_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: django_redirect id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_redirect ALTER COLUMN id SET DEFAULT nextval('django_redirect_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: forms_field id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_field ALTER COLUMN id SET DEFAULT nextval('forms_field_id_seq'::regclass);


--
-- Name: forms_fieldentry id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_fieldentry ALTER COLUMN id SET DEFAULT nextval('forms_fieldentry_id_seq'::regclass);


--
-- Name: forms_formentry id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_formentry ALTER COLUMN id SET DEFAULT nextval('forms_formentry_id_seq'::regclass);


--
-- Name: galleries_galleryimage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_galleryimage ALTER COLUMN id SET DEFAULT nextval('galleries_galleryimage_id_seq'::regclass);


--
-- Name: generic_assignedkeyword id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword ALTER COLUMN id SET DEFAULT nextval('generic_assignedkeyword_id_seq'::regclass);


--
-- Name: generic_keyword id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_keyword ALTER COLUMN id SET DEFAULT nextval('generic_keyword_id_seq'::regclass);


--
-- Name: generic_rating id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating ALTER COLUMN id SET DEFAULT nextval('generic_rating_id_seq'::regclass);


--
-- Name: pages_page id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page ALTER COLUMN id SET DEFAULT nextval('pages_page_id_seq'::regclass);


--
-- Name: twitter_query id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_query ALTER COLUMN id SET DEFAULT nextval('twitter_query_id_seq'::regclass);


--
-- Name: twitter_tweet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_tweet ALTER COLUMN id SET DEFAULT nextval('twitter_tweet_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add redirect	5	add_redirect
14	Can change redirect	5	change_redirect
15	Can delete redirect	5	delete_redirect
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add Setting	8	add_setting
23	Can change Setting	8	change_setting
24	Can delete Setting	8	delete_setting
25	Can add Site permission	9	add_sitepermission
26	Can change Site permission	9	change_sitepermission
27	Can delete Site permission	9	delete_sitepermission
28	Can add assigned keyword	10	add_assignedkeyword
29	Can change assigned keyword	10	change_assignedkeyword
30	Can delete assigned keyword	10	delete_assignedkeyword
31	Can add Keyword	11	add_keyword
32	Can change Keyword	11	change_keyword
33	Can delete Keyword	11	delete_keyword
34	Can add Rating	12	add_rating
35	Can change Rating	12	change_rating
36	Can delete Rating	12	delete_rating
37	Can add Comment	13	add_threadedcomment
38	Can change Comment	13	change_threadedcomment
39	Can delete Comment	13	delete_threadedcomment
40	Can add Page	14	add_page
41	Can change Page	14	change_page
42	Can delete Page	14	delete_page
43	Can add Link	15	add_link
44	Can change Link	15	change_link
45	Can delete Link	15	delete_link
46	Can add Rich text page	16	add_richtextpage
47	Can change Rich text page	16	change_richtextpage
48	Can delete Rich text page	16	delete_richtextpage
49	Can add Blog Category	17	add_blogcategory
50	Can change Blog Category	17	change_blogcategory
51	Can delete Blog Category	17	delete_blogcategory
52	Can add Blog post	18	add_blogpost
53	Can change Blog post	18	change_blogpost
54	Can delete Blog post	18	delete_blogpost
55	Can add Field	19	add_field
56	Can change Field	19	change_field
57	Can delete Field	19	delete_field
58	Can add Form field entry	20	add_fieldentry
59	Can change Form field entry	20	change_fieldentry
60	Can delete Form field entry	20	delete_fieldentry
61	Can add Form	21	add_form
62	Can change Form	21	change_form
63	Can delete Form	21	delete_form
64	Can add Form entry	22	add_formentry
65	Can change Form entry	22	change_formentry
66	Can delete Form entry	22	delete_formentry
67	Can add Gallery	23	add_gallery
68	Can change Gallery	23	change_gallery
69	Can delete Gallery	23	delete_gallery
70	Can add Image	24	add_galleryimage
71	Can change Image	24	change_galleryimage
72	Can delete Image	24	delete_galleryimage
73	Can add Twitter query	25	add_query
74	Can change Twitter query	25	change_query
75	Can delete Twitter query	25	delete_query
76	Can add Tweet	26	add_tweet
77	Can change Tweet	26	change_tweet
78	Can delete Tweet	26	delete_tweet
79	Can add log entry	27	add_logentry
80	Can change log entry	27	change_logentry
81	Can delete log entry	27	delete_logentry
82	Can add comment	28	add_comment
83	Can change comment	28	change_comment
84	Can delete comment	28	delete_comment
85	Can moderate comments	28	can_moderate
86	Can add comment flag	29	add_commentflag
87	Can change comment flag	29	change_commentflag
88	Can delete comment flag	29	delete_commentflag
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 88, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$4ar5XEY8F0up$gNal0rnOgLA6ByWx553dMsgqRMfz8mZEzLOSyz8aO04=	2018-06-15 12:44:07.994622+00	t	ushijimay				t	t	2018-06-09 11:09:54.167858+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: blog_blogcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogcategory (id, title, slug, site_id) FROM stdin;
\.


--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogcategory_id_seq', 1, false);


--
-- Data for Name: blog_blogpost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost (id, comments_count, keywords_string, rating_count, rating_sum, rating_average, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, content, allow_comments, featured_image, site_id, user_id) FROM stdin;
\.


--
-- Data for Name: blog_blogpost_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost_categories (id, blogpost_id, blogcategory_id) FROM stdin;
\.


--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_categories_id_seq', 1, false);


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_id_seq', 1, true);


--
-- Data for Name: blog_blogpost_related_posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost_related_posts (id, from_blogpost_id, to_blogpost_id) FROM stdin;
\.


--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_related_posts_id_seq', 1, false);


--
-- Data for Name: conf_setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY conf_setting (id, name, value, site_id) FROM stdin;
1	ADMIN_MENU_COLLAPSED	False	1
2	AKISMET_API_KEY		1
3	BITLY_ACCESS_TOKEN		1
4	BLOG_POST_PER_PAGE	5	1
5	COMMENTS_ACCOUNT_REQUIRED	False	1
6	COMMENTS_DEFAULT_APPROVED	True	1
7	COMMENTS_DISQUS_API_PUBLIC_KEY		1
8	COMMENTS_DISQUS_API_SECRET_KEY		1
9	COMMENTS_DISQUS_SHORTNAME		1
10	COMMENTS_NOTIFICATION_EMAILS		1
11	COMMENTS_NUM_LATEST	5	1
12	COMMENTS_REMOVED_VISIBLE	True	1
13	COMMENTS_UNAPPROVED_VISIBLE	True	1
14	GOOGLE_ANALYTICS_ID		1
15	MAX_PAGING_LINKS	10	1
16	RATINGS_ACCOUNT_REQUIRED	False	1
17	RICHTEXT_FILTER_LEVEL	3	1
18	SEARCH_PER_PAGE	10	1
19	SITE_TAGLINE	An open source content management platform.	1
20	TAG_CLOUD_SIZES	4	1
21	TWITTER_ACCESS_TOKEN_KEY		1
22	TWITTER_ACCESS_TOKEN_SECRET		1
23	TWITTER_CONSUMER_KEY		1
24	TWITTER_CONSUMER_SECRET		1
25	TWITTER_DEFAULT_NUM_TWEETS	3	1
26	TWITTER_DEFAULT_QUERY	from:stephen_mcd mezzanine	1
27	TWITTER_DEFAULT_QUERY_TYPE	search	1
\.


--
-- Name: conf_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('conf_setting_id_seq', 27, true);


--
-- Data for Name: core_sitepermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_sitepermission (id, user_id) FROM stdin;
\.


--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_sitepermission_id_seq', 1, false);


--
-- Data for Name: core_sitepermission_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_sitepermission_sites (id, sitepermission_id, site_id) FROM stdin;
\.


--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_sitepermission_sites_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-06-09 11:27:35.834412+00	1	test	1	[{"added": {}}]	18	1
2	2018-06-09 11:28:15.415648+00	1	test	3		18	1
3	2018-06-09 11:31:45.951756+00	1	Blog	3		14	1
4	2018-06-09 11:32:16.797141+00	2	AWS	1	[{"added": {}}]	16	1
5	2018-06-09 11:34:10.772331+00	3	AWSをはじめる	1	[{"added": {}}]	16	1
6	2018-06-09 11:37:05.407029+00	3	AWS / AWSをはじめる	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
7	2018-06-09 12:42:18.512927+00	4	AWS / AWSをはじめる / チュートリアル1	1	[{"added": {}}]	16	1
8	2018-06-09 12:42:40.177942+00	5	AWS / AWSをはじめる / チュートリアル2	1	[{"added": {}}]	16	1
9	2018-06-09 12:43:16.647964+00	5	AWS / AWSをはじめる / チュートリアル2	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
10	2018-06-09 12:43:34.617304+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
11	2018-06-10 04:21:57.640326+00	6	AWS / AWSをはじめる / チュートリアル3	1	[{"added": {}}]	16	1
12	2018-06-10 04:22:26.862249+00	6	AWS / AWSをはじめる / チュートリアル3	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
13	2018-06-10 04:22:37.063685+00	5	AWS / AWSをはじめる / チュートリアル2	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
14	2018-06-10 04:22:46.723209+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
15	2018-06-10 04:23:24.993079+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
16	2018-06-10 04:23:32.834757+00	5	AWS / AWSをはじめる / チュートリアル2	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
17	2018-06-10 04:23:40.969829+00	6	AWS / AWSをはじめる / チュートリアル3	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
18	2018-06-10 04:24:12.843964+00	7	AWS / AWSを活用する	1	[{"added": {}}]	16	1
19	2018-06-10 04:24:29.858866+00	7	AWS / AWSを活用する	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
20	2018-06-10 05:10:35.411372+00	8	AWS / AWSを活用する / 設計	1	[{"added": {}}]	16	1
21	2018-06-10 05:10:49.450524+00	9	AWS / AWSを活用する / 構築	1	[{"added": {}}]	16	1
22	2018-06-10 05:11:00.61316+00	8	AWS / AWSを活用する / 設計	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
23	2018-06-10 05:11:23.420978+00	9	AWS / AWSを活用する / 構築	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
24	2018-06-10 05:11:42.381336+00	10	AWS / AWSを活用する / 運用	1	[{"added": {}}]	16	1
25	2018-06-10 05:11:55.998018+00	10	AWS / AWSを活用する / 運用	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
26	2018-06-10 05:13:05.17155+00	11	AWSプロジェクトのマネジメント	1	[{"added": {}}]	16	1
27	2018-06-10 05:14:55.867397+00	11	AWS / AWSの開発をマネジメントする	2	[{"changed": {"fields": ["title", "keywords"]}}]	16	1
28	2018-06-10 05:17:34.99576+00	11	AWS / AWSの開発を進める	2	[{"changed": {"fields": ["title", "keywords"]}}]	16	1
29	2018-06-10 05:17:45.639669+00	12	AWS / AWSの開発を進める / チームワークへの投資	1	[{"added": {}}]	16	1
30	2018-06-10 05:17:56.189519+00	13	AWS / AWSの開発を進める / 自動化の実践	1	[{"added": {}}]	16	1
31	2018-06-10 05:18:01.669893+00	14	AWS / AWSの開発を進める / マインドセット	1	[{"added": {}}]	16	1
32	2018-06-10 05:19:01.158596+00	15	AWS / チュートリアル後にすべき事	1	[{"added": {}}]	16	1
33	2018-06-10 05:19:06.525716+00	7	AWS / AWSを活用する	2	[{"changed": {"fields": ["keywords"]}}]	16	1
34	2018-06-10 05:19:26.028319+00	15	AWS / AWSをはじめる / チュートリアル後にすべき事	2	[{"changed": {"fields": ["publish_date", "keywords"]}}]	16	1
35	2018-06-10 05:19:51.188142+00	16	AWS / AWSを活用する / ”ベストプラクティス”	1	[{"added": {}}]	16	1
36	2018-06-10 05:19:58.597003+00	11	AWS / AWSの開発を進める	2	[{"changed": {"fields": ["keywords"]}}]	16	1
37	2018-06-10 05:20:07.846145+00	16	AWS / AWSを活用する / ”ベストプラクティス”	2	[{"changed": {"fields": ["publish_date", "keywords"]}}]	16	1
38	2018-06-10 05:20:38.672099+00	17	AWS / AWSの開発を進める / 「システム開発」に求められる事	1	[{"added": {}}]	16	1
39	2018-06-10 05:20:47.75058+00	8	AWS / AWSを活用する / シンプルな設計	2	[{"changed": {"fields": ["title", "keywords"]}}]	16	1
40	2018-06-10 05:20:55.593059+00	9	AWS / AWSを活用する / 規約に基づいた構築	2	[{"changed": {"fields": ["title", "keywords"]}}]	16	1
41	2018-06-10 05:21:16.747917+00	10	AWS / AWSを活用する / 手間のかからない運用	2	[{"changed": {"fields": ["title", "keywords"]}}]	16	1
42	2018-06-10 05:21:47.891514+00	15	AWS / AWSをはじめる / チュートリアル後にすべき事	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
43	2018-06-10 05:22:04.337395+00	16	AWS / AWSを活用する / ”ベストプラクティス”	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
44	2018-06-10 05:22:17.892355+00	17	AWS / AWSの開発を進める / 「システム開発」に求められる事	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
45	2018-06-10 05:23:41.373048+00	11	AWS / AWSの開発を進める	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
46	2018-06-10 05:23:51.883899+00	12	AWS / AWSの開発を進める / チームワークへの投資	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
47	2018-06-10 05:24:13.971578+00	13	AWS / AWSの開発を進める / 自動化の実践	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
48	2018-06-10 05:24:25.490198+00	14	AWS / AWSの開発を進める / マインドセット	2	[{"changed": {"fields": ["slug", "keywords"]}}]	16	1
49	2018-06-10 05:30:37.316578+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
50	2018-06-10 05:41:13.548674+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
51	2018-06-10 05:45:07.248091+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["keywords"]}}]	16	1
52	2018-06-10 05:55:59.372731+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
53	2018-06-10 05:58:00.209381+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
54	2018-06-15 12:45:56.619109+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
55	2018-06-15 12:47:47.067046+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
56	2018-06-15 12:51:34.987659+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
57	2018-06-15 12:52:49.810983+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
58	2018-06-15 12:54:53.867528+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
59	2018-06-15 12:55:17.313001+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
60	2018-06-15 12:55:42.195892+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
61	2018-06-15 12:56:00.391547+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
62	2018-06-15 12:56:21.106337+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
63	2018-06-15 13:20:30.485288+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
64	2018-06-15 13:21:15.991237+00	4	AWS / AWSをはじめる / チュートリアル1	2	[{"changed": {"fields": ["content", "keywords"]}}]	16	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 64, true);


--
-- Data for Name: django_comment_flags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_comment_flags (id, flag, flag_date, comment_id, user_id) FROM stdin;
\.


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_comment_flags_id_seq', 1, false);


--
-- Data for Name: django_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_comments (id, object_pk, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed, content_type_id, site_id, user_id) FROM stdin;
\.


--
-- Name: django_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_comments_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	redirects	redirect
6	sessions	session
7	sites	site
8	conf	setting
9	core	sitepermission
10	generic	assignedkeyword
11	generic	keyword
12	generic	rating
13	generic	threadedcomment
14	pages	page
15	pages	link
16	pages	richtextpage
17	blog	blogcategory
18	blog	blogpost
19	forms	field
20	forms	fieldentry
21	forms	form
22	forms	formentry
23	galleries	gallery
24	galleries	galleryimage
25	twitter	query
26	twitter	tweet
27	admin	logentry
28	django_comments	comment
29	django_comments	commentflag
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 29, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-06-09 11:09:34.515065+00
2	auth	0001_initial	2018-06-09 11:09:34.764632+00
3	admin	0001_initial	2018-06-09 11:09:34.843958+00
4	admin	0002_logentry_remove_auto_add	2018-06-09 11:09:34.87053+00
5	contenttypes	0002_remove_content_type_name	2018-06-09 11:09:34.9119+00
6	auth	0002_alter_permission_name_max_length	2018-06-09 11:09:34.935081+00
7	auth	0003_alter_user_email_max_length	2018-06-09 11:09:34.962412+00
8	auth	0004_alter_user_username_opts	2018-06-09 11:09:34.991251+00
9	auth	0005_alter_user_last_login_null	2018-06-09 11:09:35.016557+00
10	auth	0006_require_contenttypes_0002	2018-06-09 11:09:35.024972+00
11	auth	0007_alter_validators_add_error_messages	2018-06-09 11:09:35.046582+00
12	auth	0008_alter_user_username_max_length	2018-06-09 11:09:35.097993+00
13	sites	0001_initial	2018-06-09 11:09:35.120243+00
14	blog	0001_initial	2018-06-09 11:09:35.274185+00
15	blog	0002_auto_20150527_1555	2018-06-09 11:09:35.305074+00
16	blog	0003_auto_20170411_0504	2018-06-09 11:09:35.357321+00
17	conf	0001_initial	2018-06-09 11:09:35.418569+00
18	core	0001_initial	2018-06-09 11:09:35.515147+00
19	core	0002_auto_20150414_2140	2018-06-09 11:09:35.559828+00
20	django_comments	0001_initial	2018-06-09 11:09:35.766622+00
21	django_comments	0002_update_user_email_field_length	2018-06-09 11:09:35.829718+00
22	django_comments	0003_add_submit_date_index	2018-06-09 11:09:35.873365+00
23	pages	0001_initial	2018-06-09 11:09:36.005114+00
24	forms	0001_initial	2018-06-09 11:09:36.246613+00
25	forms	0002_auto_20141227_0224	2018-06-09 11:09:36.262772+00
26	forms	0003_emailfield	2018-06-09 11:09:36.285375+00
27	forms	0004_auto_20150517_0510	2018-06-09 11:09:36.316807+00
28	forms	0005_auto_20151026_1600	2018-06-09 11:09:36.339954+00
29	forms	0006_auto_20170425_2225	2018-06-09 11:09:36.384436+00
30	galleries	0001_initial	2018-06-09 11:09:36.46542+00
31	galleries	0002_auto_20141227_0224	2018-06-09 11:09:36.483164+00
32	generic	0001_initial	2018-06-09 11:09:36.798873+00
33	generic	0002_auto_20141227_0224	2018-06-09 11:09:36.829156+00
34	generic	0003_auto_20170411_0504	2018-06-09 11:09:36.855373+00
35	pages	0002_auto_20141227_0224	2018-06-09 11:09:36.89103+00
36	pages	0003_auto_20150527_1555	2018-06-09 11:09:36.92799+00
37	pages	0004_auto_20170411_0504	2018-06-09 11:09:36.958407+00
38	redirects	0001_initial	2018-06-09 11:09:37.053251+00
39	sessions	0001_initial	2018-06-09 11:09:37.108583+00
40	sites	0002_alter_domain_unique	2018-06-09 11:09:37.154911+00
41	twitter	0001_initial	2018-06-09 11:09:37.211723+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 41, true);


--
-- Data for Name: django_redirect; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_redirect (id, site_id, old_path, new_path) FROM stdin;
\.


--
-- Name: django_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_redirect_id_seq', 1, false);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
kccci2nvocq14wls3wuv8qapqmqp0n2x	ZjdmNzUyMDJkMzhiZGU0NDg4ZjhlYzk4MzM4MmY2NDAxNGQ2ZDY5MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoibWV6emFuaW5lLmNvcmUuYXV0aF9iYWNrZW5kcy5NZXp6YW5pbmVCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzVlZjUwMWI0NGI0NWExNmI2M2YwMGYwNzY5OTBkNzRhODlhOTdlMyJ9	2018-06-23 11:27:28.014339+00
wmhkr6f4rp4jkh6twkt0jwisriof87am	ZjdmNzUyMDJkMzhiZGU0NDg4ZjhlYzk4MzM4MmY2NDAxNGQ2ZDY5MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoibWV6emFuaW5lLmNvcmUuYXV0aF9iYWNrZW5kcy5NZXp6YW5pbmVCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzVlZjUwMWI0NGI0NWExNmI2M2YwMGYwNzY5OTBkNzRhODlhOTdlMyJ9	2018-06-29 12:44:08.028923+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_site (id, domain, name) FROM stdin;
1	127.0.0.1:8000	Default
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: forms_field; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_field (id, _order, label, field_type, required, visible, choices, "default", placeholder_text, help_text, form_id) FROM stdin;
\.


--
-- Name: forms_field_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_field_id_seq', 1, false);


--
-- Data for Name: forms_fieldentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_fieldentry (id, field_id, value, entry_id) FROM stdin;
\.


--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_fieldentry_id_seq', 1, false);


--
-- Data for Name: forms_form; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_form (page_ptr_id, content, button_text, response, send_email, email_from, email_copies, email_subject, email_message) FROM stdin;
\.


--
-- Data for Name: forms_formentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_formentry (id, entry_time, form_id) FROM stdin;
\.


--
-- Name: forms_formentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_formentry_id_seq', 1, false);


--
-- Data for Name: galleries_gallery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY galleries_gallery (page_ptr_id, content, zip_import) FROM stdin;
\.


--
-- Data for Name: galleries_galleryimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY galleries_galleryimage (id, _order, file, description, gallery_id) FROM stdin;
\.


--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('galleries_galleryimage_id_seq', 1, false);


--
-- Data for Name: generic_assignedkeyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_assignedkeyword (id, _order, object_pk, content_type_id, keyword_id) FROM stdin;
\.


--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_assignedkeyword_id_seq', 1, false);


--
-- Data for Name: generic_keyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_keyword (id, title, slug, site_id) FROM stdin;
\.


--
-- Name: generic_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_keyword_id_seq', 1, false);


--
-- Data for Name: generic_rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_rating (id, value, rating_date, object_pk, content_type_id, user_id) FROM stdin;
\.


--
-- Name: generic_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_rating_id_seq', 1, false);


--
-- Data for Name: generic_threadedcomment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_threadedcomment (comment_ptr_id, rating_count, rating_sum, rating_average, by_author, replied_to_id) FROM stdin;
\.


--
-- Data for Name: pages_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_link (page_ptr_id) FROM stdin;
\.


--
-- Data for Name: pages_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_page (id, keywords_string, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, _order, in_menus, titles, content_model, login_required, parent_id, site_id) FROM stdin;
12		チームワークへの投資	aws/teamwork	\N	あ	t	2018-06-10 05:17:45.621211+00	2018-06-10 05:29:21.133153+00	2	2018-06-10 05:17:45+00	\N	unset	t	0	1,2,3	AWS / AWSの開発を進める / チームワークへの投資	richtextpage	f	11	1
2		AWS	aws	\N	test	t	2018-06-09 11:32:16.782786+00	2018-06-09 11:32:16.782786+00	2	2018-06-09 11:32:16.779277+00	\N	\N	t	0	1,2,3	AWS	richtextpage	f	\N	1
17		「システム開発」に求められる事	aws/development	\N	あ	t	2018-06-10 05:20:38.651556+00	2018-06-10 13:24:16.010379+00	2	2018-06-10 05:20:38+00	\N	unset	t	3	1,2,3	AWS / AWSの開発を進める / 「システム開発」に求められる事	richtextpage	f	11	1
3		AWSをはじめる	aws/basic	basic	てｓｔ	t	2018-06-09 11:34:10.755469+00	2018-06-15 12:47:59.974168+00	2	2018-06-09 11:34:10+00	\N	unset	t	0	1,2,3	AWS / AWSをはじめる	richtextpage	f	2	1
5		チュートリアル2	aws/tutorial/sg	\N	チュートリアル２	t	2018-06-09 12:42:40.158201+00	2018-06-10 05:22:29.422388+00	2	2018-06-09 12:42:40+00	\N	unset	t	1	1,2,3	AWS / AWSをはじめる / チュートリアル2	richtextpage	f	3	1
6		チュートリアル3	aws/tutorial/database	\N	aa	t	2018-06-10 04:21:57.618568+00	2018-06-10 05:22:30.325135+00	2	2018-06-10 04:21:57+00	\N	unset	t	2	1,2,3	AWS / AWSをはじめる / チュートリアル3	richtextpage	f	3	1
14		マインドセット	aws/mindset	\N	a	t	2018-06-10 05:18:01.652271+00	2018-06-10 05:24:38.629451+00	2	2018-06-10 05:18:01+00	\N	unset	t	2	1,2,3	AWS / AWSの開発を進める / マインドセット	richtextpage	f	11	1
13		自動化の実践	aws/automation	\N	あ	t	2018-06-10 05:17:56.168719+00	2018-06-10 05:24:40.854491+00	2	2018-06-10 05:17:56+00	\N	unset	t	1	1,2,3	AWS / AWSの開発を進める / 自動化の実践	richtextpage	f	11	1
15		チュートリアル後にすべき事	aws/tutorial/afterward	\N	あ	t	2018-06-10 05:19:01.140744+00	2018-06-10 05:22:39.106605+00	2	2018-06-10 04:24:10+00	\N	unset	t	3	1,2,3	AWS / AWSをはじめる / チュートリアル後にすべき事	richtextpage	f	3	1
4		チュートリアル1	aws/tutorial/ec2	\N		t	2018-06-09 12:42:18.493159+00	2018-06-15 13:21:18.864321+00	2	2018-06-09 12:42:18+00	\N	unset	t	0	1,2,3	AWS / AWSをはじめる / チュートリアル1	richtextpage	f	3	1
9		規約に基づいた構築	aws/implementation	\N	て	t	2018-06-10 05:10:49.424254+00	2018-06-10 13:22:51.958794+00	2	2018-06-10 05:10:49+00	\N	unset	t	1	1,2,3	AWS / AWSを活用する / 規約に基づいた構築	richtextpage	f	7	1
8		シンプルな設計	aws/design	\N	てｓ	t	2018-06-10 05:10:35.333369+00	2018-06-10 13:22:53.763615+00	2	2018-06-10 05:10:35+00	\N	unset	t	0	1,2,3	AWS / AWSを活用する / シンプルな設計	richtextpage	f	7	1
10		手間のかからない運用	aws/maintenance	\N	て	t	2018-06-10 05:11:42.360188+00	2018-06-10 05:24:47.889849+00	2	2018-06-10 05:11:42+00	\N	unset	t	2	1,2,3	AWS / AWSを活用する / 手間のかからない運用	richtextpage	f	7	1
11		AWSの開発を進める	aws/advanced	\N	ｆがｄ	t	2018-06-10 05:13:05.155109+00	2018-06-10 05:29:19.427439+00	2	2018-06-10 05:13:05+00	\N	unset	t	2	1,2,3	AWS / AWSの開発を進める	richtextpage	f	2	1
16		”ベストプラクティス”	aws/practice	\N	あ	t	2018-06-10 05:19:51.170695+00	2018-06-10 13:24:04.439943+00	2	2018-06-10 05:13:00+00	\N	unset	t	3	1,2,3	AWS / AWSを活用する / ”ベストプラクティス”	richtextpage	f	7	1
7		AWSを活用する	aws/intermediate	\N	て	t	2018-06-10 04:24:12.820725+00	2018-06-10 13:24:05.715853+00	2	2018-06-10 04:24:12+00	\N	unset	t	1	1,2,3	AWS / AWSを活用する	richtextpage	f	2	1
\.


--
-- Name: pages_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pages_page_id_seq', 17, true);


--
-- Data for Name: pages_richtextpage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_richtextpage (page_ptr_id, content) FROM stdin;
2	<p>test</p>
11	<p>ｆがｄ</p>
3	<p>てｓｔ</p>
12	<p>あ</p>
13	<p>あ</p>
14	<p>a</p>\r\n<p></p>
5	<p>チュートリアル２</p>
6	<p>aa</p>
4	<p></p>\r\n<p></p>\r\n<p>チュートリアル１</p>\r\n<p>test</p>\r\n<p></p>\r\n<p><a href="https://drive.google.com/uc?export=view&amp;id=1tr7at1nu5h-usotqgx2cs1E2DfGN45gv" title="test"><img src="https://s3-ap-northeast-1.amazonaws.com/nnn001-cloud-steps/EC2_tutorial1/Tutorial1_1.jpg" alt="rwar" width="980" height="426" /></a></p>\r\n<p>teasefa</p>
7	<p>て</p>
8	<p>てｓ</p>
9	<p>て</p>
10	<p>て</p>
15	<p>あ</p>
16	<p>あ</p>
17	<p>あ</p>
\.


--
-- Data for Name: twitter_query; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_query (id, type, value, interested) FROM stdin;
\.


--
-- Name: twitter_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_query_id_seq', 1, false);


--
-- Data for Name: twitter_tweet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_tweet (id, remote_id, created_at, text, profile_image_url, user_name, full_name, retweeter_profile_image_url, retweeter_user_name, retweeter_full_name, query_id) FROM stdin;
\.


--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_tweet_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_blogcategory blog_blogcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_categories blog_blogpost_categories_blogpost_id_blogcategory_a64d32c5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_blogpost_id_blogcategory_a64d32c5_uniq UNIQUE (blogpost_id, blogcategory_id);


--
-- Name: blog_blogpost_categories blog_blogpost_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost blog_blogpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_related_posts blog_blogpost_related_po_from_blogpost_id_to_blog_3bd0f49f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_po_from_blogpost_id_to_blog_3bd0f49f_uniq UNIQUE (from_blogpost_id, to_blogpost_id);


--
-- Name: blog_blogpost_related_posts blog_blogpost_related_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_posts_pkey PRIMARY KEY (id);


--
-- Name: conf_setting conf_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission core_sitepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sites core_sitepermission_site_sitepermission_id_site_i_e3e7353a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_site_sitepermission_id_site_i_e3e7353a_uniq UNIQUE (sitepermission_id, site_id);


--
-- Name: core_sitepermission_sites core_sitepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission core_sitepermission_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags django_comment_flags_user_id_comment_id_flag_537f77a7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_comment_id_flag_537f77a7_uniq UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_redirect django_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_pkey PRIMARY KEY (id);


--
-- Name: django_redirect django_redirect_site_id_old_path_ac5dd16b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_site_id_old_path_ac5dd16b_uniq UNIQUE (site_id, old_path);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: forms_field forms_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_field
    ADD CONSTRAINT forms_field_pkey PRIMARY KEY (id);


--
-- Name: forms_fieldentry forms_fieldentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_pkey PRIMARY KEY (id);


--
-- Name: forms_form forms_form_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_form
    ADD CONSTRAINT forms_form_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: forms_formentry forms_formentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_formentry
    ADD CONSTRAINT forms_formentry_pkey PRIMARY KEY (id);


--
-- Name: galleries_gallery galleries_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_gallery
    ADD CONSTRAINT galleries_gallery_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: galleries_galleryimage galleries_galleryimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_galleryimage
    ADD CONSTRAINT galleries_galleryimage_pkey PRIMARY KEY (id);


--
-- Name: generic_assignedkeyword generic_assignedkeyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyword_pkey PRIMARY KEY (id);


--
-- Name: generic_keyword generic_keyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_pkey PRIMARY KEY (id);


--
-- Name: generic_rating generic_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_pkey PRIMARY KEY (id);


--
-- Name: generic_threadedcomment generic_threadedcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomment_pkey PRIMARY KEY (comment_ptr_id);


--
-- Name: pages_link pages_link_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_link
    ADD CONSTRAINT pages_link_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_page pages_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_pkey PRIMARY KEY (id);


--
-- Name: pages_richtextpage pages_richtextpage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_richtextpage
    ADD CONSTRAINT pages_richtextpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: twitter_query twitter_query_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_query
    ADD CONSTRAINT twitter_query_pkey PRIMARY KEY (id);


--
-- Name: twitter_tweet twitter_tweet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_tweet
    ADD CONSTRAINT twitter_tweet_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_blogcategory_site_id_42b9c96d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogcategory_site_id_42b9c96d ON blog_blogcategory USING btree (site_id);


--
-- Name: blog_blogpost_categories_blogcategory_id_f6695246; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_categories_blogcategory_id_f6695246 ON blog_blogpost_categories USING btree (blogcategory_id);


--
-- Name: blog_blogpost_categories_blogpost_id_daeea608; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_categories_blogpost_id_daeea608 ON blog_blogpost_categories USING btree (blogpost_id);


--
-- Name: blog_blogpost_publish_date_703abc16; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_publish_date_703abc16 ON blog_blogpost USING btree (publish_date);


--
-- Name: blog_blogpost_related_posts_from_blogpost_id_27ea4c18; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_related_posts_from_blogpost_id_27ea4c18 ON blog_blogpost_related_posts USING btree (from_blogpost_id);


--
-- Name: blog_blogpost_related_posts_to_blogpost_id_35f7acdd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_related_posts_to_blogpost_id_35f7acdd ON blog_blogpost_related_posts USING btree (to_blogpost_id);


--
-- Name: blog_blogpost_site_id_7995688f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_site_id_7995688f ON blog_blogpost USING btree (site_id);


--
-- Name: blog_blogpost_user_id_12ed6b16; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpost_user_id_12ed6b16 ON blog_blogpost USING btree (user_id);


--
-- Name: conf_setting_site_id_b235f7ed; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX conf_setting_site_id_b235f7ed ON conf_setting USING btree (site_id);


--
-- Name: core_sitepermission_sites_site_id_38038b76; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_sitepermission_sites_site_id_38038b76 ON core_sitepermission_sites USING btree (site_id);


--
-- Name: core_sitepermission_sites_sitepermission_id_d33bc79e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX core_sitepermission_sites_sitepermission_id_d33bc79e ON core_sitepermission_sites USING btree (sitepermission_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_comment_id_d8054933; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comment_flags_comment_id_d8054933 ON django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_flag_8b141fcb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comment_flags_flag_8b141fcb ON django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_flag_8b141fcb_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comment_flags_flag_8b141fcb_like ON django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comment_flags_user_id_f3f81f0a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comment_flags_user_id_f3f81f0a ON django_comment_flags USING btree (user_id);


--
-- Name: django_comments_content_type_id_c4afe962; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comments_content_type_id_c4afe962 ON django_comments USING btree (content_type_id);


--
-- Name: django_comments_site_id_9dcf666e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comments_site_id_9dcf666e ON django_comments USING btree (site_id);


--
-- Name: django_comments_submit_date_514ed2d9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comments_submit_date_514ed2d9 ON django_comments USING btree (submit_date);


--
-- Name: django_comments_user_id_a0a440a1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comments_user_id_a0a440a1 ON django_comments USING btree (user_id);


--
-- Name: django_redirect_old_path_c6cc94d3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_redirect_old_path_c6cc94d3 ON django_redirect USING btree (old_path);


--
-- Name: django_redirect_old_path_c6cc94d3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_redirect_old_path_c6cc94d3_like ON django_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: django_redirect_site_id_c3e37341; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_redirect_site_id_c3e37341 ON django_redirect USING btree (site_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);


--
-- Name: forms_field_form_id_9ca5dc7e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_field_form_id_9ca5dc7e ON forms_field USING btree (form_id);


--
-- Name: forms_fieldentry_entry_id_c4fdc570; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_fieldentry_entry_id_c4fdc570 ON forms_fieldentry USING btree (entry_id);


--
-- Name: forms_formentry_form_id_d0f23912; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX forms_formentry_form_id_d0f23912 ON forms_formentry USING btree (form_id);


--
-- Name: galleries_galleryimage_gallery_id_af12d3f5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX galleries_galleryimage_gallery_id_af12d3f5 ON galleries_galleryimage USING btree (gallery_id);


--
-- Name: generic_assignedkeyword_content_type_id_3dd89a7f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_assignedkeyword_content_type_id_3dd89a7f ON generic_assignedkeyword USING btree (content_type_id);


--
-- Name: generic_assignedkeyword_keyword_id_44c17f9d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_assignedkeyword_keyword_id_44c17f9d ON generic_assignedkeyword USING btree (keyword_id);


--
-- Name: generic_keyword_site_id_c5be0acc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_keyword_site_id_c5be0acc ON generic_keyword USING btree (site_id);


--
-- Name: generic_rating_content_type_id_eaf475fa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_rating_content_type_id_eaf475fa ON generic_rating USING btree (content_type_id);


--
-- Name: generic_rating_user_id_60020469; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_rating_user_id_60020469 ON generic_rating USING btree (user_id);


--
-- Name: generic_threadedcomment_replied_to_id_d0a08d73; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX generic_threadedcomment_replied_to_id_d0a08d73 ON generic_threadedcomment USING btree (replied_to_id);


--
-- Name: pages_page_parent_id_133fa4d3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_page_parent_id_133fa4d3 ON pages_page USING btree (parent_id);


--
-- Name: pages_page_publish_date_eb7c8d46; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_page_publish_date_eb7c8d46 ON pages_page USING btree (publish_date);


--
-- Name: pages_page_site_id_47a43e5b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX pages_page_site_id_47a43e5b ON pages_page USING btree (site_id);


--
-- Name: twitter_tweet_query_id_bd42b699; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX twitter_tweet_query_id_bd42b699 ON twitter_tweet USING btree (query_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogcategory blog_blogcategory_site_id_42b9c96d_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_site_id_42b9c96d_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_categories blog_blogpost_catego_blogcategory_id_f6695246_fk_blog_blog; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_catego_blogcategory_id_f6695246_fk_blog_blog FOREIGN KEY (blogcategory_id) REFERENCES blog_blogcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_categories blog_blogpost_catego_blogpost_id_daeea608_fk_blog_blog; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_catego_blogpost_id_daeea608_fk_blog_blog FOREIGN KEY (blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_related_posts blog_blogpost_relate_from_blogpost_id_27ea4c18_fk_blog_blog; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_relate_from_blogpost_id_27ea4c18_fk_blog_blog FOREIGN KEY (from_blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost_related_posts blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blog; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blog FOREIGN KEY (to_blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost blog_blogpost_site_id_7995688f_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_site_id_7995688f_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpost blog_blogpost_user_id_12ed6b16_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_user_id_12ed6b16_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: conf_setting conf_setting_site_id_b235f7ed_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_site_id_b235f7ed_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission_sites core_sitepermission__sitepermission_id_d33bc79e_fk_core_site; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission__sitepermission_id_d33bc79e_fk_core_site FOREIGN KEY (sitepermission_id) REFERENCES core_sitepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission_sites core_sitepermission_sites_site_id_38038b76_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_site_id_38038b76_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_sitepermission core_sitepermission_user_id_0a3cbb11_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_0a3cbb11_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags django_comment_flags_comment_id_d8054933_fk_django_comments_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_comment_id_d8054933_fk_django_comments_id FOREIGN KEY (comment_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags django_comment_flags_user_id_f3f81f0a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_f3f81f0a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments django_comments_content_type_id_c4afe962_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_content_type_id_c4afe962_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments django_comments_site_id_9dcf666e_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_site_id_9dcf666e_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments django_comments_user_id_a0a440a1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_user_id_a0a440a1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_redirect django_redirect_site_id_c3e37341_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_site_id_c3e37341_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_field forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_field
    ADD CONSTRAINT forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id FOREIGN KEY (form_id) REFERENCES forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_fieldentry forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id FOREIGN KEY (entry_id) REFERENCES forms_formentry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_form forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_form
    ADD CONSTRAINT forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: forms_formentry forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_formentry
    ADD CONSTRAINT forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id FOREIGN KEY (form_id) REFERENCES forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: galleries_gallery galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_gallery
    ADD CONSTRAINT galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: galleries_galleryimage galleries_galleryima_gallery_id_af12d3f5_fk_galleries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_galleryimage
    ADD CONSTRAINT galleries_galleryima_gallery_id_af12d3f5_fk_galleries FOREIGN KEY (gallery_id) REFERENCES galleries_gallery(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_assignedkeyword generic_assignedkeyw_content_type_id_3dd89a7f_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyw_content_type_id_3dd89a7f_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_assignedkeyword generic_assignedkeyw_keyword_id_44c17f9d_fk_generic_k; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyw_keyword_id_44c17f9d_fk_generic_k FOREIGN KEY (keyword_id) REFERENCES generic_keyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_keyword generic_keyword_site_id_c5be0acc_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_site_id_c5be0acc_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_rating generic_rating_content_type_id_eaf475fa_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_content_type_id_eaf475fa_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_rating generic_rating_user_id_60020469_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_user_id_60020469_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_threadedcomment generic_threadedcomm_comment_ptr_id_e208ed60_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomm_comment_ptr_id_e208ed60_fk_django_co FOREIGN KEY (comment_ptr_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: generic_threadedcomment generic_threadedcomm_replied_to_id_d0a08d73_fk_generic_t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomm_replied_to_id_d0a08d73_fk_generic_t FOREIGN KEY (replied_to_id) REFERENCES generic_threadedcomment(comment_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_link pages_link_page_ptr_id_37d469f7_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_link
    ADD CONSTRAINT pages_link_page_ptr_id_37d469f7_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_page pages_page_parent_id_133fa4d3_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_parent_id_133fa4d3_fk_pages_page_id FOREIGN KEY (parent_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_page pages_page_site_id_47a43e5b_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_site_id_47a43e5b_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pages_richtextpage pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_richtextpage
    ADD CONSTRAINT pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: twitter_tweet twitter_tweet_query_id_bd42b699_fk_twitter_query_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_tweet
    ADD CONSTRAINT twitter_tweet_query_id_bd42b699_fk_twitter_query_id FOREIGN KEY (query_id) REFERENCES twitter_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

\connect soylatte

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 9.6.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

\connect template1

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 9.6.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

