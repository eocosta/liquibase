create or replace function novoschema.person_greeting(person_name text) returns text as
$body$
    begin
        return 'Hello, ' || person_name;
    end;
$body$ language plpgsql