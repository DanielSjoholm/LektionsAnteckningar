# Apache Spark - Lektion 7/10

Apache Spark är Open-source.

Apache Spark är ett ramverk med öppen källkod som används för snabba och distribuerade databeräkningar. Det är designat för att hantera stora datamängder och processa dessa effektivt över flera datorer i kluster. Spark erbjuder höghastighetsberäkningar genom att utnyttja minnesbaserade beräkningar, och det stöder flera programmeringsspråk.

Spark består huvudsakligen av följande komponenter:

1. **Spark Core**: Hjärtat i Apache Spark, som ansvarar för minnesbaserade beräkningar och resursallokering.
2. **Spark SQL**: Ett modul för att bearbeta strukturerad data med hjälp av SQL-liknande syntax.
3. **Spark Streaming**: Ett ramverk för att hantera och analysera realtidsdataflöden.
4. **MLlib (Machine Learning Library)**: Ett bibliotek för att skapa och köra maskininlärningsalgoritmer.
5. **GraphX**: En modul för att analysera och hantera grafdata.

Spark är designat för att vara snabbare och mer effektivt än äldre teknologier som MapReduce genom att utnyttja minnesbaserade beräkningar.

## Grundläggande Funktionalitet inom Apache Spark

Apache Spark är byggt för att bearbeta stora mängder data i realtid eller batch och erbjuder hög hastighet och flexibilitet genom att hantera olika typer av data och analysverktyg.

## 1. Spark Core
- Den centrala komponenten i Apache Spark.
- **Funktion**: Ansvarar för uppgiftsschemaläggning, resursallokering och minneshantering över klustret. Det möjliggör både batch- och strömmande beräkningar.

## 2. Spark SQL
- En modul för att hantera strukturerad data.
- **Funktion**: Använder SQL-liknande syntax för att bearbeta data från olika källor som JSON, HDFS och Apache Hive.

## 3. Spark Streaming
- Bearbetar realtidsdataflöden.
- **Funktion**: Spark Streaming gör det möjligt att analysera kontinuerliga dataströmmar, som Twitter-flöden, sensorinformation eller loggfiler, i realtid.

## 4. MLlib (Machine Learning Library)
- Ett bibliotek för maskininlärning.
- **Funktion**: MLlib innehåller olika maskininlärningsalgoritmer, som klassificering, regression och klustring, som kan köras på stora datamängder.

## 5. GraphX
- En modul för att analysera grafer och nätverk.
- **Funktion**: Hjälper till att hantera och analysera stora nätverksstrukturer, som sociala nätverk eller webbgrafer.

## Skalbarhet
- **Definition**: Spark är byggt för att kunna skala både vertikalt (med mer kraftfulla maskiner) och horisontellt (lägga till fler noder i klustret).
- **Funktion**: Spark kan bearbeta enorma datamängder genom att utnyttja hela klustret och allokera resurser där de behövs, vilket gör det mycket skalbart.

## Flexibilitet
- **Definition**: Spark stöder flera programmeringsspråk (Scala, Java, Python, och R) och olika typer av data (strukturerad, ostrukturerad, realtidsflöden).
- **Funktion**: Denna flexibilitet gör att Spark kan användas för en mängd olika tillämpningar, från realtidsdataanalys till avancerade maskininlärningsmodeller.

## Feldröjningar
- **Definition**: Spark har inbyggd felhantering.
- **Funktion**: Om en nod i klustret går ner eller upplever ett fel kan Spark automatiskt schemalägga om uppgifterna på andra noder, vilket säkerställer att beräkningen fortsätter utan avbrott.

## Praktiska tillämpningar av Apache Spark

- **Sociala medier**: Företag som Netflix och Instagram använder Spark för att analysera användarbeteenden och ge personliga rekommendationer.
- **Finansiella tjänster**: Banker använder Spark för att analysera transaktionsdata i realtid för att upptäcka bedrägeri och göra riskanalyser.
- **Hälsovård**: Spark används för att analysera storskaliga patientdata, genetik och kliniska prövningar för att förbättra diagnoser och behandlingsresultat.
- **Telekommunikation**: Företag använder Spark för att analysera realtidsnätverksprestanda och förbättra servicekvalitet och kundnöjdhet.
- **E-handel**: E-handelsplattformar använder Spark för att analysera användarinteraktioner, optimera sökningar och leverera produktrekommendationer.

## Apache Spark "in the Cloud"

Att köra Apache Spark i molnet innebär att använda molnplattformar som AWS, Google Cloud och Azure för att köra och skala Spark-kluster utan att hantera infrastrukturen själv.

## AWS (Amazon Web Services)
- **Amazon EMR (Elastic MapReduce)**: AWS erbjuder EMR för att köra Spark och andra big data-verktyg med enkel skalning och hantering av kluster.

## GCP (Google Cloud Platform)
- **Google Dataproc**: GCP erbjuder Dataproc för att köra Spark och Hadoop-kluster snabbt och kostnadseffektivt, med enkel integration med andra Google-tjänster.

## Azure
- **Azure HDInsight**: En helt hanterad molntjänst för att köra Spark, Hadoop och andra big data-verktyg, med enkel integration med andra Azure-tjänster.

## Fördelar med Apache Spark "in the Cloud"
- **Skalbarhet**: Enkel skalning upp och ner beroende på arbetsbelastning.
- **Kostnadseffektivitet**: Betala bara för de resurser du använder, vilket minimerar kostnader.
- **Enkel hantering**: Molnleverantörerna hanterar infrastrukturen och du kan fokusera på att bearbeta och analysera data.

