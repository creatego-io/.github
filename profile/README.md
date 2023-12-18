# README

### Version
* Flutter 3.10.x
* Dart 3.0.x

### Repos
* homepage
  * This is a homepage and beta IDE website(beta branch)
* packages
  * Contains core part of CreateGo (Interfaces, Layout, Store)
* starter_app
  * Starter App which is cloned and replaced project id for dynamic CreateGo app
* backend
  * Serverpod API backend with protocols and endpoints
* .gitignore
  * Contains README file, melos configurations and commands
    * Put 2 files (**melos.yaml** and **pubspec.yaml**) in the root of all projects and configure melos file based on what project you have

### Docker commands
* Stop all containers
  * docker compose down -v 
* Run containers
  * docker compose up --build --detach
* Serverpod runnig issue **Cannot find some table** [https://stackoverflow.com/a/76180599]:
    * docker cp ./generated/tables.pgsql backend_server-postgres-1:/docker-entrypoint-initdb.d/tables.pgsql
    * docker exec -u postgres backend_server-postgres-1 psql backend postgres -f docker-entrypoint-initdb.d/tables.pgsql
    * docker cp ./generated/tables-serverpod.pgsql backend_server-postgres-1:/docker-entrypoint-initdb.d/tables-serverpod.pgsql
    * docker exec -u postgres backend_server-postgres-1 psql backend postgres -f docker-entrypoint-initdb.d/tables-serverpod.pgsql
 
### Server update with Docker
 * build img file only with the same name **Make sure to be inside the folder where Dockerfile contains**
   * docker build -t komiljonovibexlab/creatego:v0.0.1 .
 * push to hub
   * docker push komiljonovibexlab/creatego:v0.0.1

### Creatego backend Gitlab
 * https://gitlab.yoshop.net/create-go/backend
 * Owner: komiljonov@ibexlab.com

### Adding a new Column to table with/without default value
* If no need default value, remove DEFAULT and value with type
* If the value is not null add **NOT NULL**

 * Adding List<Map<String, String>>
   * ALTER TABLE table_name
   * ADD COLUMN column_name json DEFAULT '[]' NOT NULL;
 * Adding a specific type type=T
   * ALTER TABLE table_name
   * ADD COLUMN column_name T

