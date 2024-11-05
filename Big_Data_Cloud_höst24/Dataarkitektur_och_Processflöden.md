# Dataarkitektur och Processflöden – Lektion 30/9

## Datainsamlingslagret:
Ansvarar för att samla in data från olika källor, såsom databaser, sensorer, API:er, sociala medier och filsystem. Den insamlade datan kan vara strukturerad, semi-strukturerad eller ostrukturerad.

- **Strukturerad data**: Organiserad i ett fördefinierat format, ofta i tabeller med rader och kolumner (t.ex. i databaser). Lätt att söka, analysera och hantera, som Excel-filer eller SQL-databaser.
- **Semi-strukturerad data**: Har viss struktur men följer inte strikt ett schema. Exempel är JSON, XML eller NoSQL-databaser.
- **Ostrukturerad data**: Saknar definierad struktur, vilket gör den svårare att analysera direkt. Exempel inkluderar textdokument, bilder, videor och e-post.

> **Notering**: 80% av all världens data är ostrukturerad och outnyttjad.

### Vanliga verktyg:
- Apache Kafka: För realtidsdataflöden.
- Apache Flume: För logginsamling.
- AWS Kinesis / Azure Event Hubs: För att hantera stora mängder strömmande data.

**Viktigt**:
- Data kan samlas in i realtid eller batch.
- Skalbarhet är kritiskt för att hantera stora datamängder.

## Datalagringslagret:
Efter insamling måste data lagras på ett sätt som möjliggör enkel åtkomst och vidare bearbetning. Lagringslagret varierar beroende på datatyp.

- **Data Lake**: För ostrukturerad och semi-strukturerad data (t.ex. AWS S3, Azure Data Lake).
- **Data Warehouse**: För strukturerad data som ska analyseras, ofta i ett relationsdatabasformat (t.ex. Amazon Redshift, Azure Synapse Analytics).

**Viktigt**:
- Stödjer både batch och realtidsdata.
- Skalbarhet och kostnadseffektivitet är avgörande faktorer.

## Datalagrings- och Optimeringslagret:
Ansvarar för att transformera och bearbeta insamlad data. Bearbetningen inkluderar att rensa, strukturera och omvandla data för att göra den användbar för analyser och beslutsfattande.

### Verktyg och tekniker:
- Apache Hadoop: För batchbearbetning av stora datamängder.
- Apache Spark: För både batch- och strömmande data.
- AWS Glue / Azure Data Factory: För ETL-processer (Extract, Transform, Load).

**Viktigt**:
- Dåligt transformerad data är inte pålitlig och kan leda till felaktiga beslut.

## Visualiseringslagret:
Efter bearbetning är nästa steg att analysera data. Detta lager gör det möjligt att visualisera data och använda maskininlärning för att upptäcka mönster eller förutsäga framtida trender.

### Verktyg:
- SQL-verktyg: För att köra datafrågor.
- Business Intelligence (BI): Verktyg som Tableau, Power BI.
- Data Science Plattformar: Som Databricks, AWS Sagemaker eller Azure Machine Learning.

**Viktiga aspekter**:
- Integration av deskriptiv och prediktiv analys.
- Skalbara maskinlärningsmodeller för att hantera stora datamängder.

## Data Access Layer (Åtkomstlagret):
Fokuserar på åtkomstkontroll, säkerhet och dataintegritet. Detta lager säkerställer att endast auktoriserade användare kan komma åt rätt data, och att data hålls säker både vid lagring och överföring.

- **Data in motion (data in transit)**: Data som överförs mellan system eller nätverk (t.ex. via API eller strömmande system).
- **Data at rest**: Data som vilar i en databas eller i lagring.

### Säkerhetsmetoder för molntjänster:
- HTTPS: För säker internetåtkomst.
- VPN-tunnlar: För skyddad åtkomst till molntjänster.
- Direkt lina: För säker och snabb kommunikation.

### Verktyg och tekniker:
- Role-Based Access Control (RBAC): För åtkomstkontroll.
- Kryptering: Av data både i vila och under överföring.
- Data Governance-verktyg: Som AWS Lake Formation eller Azure Purview för att övervaka och säkerställa datakvalitet och regelefterlevnad.

**Viktiga aspekter**:
- Hantering av användaråtkomst och känslig data.
- Regelefterlevnad som GDPR eller CCPA.
- Data lineage och auditering för spårbarhet.

## Användarinteraktionslagret:
Detta lager gör data och insikter tillgängliga för slutanvändare via olika gränssnitt, som dashboards, rapporter eller API:er.

### Verktyg och tekniker:
- API: För att tillhandahålla åtkomst till andra applikationer.
- BI-dashboard och rapportverktyg: Som Power BI, Tableau eller Looker.

**Viktigt**:
- Användarvänliga gränssnitt är nyckeln till att effektivt utnyttja insikter och stödja beslutsfattande.

## Viktiga avvägningar:
- Användarvänlighet.
- Realtidsuppdateringar för att ge aktuell information.
- Anpassningsbara visualiseringar och rapporter.

## Sammanfattning:
Ett big data-system är ofta organiserat i lager för att säkerställa effektiv hantering av stora datamängder. (6 lager)

Genom att dela upp systemet i dessa lager kan man skala och optimera varje del för sina specifika behov, från insamling av data till analys och visualisering.

Detta möjliggör snabbare och mer noggranna beslutfattning i stora organisationer.

# Dataanalys

## Deskriptiv och prediktiv analys

**Deskriptiv analys** handlar om att sammanfatta och beskriva historisk data för att få insikt om vad som hänt. Målet är att identifiera mönster, trender och sammanhang utan att göra förutsägelser om framtiden.

**Prediktiv analys** är motsatsen och använder historisk data samt statistik för att göra förutsägelser om framtida händelser.

# NoSQL Databastyper och molntjänster

## Dokumentdatabaser
Idealisk för semistrukturerad data som JSON och XML.

- **MongoDB**
  - **Molnleverantörer**:
    - AWS, Azure, Google Cloud via [MongoDB Atlas](https://www.mongodb.com/atlas)
    - Azure: [Azure Cosmos DB (MongoDB API)](https://azure.microsoft.com/en-us/services/cosmos-db/)

- **Amazon DocumentDB**
  - **Molnleverantör**:
    - AWS: [Amazon DocumentDB](https://aws.amazon.com/documentdb/)

## Kolumnbaserade databaser
Lämpliga för effektiv läsning och skrivning av stora datamängder.

- **Apache Cassandra**
  - **Molnleverantörer**:
    - AWS: [Keyspaces for Apache Cassandra](https://aws.amazon.com/keyspaces/)
    - Azure: [Azure Managed Instance for Apache Cassandra](https://azure.microsoft.com/en-us/services/cosmos-db/cassandra/)
    - Google Cloud: [Cassandra on Google Cloud](https://cloud.google.com/marketplace)

- **Google Bigtable**
  - **Molnleverantör**:
    - Google Cloud: [Google Bigtable](https://cloud.google.com/bigtable)

- **Amazon Redshift**
  - **Molnleverantör**:
    - AWS: [Amazon Redshift](https://aws.amazon.com/redshift/)

## Key-value databaser
Den enklaste NoSQL-formen, idealisk för scenarier med höga krav på prestanda.

- **Redis**
  - **Molnleverantörer**:
    - AWS: [Amazon ElastiCache for Redis](https://aws.amazon.com/elasticache/redis/)
    - Azure: [Azure Cache for Redis](https://azure.microsoft.com/en-us/services/cache/)
    - Google Cloud: [Redis on Google Cloud](https://cloud.google.com/memorystore/docs/redis)

- **Amazon DynamoDB**
  - **Molnleverantör**:
    - AWS: [Amazon DynamoDB](https://aws.amazon.com/dynamodb/)

- **Riak**
  - **Molnleverantörer**:
    - Finns som öppen källkod och kan implementeras på flera moln, men saknar en specifik hanterad molntjänst.

## Graf-databaser
Data lagras som noder och relationer mellan dem, idealiskt för komplexa nätverk av data.

- **Neo4j**
  - **Molnleverantörer**:
    - AWS, Azure, Google Cloud via [Neo4j Aura](https://neo4j.com/cloud/aura/)

- **Amazon Neptune**
  - **Molnleverantör**:
    - AWS: [Amazon Neptune](https://aws.amazon.com/neptune/)

- **Azure Cosmos DB (Gremlin API)**
  - **Molnleverantör**:
    - Azure: [Azure Cosmos DB (Gremlin API)](https://azure.microsoft.com/en-us/services/cosmos-db/graph/)

## Time-series databaser
Speciellt utformade för att hantera tidsstämplad data, exempelvis sensordata och loggar.

- **InfluxDB**
  - **Molnleverantörer**:
    - AWS, Azure, Google Cloud via [InfluxDB Cloud](https://www.influxdata.com/products/influxdb-cloud/)

- **Amazon Timestream**
  - **Molnleverantör**:
    - AWS: [Amazon Timestream](https://aws.amazon.com/timestream/)

- **TimescaleDB**
  - **Molnleverantörer**:
    - AWS, Azure, Google Cloud via [Timescale Cloud](https://www.timescale.com/cloud)
    - Kan även köras på PostgreSQL som självhanterad lösning i flera moln


# Databastyper och molnleverantörer

## Tabellbaserade databastjänster

- **MySQL**
  - Populär och öppen källkod, används ofta för webbutveckling.
  - **Molnleverantörer**:
    - AWS: [Amazon RDS for MySQL](https://aws.amazon.com/rds/mysql/)
    - Google Cloud: [Cloud SQL for MySQL](https://cloud.google.com/sql/docs/mysql)
    - Azure: [Azure Database for MySQL](https://azure.microsoft.com/en-us/products/mysql/)

- **PostgreSQL**
  - Kraftfull databas med stöd för både relations- och JSON-data, öppen källkod.
  - **Molnleverantörer**:
    - AWS: [Amazon RDS for PostgreSQL](https://aws.amazon.com/rds/postgresql/)
    - Google Cloud: [Cloud SQL for PostgreSQL](https://cloud.google.com/sql/docs/postgres)
    - Azure: [Azure Database for PostgreSQL](https://azure.microsoft.com/en-us/products/postgresql/)

- **Microsoft SQL Server**
  - Ett kommersiellt alternativ som ofta används i företagsmiljöer.
  - **Molnleverantörer**:
    - AWS: [Amazon RDS for SQL Server](https://aws.amazon.com/rds/sqlserver/)
    - Google Cloud: [SQL Server on Google Cloud](https://cloud.google.com/sql-server)
    - Azure: [Azure SQL Database](https://azure.microsoft.com/en-us/products/azure-sql/)

- **Oracle Database**
  - Mycket skalbar och ofta använd i större företag och organisationer.
  - **Molnleverantörer**:
    - AWS: [Amazon RDS for Oracle](https://aws.amazon.com/rds/oracle/)
    - Oracle Cloud: [Oracle Autonomous Database](https://www.oracle.com/autonomous-database/)
    - Azure: [Oracle Database on Azure](https://azure.microsoft.com/en-us/solutions/oracle/)

- **IBM Db2**
  - Skalbar databas för stora datamängder och transaktionsintensiva miljöer.
  - **Molnleverantörer**:
    - IBM Cloud: [IBM Db2 on Cloud](https://www.ibm.com/cloud/db2)
    - AWS: Tillgängligt genom [IBM Cloud Pak for Data on AWS](https://aws.amazon.com/partners/ibm-cloud-pak-for-data/)
    - Google Cloud: Stöd via [IBM Cloud Pak for Data on Google Cloud](https://cloud.google.com/solutions/partners/ibm)