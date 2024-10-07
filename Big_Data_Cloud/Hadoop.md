# Hadoop - Lektion 7/10

Hadoop är Open-source.

Hadoop är ett ramverk med öppen källkod som används för att lagra och bearbeta stora datamängder på ett distribuerat sätt över flera datorer. Det består främst av tre komponenter:

1. **HDFS (Hadoop Distributed File System)**: Ett distribuerat filsystem som lagrar stora dataset över flera noder.
2. **MapReduce**: En modell för att bearbeta och analysera data i parallella beräkningar.
3. **YARN (Yet Another Resource Negotiator)**: En komponent som hanterar resurshantering och schemalägger jobb i Hadoop-klustret, vilket gör det möjligt att köra flera typer av applikationer och optimera resursanvändningen.

Hadoop är designat för att hantera storskaliga datamängder med hög skalbarhet och felhantering.

## Grundläggande Funktionalitet inom Hadoop

Hadoop är ett ramverk med öppen källkod för att lagra och bearbeta stora datamängder i distribuerade miljöer. De grundläggande funktionerna inkluderar:

## 1. HDFS (Hadoop Distributed File System)
- Ett distribuerat filsystem som lagrar data över flera noder.
- **Funktion**: Ger hög tillgänglighet och felhantering genom att replikera data över flera maskiner.

## 2. MapReduce
- En modell för att bearbeta data parallellt över flera noder.
- **Funktion**: Dela upp stora uppgifter i mindre jobb (map), utföra beräkningar och sedan sammanfoga resultaten (reduce).

## 3. YARN (Yet Another Resource Negotiator)
- Hanterar resurshantering och schemaläggning av applikationer.
- **Funktion**: Allokerar CPU och minne till olika uppgifter och ser till att jobb körs effektivt i klustret.

## 4. Hadoop Common
- En uppsättning grundläggande bibliotek och verktyg som används av andra Hadoop-moduler.
- **Funktion**: Tillhandahåller verktyg för filsystem och logghantering, och fungerar som en grund för Hadoop-ekosystemet.

## 5. Hadoop Ecosystem
- Hadoop är kompatibelt med olika verktyg för databehandling och analys, som:
  - **Hive**: Databearbetning med SQL-liknande syntax.
  - **Pig**: Scripting för analys av stora dataset.
  - **HBase**: En kolumnorienterad databas som körs ovanpå HDFS.
  - **Oozie**: För att schemalägga Hadoop-jobb.

Dessa komponenter tillsammans gör Hadoop till en kraftfull plattform för hantering av storskalig data och analys i distribuerade miljöer.


## Skalbarhet
- **Definition**: Hadoop är byggt för att hantera stora datamängder genom att enkelt kunna skala upp (lägga till fler noder) eller ner.
- **Funktion**: Du kan lägga till fler maskiner (noder) i klustret för att hantera mer data och högre arbetsbelastningar utan att påverka systemets prestanda negativt.

## Flexibilitet
- **Definition**: Hadoop kan hantera olika typer av data, både strukturerad, semi-strukturerad och ostrukturerad.
- **Funktion**: Data kan lagras i olika format som textfiler, bilder, videor eller JSON, vilket gör Hadoop mycket anpassningsbart för olika typer av applikationer.

## Feldröjningar
- **Definition**: Hadoop är designat för att hantera fel utan att systemet kraschar.
- **Funktion**: Om en nod går ner eller misslyckas, kan Hadoop automatiskt flytta arbetsbelastningen till andra fungerande noder, vilket säkerställer att jobbet fortsätter utan avbrott.
- **HDFS**: Data replikeras över flera noder för att garantera tillgänglighet även om en nod misslyckas.

## Praktiska tillämpningar av Hadoop

- **Sociala medier**: Företag som Facebook och Twitter använder Hadoop för att lagra och analysera enorma mängder data som genereras av användare. Denna analys hjälper till att förstå användarbeteenden och trender.
- **E-handel**: Amazon och eBay använder Hadoop för att analysera kundbeteenden, optimera sökningar och göra produktrekommendationer, samt analysera klickströmmar.
- **Finansiella Tjänster**: Banker och finansiella institutioner använder Hadoop för bedrägeribekämpning, riskhantering och sentimentanalys av marknaden, vilket hjälper till att upptäcka ovanliga beteenden.
- **Hälsovård och life sciences**: Hadoop används inom hälsovården för att analysera patientdata, kliniska prövningar och genetiska sekvensdata för att förbättra diagnoser, behandlingsutfall och påskynda forskning om nya läkemedel.
- **Telekommunikation**: Telekomföretag använder Hadoop för att hantera och analysera stora volymer kunddata, nätverksprestanda och användningsmönster, vilket hjälper till att förbättra tjänstekvaliteten och kundupplevelsen.
- **Medier och underhållning**: Mediebolag använder Hadoop för att analysera användarbeteenden och konsumtionsmönster, vilket möjliggör personaliserade rekommendationer och riktad reklam.
- **Energi och naturresurser**: Energibolag använder Hadoop för att analysera stora datamängder från sensorer och smarta nätverk, vilket optimerar resursanvändning och hjälper till att förutsäga efterfrågan och hantera energiproduktion effektivt.
