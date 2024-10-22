# Serverless Compute – Lektion 21/10

## Vad är Serverless Compute?
Serverless Compute är en molntjänst där du kan köra kod utan att hantera servrar. Leverantören sköter infrastrukturen och resursallokeringen automatiskt baserat på efterfrågan. Serverless är särskilt användbart för applikationer med varierande belastning eller kortlivade processer.

### Exempel på serverless-tjänster:
1. **Azure Functions** (Microsoft)
2. **AWS Lambda** (Amazon)
3. **Google Cloud Functions** (Google)

### Serverless-funktioner:
- **Auto-skalning**: Skalar automatiskt upp eller ner baserat på behov.
- **Ingen serverhantering**: Du behöver inte hantera eller underhålla några servrar.
- **Betala per användning**: Du betalar endast för den tid som koden körs, vilket kan ge kostnadsbesparingar vid oregelbunden användning.

## Vanliga frågeställningar kring Serverless Compute:

### 1. Kallstart:
- **Problem**: Första gången en funktion anropas efter en inaktiv period kan det ta längre tid att starta upp, vilket leder till fördröjningar.
- **Lösning**: Optimering genom att hålla funktioner varma (t.ex. med schemalagda triggers).

### 2. Begränsad Kontroll över infrastrukturen:
- **Problem**: Mindre kontroll över underliggande infrastruktur jämfört med traditionella servrar.
- **Lösning**: Anpassa applikationen efter tjänstens begränsningar och undvik att kräva specifik serverkonfiguration.

### 3. Komplexa debuggingscenarier:
- **Problem**: Debugging kan vara svårare då du inte har direkt tillgång till servern och hela stacken.
- **Lösning**: Använd loggverktyg och distribuerade spårningslösningar för att identifiera problem.

### 4. Vendor Lock-in:
- **Problem**: Att vara beroende av en specifik leverantör kan leda till svårigheter att migrera till andra plattformar.
- **Lösning**: Designa applikationen så plattformsoberoende som möjligt (t.ex. använd containrar eller abstraktionslager).

### 5. Begränsningar i exekveringstid:
- **Problem**: Många serverless-plattformar har max exekveringstid för en funktion, vanligtvis 15 minuter.
- **Lösning**: Dela upp stora uppgifter i mindre funktioner eller använd andra molntjänster för långvariga processer.

## Serverless-tjänster på Azure och AWS:

### Azure:
1. **Azure Functions** – För att köra serverless-applikationer baserat på händelser eller tidsinställningar.
2. **Azure Logic Apps** – Automatisera arbetsflöden och integrera applikationer med minimal kodning.

### AWS:
1. **AWS Lambda** – Kör funktioner på begäran utan att hantera servrar.
2. **AWS Step Functions** – Koordinera flera Lambda-funktioner och tjänster till serverless arbetsflöden.

## Fördelar med Serverless Compute:
- **Kostnadseffektiv**: Betala endast för de resurser som används.
- **Hög skalbarhet**: Skalar automatiskt för att möta behovet.
- **Snabb utveckling**: Du kan fokusera på kod och funktionalitet snarare än infrastruktur.

## Vanliga arbetsområden för serverless-tjänster

1. **API-backend-tjänster för web- och mobilapplikationer**  
   Hantering av backend-funktioner som behövs för att stötta applikationer på webben och mobiler.

2. **Databehandling och transformation**  
   Omvandling och bearbetning av data för att möta specifika behov.

3. **Triggers för molnhändelser**  
   Automatisering som reagerar på händelser i molnet, som datalagring och IoT.

4. **Automatisering av arbetsflöden och schemalagda uppgifter**  
   Effektivisering av arbetsflöden genom schemaläggning och automatisering.

## Sammanfattning av serverless-tjänster


- **Serverless computing möjliggör snabbare och mer kostnadseffektiv utveckling.**
  
- **Eliminera hanteringen av infrastruktur och fokusera på kod.**
  
- **Skalbarhet och enkel integration med molntjänster gör det till ett kraftfullt verktyg.**

Serverless Compute erbjuder en flexibel lösning där utvecklare kan köra kod utan att behöva hantera infrastrukturen. Med serverless kan applikationer automatiskt skala efter behov, vilket gör det kostnadseffektivt och idealiskt för applikationer med varierande belastning. Dock finns utmaningar som kallstart, begränsad kontroll över infrastrukturen, komplex debugging och vendor lock-in. Trots dessa nackdelar är fördelarna som auto-skalning, enkelhet och betalning per användning lockande för många organisationer.

Vanliga användningsområden inkluderar API-backend-tjänster, databehandling och transformation, triggers för molnhändelser samt automatisering av arbetsflöden och schemalagda uppgifter.