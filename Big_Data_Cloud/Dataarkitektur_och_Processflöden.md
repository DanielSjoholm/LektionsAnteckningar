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