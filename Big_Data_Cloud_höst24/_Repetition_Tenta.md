# Repetition -- Lektion 28/10

## Vad är Big Data?
Big Data refererar till extremt stora och komplexa datamängder som är så omfattande att traditionella metoder för att samla in, lagra, bearbeta och analysera data inte är tillräckliga.

För att hantera Big Data krävs speciella teknologier och verktyg. Big Data kännetecknas ofta av de tre "V:na":

- **Volym**: Mängden data är enorm och kräver skalbara lagringslösningar.
- **Variation**: Data kommer i olika format, från strukturerad till ostrukturerad information som texter, bilder och videor.
- **Hastighet**: Hastigheten i dataflödet är hög och kräver snabb bearbetning för att vara användbar.

Ibland inkluderas även ytterligare två "V" som fördjupar förståelsen av Big Data:

- **Veracity**: Handlar om att hantera osäkerhet och inkonsekvenser i data, såsom felaktig eller ofullständig information.
- **Värde**: Den potentiella affärsnyttan som kan extraheras ur data genom analys och insikter.

## Skillnad mellan data och information
Data är råa, obehandlade fakta och siffror utan sammanhang, medan information är bearbetad data som har strukturerats och tolkats för att vara meningsfull och användbar.

## Sammanfattning
Big Data används för att upptäcka mönster, trender och insikter i stora mängder data, vilket ger företag och organisationer bättre beslutsunderlag och möjlighet att fatta informerade beslut.

## The Cloud
Cloud Computing innebär leverans av IT-resurser, såsom servrar, lagring, databaser, nätverk, programvara och analyser över internet. Istället för att företag och individer behöver köpa och underhålla fysiska servrar, kan de nu hyra dessa resurser från molnleverantörer. Detta minskar kostnader och underhållsbehov, samt möjliggör snabbare skalning och tillgänglighet.

## KostnadsVariabler vi måste förhålla oss till:

- **Volym**: Mängden data som lagras eller bearbetas påverkar kostnaderna
- **Tid**: Hur länge resurser används, exempelvis drifttimmar eller abonnemangstid, påverkar totalkostnaden.
- **Licensiering (if legacy)**: Kostnader för programvarulicenser, särskilt vid äldre system, kan påverka budgeten.
- **Hårdvarukonfiguration (if IaaS)**: Val av processorkraft, minne och lagringskapacitet för virtuella maskiner påverkar kostnaderna.
- **Region (Location)**: Priser varierar beroende på datacenterregion på grund av olika driftkostnader och efterfrågan.
- **Funktion (if PaaS)**: Kostnader kan bero på specifika tjänstefunktioner eller egenskaper i plattformen, som antal API-anrop eller bearbetningsnivåer.
- **Bandbredd**: Kostnader för dataöverföring, särskilt vid hög trafik mellan tjänster eller till slutanvändare.

## Hadoop
Hadoop är en plattform som hanterar och bearbetar **mycket stora datamängder** – betydligt större än verktyg som Synapse och Databricks. Plattformen möjliggör lagring och parallell bearbetning av data över många servrar.

### Grundkomponenter i Hadoop:

- **HDFS (Hadoop Distributed File System)**: Ett distribuerat filsystem som lagrar data över flera system för redundans och åtkomst.
- **MapReduce**: En programmeringsmodell för databearbetning i parallella system. MapReduce delar upp jobbet i mindre fragment som kan bearbetas parallellt, vilket förbättrar bearbetningshastigheten.
- **YARN (Yet Another Resource Negotiator)**: En resurshanteringsteknik som effektivt allokerar resurser för olika bearbetningsuppgifter och möjliggör flera samtidiga processer.

# Kom ihåg grundfunktionerna för dessa komponenter för att förstå Hadoop-arkitekturen.

### Hadoop Ekosystem
Förutom HDFS, MapReduce och YARN innehåller Hadoop-ekosystemet flera andra viktiga verktyg och tjänster:

- **Apache Hive**: Ett datalagringssystem som gör det möjligt att hantera och analysera stora datamängder med SQL-liknande språk.
- **Apache HBase**: En NoSQL-databas som ger snabb åtkomst till stora mängder ostrukturerad data.
- **Apache Pig**: Ett högnivåverktyg för att skriva dataflöden och analysera data i Hadoop-miljöer.
- **Apache Spark**: Ett ramverk för snabb databearbetning som möjliggör in-memory processing, vilket minskar tiden för att analysera stora datamängder.

Hadoop-ekosystemet erbjuder därmed en robust uppsättning verktyg för att hantera alla aspekter av big data, från lagring till bearbetning och analys.

## Grundläggande Funktionalitet

- **Skalbarhet och Flexibilitet**: Hadoop är utformat för att enkelt skalas upp från en server till tusentals maskiner, där varje maskin erbjuder både lokal beräkning och lagring. Detta möjliggör snabb och effektiv bearbetning och lagring av enorma datamängder.

- **Felfördröjning**: En av de viktigaste funktionerna i Hadoop är dess robusta felfördröjningsmekanism. Data som lagras i HDFS replikeras över flera noder i klustret, vilket säkerställer att systemet kan fortsätta att fungera utan avbrott även om en eller flera noder går ner. Denna redundans minimerar driftstopp och säkerställer tillgänglighet.

## Är Spark och Apache Spark samma sak?

Nej, det finns stora skillnader mellan Spark och Apache Spark.

- **Spark**: Ett programspråk som är en del av Ada-språket, utvecklat för att skapa programvara med höga krav på tillförlitlighet, säkerhet och underhållbarhet. Spark är särskilt lämpligt för system där fel kan leda till allvarliga konsekvenser, exempelvis inom flygindustrin, försvarsindustrin och transportsektorn. En nackdel är att det är tidskrävande att lära sig och har höga krav på hårdvara.

- **Apache Spark**: Ett ramverk för distribuerad databehandling som utvecklats av Apache Software Foundation. Apache Spark används främst inom big data-analys för snabb bearbetning av stora datamängder och är känt för sin förmåga till in-memory processing, vilket gör analys snabbare och mer effektiv jämfört med andra verktyg som MapReduce.

Trots liknande namn har Spark och Apache Spark helt olika användningsområden och funktioner.

