- Para subir o container do Banco de Dados:
$ docker-compose up --build -d

- O arquivo changelog/liquibase.docker.properties contém as configurações para comunicação com o Liquibase

- Consultar se os changeSets já foram executados antes do update:
docker run --rm \
--network=liquibase_pgsql \
-v /Users/ericacosta/Documents/DITIC/liquibase/changelog:/liquibase/changelog liquibase/liquibase --defaultsFile=/liquibase/changelog/liquibase.docker.properties status --verbose

- Para fazer update:
docker run --rm \
--network=liquibase_pgsql \
-v /Users/ericacosta/Documents/DITIC/liquibase/changelog:/liquibase/changelog liquibase/liquibase --defaultsFile=/liquibase/changelog/liquibase.docker.properties update

