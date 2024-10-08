# Databricks - Lektion 7/10

Databricks är en molnbaserad plattform för datavetenskap och ingenjörsarbete byggd på Apache Spark.

Databricks kombinerar kraften av Apache Spark med funktioner för samarbete och integration med olika molntjänster. Plattformen gör det möjligt för dataingenjörer, datavetare och analytiker att arbeta tillsammans på ett mer effektivt sätt och skala sina datadrivna projekt.

Databricks erbjuder flera integrerade funktioner:

1. **Databricks Runtime**: Optimerad Apache Spark-motor som är förbyggd och underhållen av Databricks för att köra Spark-program effektivare.
2. **Databricks Notebooks**: En interaktiv miljö där du kan skriva kod i olika språk (Python, Scala, SQL, etc.) och samarbeta i realtid.
3. **Delta Lake**: Ett lagringsskikt för att hantera både batch och strömmande data på ett tillförlitligt och effektivt sätt med ACID-egenskaper.
4. **MLflow**: En plattform för hantering av maskininlärningsprojekt, från experimentering till produktion.
5. **AutoML**: Automatiserade maskininlärningsverktyg som hjälper till att bygga och distribuera modeller utan att skriva mycket kod.

## Grundläggande Funktioner i Databricks

Databricks är byggt för att möjliggöra samarbete över olika datavetenskapliga och ingenjörsmässiga discipliner. Genom att erbjuda en molnbaserad plattform med stark integration till molnleverantörer som AWS, Azure och GCP, är Databricks en ledande plattform för datadriven utveckling.

## 1. Databricks Runtime
- **Definition**: En optimerad Spark-motor som inkluderar förbättringar och optimeringar utvecklade av Databricks.
- **Funktion**: Denna runtime erbjuder högre prestanda och tillförlitlighet för Spark-jobb, inklusive stöd för maskininlärningsmodeller och grafbearbetning.

## 2. Databricks Notebooks
- **Definition**: En interaktiv miljö som stödjer flera programmeringsspråk.
- **Funktion**: Notebooks i Databricks gör det möjligt för team att skriva och exekvera kod, analysera resultat och samarbeta i realtid på samma dokument.

## 3. Delta Lake
- **Definition**: Ett tillförlitligt lagringsskikt byggt ovanpå Apache Spark för att hantera både batch- och strömmande data.
- **Funktion**: Delta Lake erbjuder ACID-transaktioner, skalbarhet och enkel hantering av både batch- och realtidsdata med stöd för versionering och tidsspecifika frågor.

## 4. MLflow
- **Definition**: En plattform för hantering av hela livscykeln för maskininlärningsprojekt.
- **Funktion**: MLflow används för att spåra experiment, reproducera resultat och distribuera modeller i produktion.

## 5. AutoML
- **Definition**: Ett verktyg för att automatisera skapandet av maskininlärningsmodeller.
- **Funktion**: AutoML erbjuder användare möjlighet att snabbt och enkelt bygga och distribuera maskininlärningsmodeller utan att behöva detaljerad kunskap om algoritmerna bakom.

## Skalbarhet
- **Definition**: Databricks är byggt för att skalas både vertikalt och horisontellt beroende på arbetsbelastningen.
- **Funktion**: Plattformen kan utnyttja resurser från molnleverantörer för att hantera stora datamängder på ett effektivt sätt.

## Samarbete
- **Definition**: Databricks gör det möjligt för flera användare att samarbeta i realtid på samma projekt.
- **Funktion**: Genom delade notebooks och integrationer med verktyg som Git kan team arbeta tillsammans utan att skapa separata miljöer eller konfigurationer.

## Felhantering
- **Definition**: Inbyggd mekanism för att hantera fel och återhämtning.
- **Funktion**: Databricks erbjuder automatiska återstartsmekanismer och replikering för att skydda mot dataförluster och noder som går ner.

## Praktiska tillämpningar av Databricks

- **Finansiella tjänster**: Banker använder Databricks för att analysera transaktionsdata och utföra realtidsriskbedömningar.
- **E-handel**: Analyserar kundinteraktioner och optimerar produktrekommendationer.
- **Hälsovård**: Används för att analysera storskaliga patientdata och förbättra medicinska beslut och behandlingar.
- **Energi**: Företag inom energisektorn använder Databricks för att optimera distribution och hantering av energiresurser.

## Databricks "in the Cloud"

Databricks är designat för att köras i molnet och erbjuder sömlös integration med stora molnleverantörer, inklusive AWS, Azure och Google Cloud Platform.

## AWS (Amazon Web Services)
- **Amazon EMR**: Stöd för att köra Databricks på AWS-plattformen med enkel skalning och klusterhantering.

## GCP (Google Cloud Platform)
- **Google Dataproc**: Integration med Google Cloud för att köra Spark-kluster och Databricks direkt i molnet.

## Azure
- **Azure Databricks**: En specifik implementering av Databricks optimerad för Azure, med nära integration till andra Azure-tjänster som Azure Synapse och Azure Machine Learning.

## Fördelar med Databricks "in the Cloud"
- **Skalbarhet**: Dynamisk skalning upp eller ner baserat på arbetsbelastning.
- **Kostnadseffektivitet**: Betala endast för den infrastruktur som används.
- **Säkerhet och efterlevnad**: Molnleverantörer erbjuder robusta säkerhetsåtgärder och uppfyller regleringar för datahantering.

