# NoSQL – Lektion 30/9

## MongoDB och SQL
Som vi numera vet så finns det ett flertal typer av NoSQL-databaser. Vi vet också att vi väljer typ baserat på:

- **Datans natur**: Strukturerad, semi-strukturerad eller ostrukturerad samt hur komplex den är.
- **Applikationens krav**: Specifika krav inklusive frågetyper, läs/skriv-frekvens samt skalbarhet.
- **Konsistensbehov**: Nivån av konsistens som krävs av din applikation.

### Vidare så vet vi att det finns (5 typer av NoSQL databaser):

1. **Dokumentdatabaser**: Idealiska för semi-strukturerad data såsom JSON och XML.
2. **Kolumnbaserade databaser**: Lämpliga för applikationer som kräver effektiv läsning och skrivning av stora datamängder.
3. **Key-value databaser**: Den enklaste formen av NoSQL, perfekt för höga skrivhastigheter.
4. **Graf-databaser**: Data lagras som noder och det skapas relationer mellan dessa.
5. **Time-series databaser**: Speciellt utformade för att hantera tidsstämplad data.

## DocumentDB:
Exempel: MongoDB, Azure CosmosDB, Amazon DocumentDB.

### Datamodell:
Data lagras i dokumentformat som JSON eller BSON i MongoDB, medan CosmosDB har stöd för flera API:er inklusive MongoDB API. Dokument är strukturerade i nyckel-värde-par och kan innehålla olika fält och strukturer, vilket gör det enkelt att representera komplex och varierad data.

### Användningsområden:
Perfekt för applikationer som hanterar semi-strukturerad eller ostrukturerad data, till exempel innehållshanteringssystem, kataloger, profiler och loggfiler. Bra för agila utvecklingsmiljöer där schemat kan förändras över tid.

### Fördelar:
- Flexibel datamodell som kan anpassas efter applikationens behov.
- Enklare att representera objektorienterad data.
- Lämplig för applikationer med varierande strukturer på data.

## Key-Value Stores:
Exempel: Redis, DynamoDB, Riak, Memcached.

### Datamodell:
Data lagras som key-value-pair där varje nyckel är unik och passar till ett värde.

### Användningsområden:
Passar för caching.

### Fördelar:
- Extremt snabba läs- och skrivoperationer.
- Enkel struktur som är lätt att implementera.

### Nackdelar:
- Begränsade möjligheter till komplexa frågor och analys av data.
- Passar inte för applikationer som kräver relationer mellan objekt eller komplexa transaktioner.

## Kolumnbaserade databaser (Column-Family Stores):
Exempel: Apache Cassandra, HBase, ScyllaDB.

### Datamodell:
Data lagras i rader och kolumner, likt en traditionell relationell databas. Men istället för att organisera data i tabeller lagras kolumner med liknande egenskaper tillsammans i familjer. Detta möjliggör snabb åtkomst till specifika kolumner och hanterar stora datamängder effektivt.

### Användningsområden:
Dataanalys och stora datamängder, till exempel logghantering och realtidsanalys. Lämplig för distribuerade system som kräver hög tillgänglighet och partitionstolerans.

### Fördelar:
- Bra för skrivintensiva applikationer och kan hantera stora volymer.
- Stödjer partitionering och replikering för hög tillgänglighet.

### Nackdelar:
- Kan vara svårt att designa optimala datamodeller, särskilt för frågor som spänner över flera kolumner.
- Begränsad flexibilitet jämfört med dokumentdatabaser.

## Grafdatabaser:
Exempel: Neo4j, Amazon Neptune, OrientDB, ArangoDB.

### Datamodell:
Data lagras som noder och relationer mellan dessa noder. Varje nod representerar en entitet (t.ex. en person, ett föremål) och varje relation beskriver en länk mellan noder (t.ex. vänskap, ägande).

### Användningsområden:
Bra för applikationer som behöver hantera komplexa relationer mellan objekt, till exempel sociala nätverk, rekommendationsmotorer eller nätverksanalyser. Används också för att hantera hierarkiska strukturer, t.ex. organisationshierarkier eller nätverksdiagram.

### Fördelar:
- Effektiv för att genomföra komplexa frågor som involverar flera steg av relationer.
- Bra för att hitta mönster eller navigera genom grafer (t.ex. kortaste vägen-algoritmer).

### Nackdelar:
- Mindre effektiv för hantering av ostrukturerad eller dokumentliknande data.
- Kräver särskilda optimeringar och underhåll för att bibehålla prestanda.

## Time-Series-Database (Tidsseriedatabaser):
Exempel: InfluxDB, TimescaleDB, OpenTSDB, Prometheus.

### Datamodell:
Data organiseras baserat på tidsstämplar och är optimerad för att samla in, lagra och analysera tidsstämplad data. Varje datapunkt lagras med en tidsstämpel som primär nyckel och tillhörande värden (t.ex. temperatur, CPU-användning, sensorvärden) och metadata (t.ex. enhet eller plats).

### Användningsområden:
Övervakning av applikationer och systemprestanda (t.ex. serverövervakning eller nätverkstrafik). IoT-data som samlar in mätningar från sensorer. Finansiella applikationer som kräver hantering av aktiekurser och andra ekonomiska data över tid. Klimatdata, hälsoövervakning, etc.

### Fördelar:
- Optimerad för att hantera stora mängder insättnings- och uppdateringsoperationer baserade på tidsstämplar.
​⬤