# AWS Well-Architected Framework Design Principles

## 1. Operational Excellence
Fokus på att förbättra och optimera driften av system genom automatisering, övervakning och kontinuerliga förbättringar.

- **Automatisering**: Automatisera uppgifter för att minska risken för mänskliga fel och öka effektiviteten.
- **Övervakning och loggning**: Implementera system för att övervaka drift och samla in loggar för att identifiera och åtgärda problem snabbt.
- **Iterativa förbättringar**: Analysera driftdata och implementera förbättringar regelbundet för att optimera systemets prestanda.

## 2. Security
Skydda data, system och tillgångar genom att implementera säkerhetsprinciper som datakryptering, åtkomstkontroll och övervakning av hot.

- **Principen om minst privilegium**: Ge användare och system endast den minsta nödvändiga åtkomsten för att minska risken för säkerhetsproblem.
- **Datakryptering**: Kryptera data i transit och i vila för att skydda känslig information.
- **Incidenthantering**: Implementera planer för att snabbt kunna identifiera, rapportera och åtgärda säkerhetsincidenter.

## 3. Reliability
Säkerställa att system kan återhämta sig från fel och fortsätta fungera utan avbrott genom backup, redundans och felhantering.

- **Failover och redundans**: Använd redundanta komponenter för att säkerställa att systemet kan fortsätta fungera även om en del av systemet misslyckas.
- **Backup och återställning**: Säkerhetskopiera data regelbundet och ha en plan för att återställa data snabbt efter ett fel.
- **Elasticitet**: Skapa system som kan skala upp eller ner dynamiskt beroende på efterfrågan för att bibehålla tillgänglighet.

## 4. Performance Efficiency
Optimera resursanvändningen för att bibehålla prestanda över tid genom att skala rätt, övervaka och använda effektiva teknologier.

- **Rätt storlek på resurser**: Välj rätt typ och storlek av resurser (som instanser och databaser) för att hantera arbetsbelastningen effektivt.
- **Dynamisk skalning**: Använd autoskalning för att öka eller minska resurser baserat på efterfrågan, vilket förbättrar prestandan och kostnadseffektiviteten.
- **Testa och övervaka**: Testa regelbundet prestanda och använd övervakning för att identifiera flaskhalsar och optimera resursanvändningen.

## 5. Cost Optimization
Minimera kostnader genom att undvika onödiga resurser och optimera användningen av molntjänster för att spara pengar där det är möjligt.

- **Rätt prissättning**: Välj rätt prismodell (t.ex. on-demand, reserverade instanser) baserat på dina arbetsbelastningar för att minska kostnader.
- **Undvik outnyttjade resurser**: Identifiera och stäng av resurser som inte används, t.ex. överdimensionerade instanser eller tomgångsdatabaser.
- **Kostnadsspårning**: Använd verktyg för kostnadsspårning och budgetering för att övervaka och optimera molnutgifterna kontinuerligt.

## 1. AWS Well-Architected Framework och de fem pelarna
Beskriver en struktur för att bygga pålitliga, säkra, effektiva och kostnadseffektiva system på AWS. De fem pelarna är operativ excellens, säkerhet, tillförlitlighet, prestandaeffektivitet och kostnadsoptimering.

## 2. Designprinciper för AWS Well-Architected Framework
Hjälper utvecklare att tänka kring bästa praxis och vägledning när de utformar molnapplikationer och arkitekturer för att förbättra systemens tillförlitlighet, säkerhet och prestanda.

## 3. Vikten av tillförlitlighet och hög tillgänglighet
Betonar vikten av att system är tillgängliga när de behövs och att de kan återhämta sig från fel snabbt, vilket är avgörande för att säkerställa användarvänlighet och affärskontinuitet.

## 4. Hur AWS Trusted Advisor hjälper kunder
AWS Trusted Advisor ger rekommendationer för att optimera AWS-miljön, minska kostnader, förbättra prestanda och öka säkerheten.

## 5. Tolka rekommendationer från AWS Trusted Advisor
Förklarar hur man tolkar de rekommendationer som Trusted Advisor ger för att förbättra systemens prestanda, säkerhet och kostnadseffektivitet.