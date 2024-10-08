# Azure Fundamentals

Azure är Microsofts molnplattform som erbjuder en mängd olika tjänster som datalagring, beräkning och nätverkshantering. Med Azure kan företag och utvecklare bygga, testa, distribuera och hantera applikationer och tjänster genom Microsofts datacenter över hela världen.

## Innehåll

1. [Vad är Azure?](#vad-är-azure)
2. [Azure-tjänster](#azure-tjänster)
3. [Azure Regions och Tillgänglighet](#azure-regions-och-tillgänglighet)
4. [Säkerhet och Efterlevnad](#säkerhet-och-efterlevnad)
5. [Betalningsmodeller](#betalningsmodeller)
6. [Skalbarhet och Flexibilitet](#skalbarhet-och-flexibilitet)
7. [Azure Portal](#azure-portal)
8. [Vanliga Användningsområden](#vanliga-användningsområden)

## Vad är Azure?

Azure är en flexibel och skalbar molnplattform som erbjuder en mängd olika tjänster, från virtualisering och databearbetning till AI, maskininlärning och IoT. Plattformen kan användas för att driva olika typer av arbetsbelastningar, från små applikationer till stora företagslösningar.

### Fördelar med Azure:
- **Flexibilitet**: Stöd för flera programmeringsspråk, ramverk och operativsystem.
- **Skalbarhet**: Möjlighet att skala upp eller ner efter behov.
- **Global Tillgänglighet**: Datacenter runt om i världen för att säkerställa minimal latens och hög tillgänglighet.
- **Betalning per användning**: Du betalar endast för de resurser du använder.

## Azure-tjänster

### 1. **Beräkning (Compute)**
   Azure erbjuder virtuella maskiner (VMs), containrar och plattformstjänster (PaaS) för att hantera och distribuera applikationer.
   
   - **Azure Virtual Machines**: Virtuella maskiner som körs i molnet.
   - **Azure Kubernetes Service (AKS)**: För att hantera och distribuera containrar.

### 2. **Lagring**
   Molnlagring som erbjuder hög tillgänglighet, säkerhet och replikering.
   
   - **Azure Blob Storage**: Objektlagring för ostrukturerad data.
   - **Azure Files**: Delade filer med SMB-protokoll för flera användare.

### 3. **Databaser**
   Fullt hanterade databaslösningar som stöder både SQL och NoSQL.
   
   - **Azure SQL Database**: En skalbar och fullständigt hanterad SQL-databas.
   - **Cosmos DB**: En globalt distribuerad NoSQL-databas.

### 4. **Nätverk**
   Nätverkstjänster som hjälper till att bygga säkra och pålitliga molnnätverk.
   
   - **Virtual Network (VNet)**: Skapa privata nätverk i Azure.
   - **Azure Load Balancer**: Distribuera trafik över flera resurser för att öka tillgängligheten.

### 5. **AI och Maskininlärning**
   Verktyg och tjänster för att integrera AI i applikationer och processer.
   
   - **Azure Machine Learning**: Skapa och träna maskininlärningsmodeller.
   - **Cognitive Services**: Fördefinierade API:er för ansiktsigenkänning, textanalys och mer.

## Azure Regions och Tillgänglighet

Azure erbjuder globala regioner där resurser distribueras och tjänster körs. Varje region består av minst ett datacenter, och vissa tjänster kan distribueras över flera regioner för att öka tillgängligheten.

- **Region**: Ett geografiskt område där Microsoft har ett eller flera datacenter.
- **Tillgänglighetszoner**: Fysiskt separerade datacenter i samma region som ger redundans.

### Fördelar med flera regioner:
- **Lägre latens**: Genom att välja en region nära användarna.
- **Bättre tillgänglighet**: Genom att distribuera tjänster över flera regioner och zoner.

## Säkerhet och Efterlevnad

Azure erbjuder omfattande säkerhetsfunktioner och verktyg för att skydda data och applikationer, inklusive kryptering, identitetshantering och nätverkssäkerhet.

### Viktiga Säkerhetsfunktioner:
- **Azure Active Directory (Azure AD)**: Identitetshantering och åtkomstkontroll.
- **Azure Security Center**: Övervaka och skydda Azure-tjänster.
- **Azure Key Vault**: Säker lagring av känsliga data som API-nycklar och lösenord.

Azure följer också globala standarder och efterlevnadskrav, vilket gör det lämpligt för företag som måste följa GDPR, HIPAA och andra regleringar.

## Betalningsmodeller

Azure erbjuder flexibel prissättning med flera betalningsmodeller:

1. **Betala per användning**: Betala bara för de resurser du använder, vilket minskar kostnaderna för oplanerad kapacitet.
2. **Förbetalda planer (Reserved Instances)**: Spara pengar genom att reservera kapacitet för längre perioder.
3. **Gratis nivå**: Tillgång till ett antal tjänster kostnadsfritt under en begränsad tid eller med begränsad kapacitet.

## Skalbarhet och Flexibilitet

Azure är designat för att skala efter behov, vilket gör det enkelt att hantera plötsliga förändringar i arbetsbelastningar. Resurser kan justeras automatiskt baserat på belastning, och du kan enkelt lägga till nya tjänster när behov uppstår.

### Viktiga Skalbarhetsfunktioner:
- **Autoscaling**: Resurser kan automatiskt skalas upp eller ner beroende på arbetsbelastning.
- **Elasticity**: Möjlighet att justera kapacitet och prestanda dynamiskt.

## Azure Portal

Azure Portal är en webbaserad konsol som gör det möjligt att hantera alla dina Azure-tjänster. Genom portalen kan användare skapa och övervaka resurser, hantera nätverk, konfigurera säkerhet, och analysera data i realtid.

- **Fördelar med Azure Portal**:
  - Enhetlig kontrollpanel för alla tjänster.
  - Realtidsövervakning och loggning.
  - Enkel integration med andra verktyg som PowerShell och CLI.

## Vanliga Användningsområden

Azure används av företag i alla storlekar och i olika branscher för en mängd olika scenarier:

1. **Backup och Återställning**: Molnbaserade lösningar för säkerhetskopiering och katastrofåterställning.
2. **Webbappar**: Hostning och hantering av skalbara webbapplikationer.
3. **DevOps**: Verktyg och plattformar för att automatisera utvecklings- och driftsprocesser.
4. **Big Data och Analyser**: Bearbeta stora mängder data och köra avancerade analyser med verktyg som Azure Synapse Analytics.

---

