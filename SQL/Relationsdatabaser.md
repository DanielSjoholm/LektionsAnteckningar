# Relationsdatabaser och dess aktörer - Lektion 27/11

## Introduktion till Relationsdatabaser

Konceptet med relationsdatabaser utvecklades först av Dr. Edgar F. Codd. Tidigare modeller var hierarkiska och nätverksbaserade, men Codds modell introducerade en enklare metod för att strukturera och manipulera data genom användning av tabeller.

En viktig drivkraft bakom relationsdatabaser var utvecklingen av SQL, ett språk specifikt utformat för att interagera med dessa databaser. Oracle var ett av de första företagen att erbjuda ett kommersiellt relationsdatabasmanagementsystem (RDBMS).

Sedan 1980-talet har relationsdatabaser utvecklats avsevärt och blivit mer presterande, skalbara och flexibla. De har anpassats för att hantera stora datamängder och komplexa frågor samt integrerats med andra teknologier som dataanalys och molntjänster.

## Fördelar med Relationsdatabaser
- **Strukturerad och organiserad datahantering**: Använder tabeller för att lagra data, vilket gör det enkelt att förstå och manipulera.
- **Dataintegritet och noggrannhet**: Genom användning av nycklar och relationer mellan tabeller säkerställs att data är korrekt och konsekvent över hela databasen.
- **Kraftfullt frågespråk (SQL)**: SQL är standardiserat, kraftfullt och flexibelt, vilket gör det möjligt att utföra komplexa frågor och analyser.
- **Säkerhet och transaktionsstöd**: Tillhandahåller robusta säkerhetsfunktioner och stöd för transaktioner.
- **Skalbarhet och prestanda**: Moderna relationsdatabaser kan hantera stora datamängder och stödjer hög samtidighet, vilket gör dem lämpliga för både små och stora applikationer.

## Nackdelar med Relationsdatabaser
- **Komplexitet i design och underhåll**: Att designa och underhålla relationer mellan tabeller kan vara komplext.
- **Mindre flexibel för ostrukturerad data**: Relationsdatabaser är inte optimala för att hantera ostrukturerad data, som text, bilder och videor.
- **Kostnad och resurser**: Kan kräva stora resurser i termer av serverkraft och lagringsutrymme, vilket kan bli dyrt.
- **Anpassning till förändringar**: Att lägga till en kolumn i en stor databas kan vara komplicerat och dyrt. Prestandafrågor vid stora databaser kan vara utmanande, särskilt vid komplexa JOIN-frågor.

## Stora aktörer inom Relationsdatabaser:
1. Oracle
2. MySQL
3. Microsoft SQL Server
4. IBM Db2
5. SQLite

## Normalisering

Normalisering används för att förbättra datakvaliteten och minska redundans. Normaliserade tabeller är enklare att förstå, ändra och utöka, och de skyddar mot fel vid insättning, uppdatering och borttagning av data.

### 1NF (Första normalformen)
1. Varje cell i en tabell ska innehålla endast ett värde.
2. Varje rad måste vara unik.
3. Ingen ordning på raderna ska ha betydelse.
4. Det är inte tillåtet att blanda olika datatyper i samma kolumn.
5. Tabellen måste ha en primärnyckel.

### 2NF (Andra normalformen)
För att uppfylla 2NF:
1. Tabellen måste uppfylla 1NF.
2. Det får inte finnas några **partial dependencies**.

**Partial dependencies** beskriver sambandet mellan en oberoende variabel och den beroende variabeln, där effekten av andra variabler hålls konstant. Detta används i dataanalys och maskininlärning för att identifiera och visualisera viktiga drivkrafter.

### 3NF (Tredje normalformen)
För att uppfylla 3NF:
1. Tabellen måste uppfylla 1NF och 2NF.
2. Det får inte finnas några **transitive functional dependencies**.

En **transitiv funktionsberoende** innebär att ett attribut indirekt påverkar ett annat attribut via ett mellanliggande attribut. Det är viktigt att undvika för att minska redundans och förbättra dataintegriteten i databaser.