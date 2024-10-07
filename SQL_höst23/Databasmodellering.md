# Databasmodellering - Lektion 23/11

## Hur ska databasen se ut? 
Databasmodellering följer tre faser enligt skolboken:

1. **Konceptuell modellering**
2. **Logisk modellering**
3. **Fysisk modellering**

### Fas 1: Konceptuell modellering
- **ERD** (Entity-Relationship-Diagram): En metod för att rita entiteter och deras relationer.
- Syftet med konceptuell modellering är att skapa en enkel och lättförståelig modell som även icke-tekniska personer kan förstå och diskutera.
- Modellen beskriver i korthet vad vi ska bygga och visar på en hög nivå vilka entiteter och relationer som ska inkluderas.

### Fas 2: Logisk modellering
- En process där vi konstruerar en datamodell och väljer databastyp, men inte specifik RDBMS.
- Den konceptuella modellen översätts till en logisk modell där vi ritar om modellen som tabeller med kolumner.
- Fokus ligger på att definiera strukturen, men utan att gå in på specifika tekniska detaljer som datatyper eller index.

### Fas 3: Fysisk modellering
- I denna fas har vi valt databastyp (t.ex. MySQL, Oracle) och specifik RDBMS.
- Här inkluderas alla tekniska detaljer som entitetsrelationer, index, datatyper och constraints.
- Vi skapar tabellerna och bestämmer vilka datatyper som ska användas, vilka kolumner som ska ha index och vilka relationer som ska ha foreign keys.

---

## Entity Relationship Diagram (ERD)

Ett **Entity Relationship Diagram (ERD)** är en standardmetod för att rita upp entiteter, relationer och attribut i en databas. Det används för att grafiskt representera datamodellen och de relationer som existerar mellan entiteterna.

### Arbetsprocess för ERD:
1. **Identifiera substantiv**: Substantiv i systemet representerar vanligtvis entiteter som "Person", "Plats" eller "Saker".
2. **Gruppering av substantiv**: Substantiv som beskriver gemensamma teman grupperas till tabeller.
3. **Substantiv som beskriver egenskaper**: Substantiv som representerar egenskaper eller attribut blir kolumner.
4. **Specifika instanser**: Vissa substantiv kan identifiera specifika instanser av en entitet och fungerar som nycklar för att unikt identifiera poster.

---

## Sammanfattning:
Databasmodellering består av tre faser: konceptuell, logisk och fysisk modellering. Genom att följa dessa faser kan vi skapa en tydlig och strukturerad databasdesign som både tekniska och icke-tekniska personer kan förstå. ERD är ett kraftfullt verktyg som hjälper till att visualisera datamodellen och definiera entiteter, relationer och attribut.