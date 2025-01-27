PGDMP                          z           rubrica    14.4    14.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24831    rubrica    DATABASE     c   CREATE DATABASE rubrica WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE rubrica;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    24837    contatto    TABLE     �   CREATE TABLE public.contatto (
    id_contatto bigint NOT NULL,
    cognome character varying(255),
    email character varying(255),
    nome character varying(255)
);
    DROP TABLE public.contatto;
       public         heap    postgres    false    3            �            1259    24832    numtelefono    TABLE     s   CREATE TABLE public.numtelefono (
    numero_telefonico character varying(255) NOT NULL,
    id_contatto bigint
);
    DROP TABLE public.numtelefono;
       public         heap    postgres    false    3            �            1259    24849    sequence    TABLE     k   CREATE TABLE public.sequence (
    seq_name character varying(50) NOT NULL,
    seq_count numeric(38,0)
);
    DROP TABLE public.sequence;
       public         heap    postgres    false    3            �          0    24837    contatto 
   TABLE DATA           E   COPY public.contatto (id_contatto, cognome, email, nome) FROM stdin;
    public          postgres    false    210   �       �          0    24832    numtelefono 
   TABLE DATA           E   COPY public.numtelefono (numero_telefonico, id_contatto) FROM stdin;
    public          postgres    false    209   �       �          0    24849    sequence 
   TABLE DATA           7   COPY public.sequence (seq_name, seq_count) FROM stdin;
    public          postgres    false    211   �       f           2606    24843    contatto contatto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.contatto
    ADD CONSTRAINT contatto_pkey PRIMARY KEY (id_contatto);
 @   ALTER TABLE ONLY public.contatto DROP CONSTRAINT contatto_pkey;
       public            postgres    false    210            d           2606    24836    numtelefono numtelefono_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.numtelefono
    ADD CONSTRAINT numtelefono_pkey PRIMARY KEY (numero_telefonico);
 F   ALTER TABLE ONLY public.numtelefono DROP CONSTRAINT numtelefono_pkey;
       public            postgres    false    209            h           2606    24853    sequence sequence_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sequence
    ADD CONSTRAINT sequence_pkey PRIMARY KEY (seq_name);
 @   ALTER TABLE ONLY public.sequence DROP CONSTRAINT sequence_pkey;
       public            postgres    false    211            i           2606    24844 &   numtelefono fk_numtelefono_id_contatto    FK CONSTRAINT     �   ALTER TABLE ONLY public.numtelefono
    ADD CONSTRAINT fk_numtelefono_id_contatto FOREIGN KEY (id_contatto) REFERENCES public.contatto(id_contatto);
 P   ALTER TABLE ONLY public.numtelefono DROP CONSTRAINT fk_numtelefono_id_contatto;
       public          postgres    false    210    3174    209            �   �   x�e�M�0��ݏY��Fc��18y��`�AɆ�~�ɢ��鳵o�-���������m��!�}� Y]q�y��l	{OР#�.ԉyT��d=�Q��!b��p3��C��[)��8(�{�'q���+F.�6�w��򨛱K�K�b撛-�(���I��|Ǟz�:^��J3��?�C��J�/��t�      �   I   x�Uα�0�:��l�]����9Ju"ta�c?�&$��%QD'�,z�LzqtFrWrO#.M;�j�����c v      �      x�v�ww��475������ &Cz     