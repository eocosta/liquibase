--liquibase formatted sql

-- changeset erica:1
create table if not exists public.teste (
  id bigserial,
  content text
);

-- changeset erica:2
create table if not exists novoschema.teste (
  id bigserial,
  content text
);