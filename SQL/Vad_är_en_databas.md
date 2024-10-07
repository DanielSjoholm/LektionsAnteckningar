# Vad är en Databas?
**Lektion 14/11**

En databas är ett sätt att organisera och lagra data. Den fungerar som ett arkiv där du kan hämta, lägga till, uppdatera och ta bort data. Databaser är bättre än filer eftersom de kan hantera många samtidiga användare, har bättre backup-system, erbjuder bättre prestanda för stora datamängder och är effektiva på att skapa rapporter och extrahera information.

## Vad består en databas av?
En databas är en strukturerad samling av data som är organiserad för att effektivt lagra, hantera och hämta information. Här är några av de grundläggande komponenterna i en databas:

- **Tabeller**: Där data lagras i rader och kolumner, liknande ett kalkylblad. Varje tabell representerar en specifik entitet eller objekttyp.
- **Relationer**: Används för att koppla samman data mellan olika tabeller genom nycklar, där en tabell kan referera till en annan.
- **Fält eller kolumner**: Representerar olika attribut eller egenskaper för varje post i tabellen.
- **Poster eller rader**: Innehåller den faktiska datan och representerar individuella instanser av objekten i tabellen.
- **Primärnycklar**: En unik identifierare för varje post i tabellen, vilket underlättar åtkomst och uppdateringar.
- **Förfrågningar (queries)**: Används för att hämta, filtrera och manipulera data i databasen.
- **Index**: Används för att snabba upp sökningar och åtkomst till data genom att skapa en strukturerad sökordning.

## Vad är en databashanterare (DBMS)?
En **databashanterare** (DBMS) är en programvara som används för att skapa och hantera databaser. DBMS möjliggör att skapa databaser, lagra och hämta data snabbt och effektivt, även om databasen är stor. Exempel på DBMS: MySQL, SQL Express, Oracle och SQL Server.

## Skillnad mellan DBMS och RDBMS
- **DBMS** (Database Management System): Hanterar olika typer av data, inklusive text, siffror och bilder. Data lagras oftast i filer eller dokument och behöver inte ha relationer mellan poster.
- **RDBMS** (Relational Database Management System): Organiserar data i tabeller med rader och kolumner och skapar relationer mellan tabeller med hjälp av nycklar för att säkerställa dataintegritet och konsekvens.

### Viktiga skillnader:
1. **Datastruktur**: 
   - DBMS lagrar data i filer och dokument.
   - RDBMS organiserar data i tabeller med relationer mellan dem.
2. **Dataintegritet**: 
   - RDBMS säkerställer dataintegritet med hjälp av nycklar.
3. **Frågespråk (SQL)**: 
   - RDBMS använder SQL som standardfrågespråk.
4. **Relationer mellan data**: 
   - RDBMS bygger relationer mellan datatabeller, medan DBMS inte kräver detta.

## Vad är SQL?
**SQL** står för **Structured Query Language** och är språket som används för att kommunicera med databaser. SQL används för att hämta, uppdatera och manipulera data i en databas.

### Grundläggande SQL-kommandon:
- **SELECT**: Talar om vilka kolumner som ska hämtas.
- **FROM**: Anger från vilken tabell kolumnerna ska hämtas.
- **WHERE**: Specificerar ett villkor för att filtrera data.

---

Databaser är grundläggande för många system och applikationer, och med hjälp av SQL kan vi enkelt interagera med dessa för att hämta och manipulera data effektivt.