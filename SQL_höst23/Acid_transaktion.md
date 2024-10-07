# ACID Transaction

"ACID transaction" är ett begrepp inom databashantering som beskriver de fyra grundläggande egenskaperna som en transaktion i en databas bör ha för att säkerställa pålitlig databehandling. ACID står för **Atomicity**, **Consistency**, **Isolation** och **Durability**. Dessa egenskaper är särskilt viktiga i system där många databasoperationer sker samtidigt.

## ACID-egenskaper:

### 1. Atomicity (Atomitet)
- **Definition**: En transaktion ska genomföras helt och hållet eller inte alls.
- **Funktion**: Om en del av transaktionen misslyckas, ska hela transaktionen rullas tillbaka (undo). Detta garanterar att systemet inte hamnar i ett inkonsekvent tillstånd.

### 2. Consistency (Konsekvens)
- **Definition**: Databasen måste alltid övergå från ett konsistent tillstånd till ett annat konsistent tillstånd.
- **Funktion**: Det innebär att alla integritetsregler och begränsningar i databasen följs, vilket förhindrar korruption eller inkonsekventa data.

### 3. Isolation (Isolering)
- **Definition**: Samtidiga transaktioner ska inte påverka varandra.
- **Funktion**: Resultatet av en transaktion blir inte synligt för andra transaktioner förrän den är helt genomförd, vilket garanterar att parallella transaktioner inte stör varandra.

### 4. Durability (Beständighet)
- **Definition**: När en transaktion har genomförts, blir dess resultat permanenta.
- **Funktion**: Detta garanterar att resultatet inte förloras, även om ett systemfel inträffar efter att transaktionen slutförts.

---

Genom att följa ACID-principerna kan databashanteringssystem säkerställa att data alltid behandlas på ett pålitligt och konsekvent sätt, oavsett hur många operationer som sker samtidigt.