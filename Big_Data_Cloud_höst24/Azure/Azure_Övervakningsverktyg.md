# Azure Övervakningsverktyg

## Azure Advisor
**Azure Advisor** är ett verktyg som utvärderar dina Azure-resurser och ger rekommendationer för att förbättra tillförlitlighet, säkerhet, prestanda, operationell effektivitet och minska kostnaderna. Det erbjuder anpassade åtgärdsförslag direkt i Azure-portalen, där du kan filtrera rekommendationerna efter prenumerationer, resursgrupper eller tjänster.

Rekommendationerna delas upp i fem kategorier:
- **Tillförlitlighet**: För att säkerställa kontinuitet i affärskritiska applikationer.
- **Säkerhet**: Identifierar hot och sårbarheter.
- **Prestanda**: För att förbättra applikationshastighet.
- **Operational Excellence**: För bättre hantering och effektivitet.
- **Kostnadsoptimering**: För att minska utgifter i Azure.

**Azure Service Health** hjälper dig att hålla koll på statusen för både globala Azure-tjänster och dina specifika resurser. Det består av tre delar:

## Azure Status
1. **Azure Status**: Ger en global översikt över statusen för Azure-tjänster och incidenter i alla regioner.
2. **Service Health**: Fokuserar på de tjänster och regioner du använder, och varnar dig för avbrott, planerat underhåll och andra problem som påverkar dina resurser.
3. **Resource Health**: Ger en skräddarsydd vy över hälsan för dina specifika Azure-resurser och varnar dig för problem med tillgängligheten.

Azure Service Health erbjuder en komplett bild av hälsotillståndet för dina resurser och kan konfigureras för att skicka aviseringar om problem eller förändringar.

## Azure Monitor
**Azure Monitor** är en omfattande plattform som övervakar och analyserar data från Azure-resurser, lokala resurser och resurser i andra moln. Det hjälper dig att övervaka prestanda och tillgänglighet i realtid, analysera historiska data och agera på kritiska händelser.

### Viktiga komponenter:

1. **Azure Log Analytics**:
   - Verktyget för att köra loggfrågor på insamlad data från Azure Monitor.
   - Stödjer både enkla och komplexa frågor för att sortera, filtrera och analysera data.
   - Kan användas för interaktiva analyser eller integreras med aviseringar för att utlösa åtgärder.

2. **Azure Monitor-aviseringar**:
   - Automatiska varningar som skickas när ett tröskelvärde överskrids, t.ex. hög CPU-användning.
   - Baserade på mått eller loggar, vilket ger realtidsövervakning och komplex logik för olika scenarier.
   - Använder åtgärdsgrupper för att skicka meddelanden via e-post, sms, eller utlösa korrigerande åtgärder.

3. **Application Insights**:
   - En del av Azure Monitor som övervakar webbapplikationer.
   - Samlar in data om begärandefrekvenser, svarstider, felfrekvenser och användarbeteenden.
   - Stöder olika programmeringsspråk (t.ex. C#, Java, Node.js) och kan även simulera trafik för kontinuerlig övervakning.

Azure Monitor ger en centraliserad lösning för att samla in, analysera och agera på övervakningsdata, vilket gör det möjligt att optimera prestanda och tillgänglighet i hela din infrastruktur.