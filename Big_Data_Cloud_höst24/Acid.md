# Vad är acid?

## ACID står för **Atomicity**, **Consistency**, **Isolation** och **Durability**. Det är en uppsättning egenskaper som säkerställer pålitliga transaktioner i databassystem:

1. **Atomicity**: En transaktion måste vara "allt eller inget". Antingen utförs alla operationer i transaktionen, eller så återställs allting till det ursprungliga tillståndet om något går fel.
  
2. **Consistency**: En transaktion måste föra databasen från ett giltigt tillstånd till ett annat. Regler och restriktioner som gäller för databasen måste alltid upprätthållas.

3. **Isolation**: Transaktioner ska inte påverka varandra. En pågående transaktion ska inte kunna se effekterna av en annan transaktion förrän den är färdig.

4. **Durability**: När en transaktion har genomförts och bekräftats ska dess ändringar vara permanenta, även vid strömavbrott eller systemkrasch.