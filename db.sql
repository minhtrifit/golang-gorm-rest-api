--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-10-28 21:04:51

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
-- TOC entry 3322 (class 1262 OID 100291)
-- Name: BookManagement; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "BookManagement" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "BookManagement" OWNER TO postgres;

\connect "BookManagement"

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
-- TOC entry 214 (class 1259 OID 100306)
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    id character varying(10) NOT NULL,
    name character varying(100) NOT NULL,
    author character varying(50) NOT NULL,
    price character varying(100) NOT NULL,
    image character varying(500) NOT NULL,
    published date NOT NULL
);


ALTER TABLE public.book OWNER TO postgres;

--
-- TOC entry 3316 (class 0 OID 100306)
-- Dependencies: 214
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.book (id, name, author, price, image, published) VALUES ('001', 'Cây Cam Ngọt Của Tôi', 'José Mauro de Vasconcelos', '75600', './assets/caycamngotcuatoi.jpg', '2017-03-14');
INSERT INTO public.book (id, name, author, price, image, published) VALUES ('002', 'Nhà Giả Kim', 'Paulo Coelho', '63200', './assets/nhagiakim.jpg', '2017-03-14');
INSERT INTO public.book (id, name, author, price, image, published) VALUES ('003', '999 Lá Thư Gửi Cho Chính Mình', 'Miêu Công Tử', '79200', './assets/999lathu.jpg', '2017-03-14');
INSERT INTO public.book (id, name, author, price, image, published) VALUES ('004', 'Sĩ Số Lớp Vắng 0', 'Emma Hạ My', '81600', './assets/sisolopvang0.jpg', '2017-03-14');
INSERT INTO public.book (id, name, author, price, image, published) VALUES ('005', 'Lưu Chép Pháp Y', 'Lưu Hiểu Huy', '12000', './assets/ghichepphapy.jpg', '2017-03-14');
INSERT INTO public.book (id, name, author, price, image, published) VALUES ('006', 'Chưa Kịp Lớn Đã Trưởng Thành', 'Tớ Là Mây', '63200', './assets/chuakiplondatruongthanh.jpg', '2017-03-14');
INSERT INTO public.book (id, name, author, price, image, published) VALUES ('007', 'Mẹ Làm Gì Có Ước Mơ', 'Hạ Mer', '75650', './assets/melamgicouocmo.jpg', '2017-03-14');
INSERT INTO public.book (id, name, author, price, image, published) VALUES ('008', 'Tết Ở Làng Địa Ngục', 'Thảo Trang', '113230', './assets/tetolangdianguc.jpg', '2017-03-14');
INSERT INTO public.book (id, name, author, price, image, published) VALUES ('009', 'Chúng Ta Rồi Sẽ Hạnh Phúc, Theo Những Cách Khác Nhau', 'Thảo Thảo', '73100', './assets/chungtaroisehanhphuc.jpg', '2017-03-14');
INSERT INTO public.book (id, name, author, price, image, published) VALUES ('010', 'Anh Không Bận, Chỉ Là Không Nhớ Em', 'Tuệ Mẫn', '75650', './assets/anhkhongban.jpg', '2017-03-14');


--
-- TOC entry 3173 (class 2606 OID 100312)
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);


-- Completed on 2023-10-28 21:04:52

--
-- PostgreSQL database dump complete
--

