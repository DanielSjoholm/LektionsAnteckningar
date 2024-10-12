# Azure Styrning och Efterlevnad
**Azure styrning och efterlevnad** syftar till att hjälpa organisationer att hantera, övervaka och säkerställa att deras molnmiljö följer företagets regler och externa regelkrav. Genom verktyg som **Azure Policy**, **Microsoft Purview**, **resurslås** och **Service Trust-portalen** kan du kontrollera resurskonfigurationer, skydda data och upprätthålla säkerhets- och efterlevnadsstandarder i hela din Azure-miljö. Dessa verktyg säkerställer att resurser används korrekt, undviker oavsiktliga ändringar och följer nödvändiga säkerhetsbestämmelser.

## Microsoft Purview 
**Microsoft Purview** är en enhetlig datastyrnings- och övervakningslösning som hjälper organisationer att hantera och skydda sina data, oavsett var de befinner sig. Syftet med Microsoft Purview är att:

- **Tillhandahålla datastyrning**: Hjälper organisationer att katalogisera, spåra och hantera sina dataresurser på ett organiserat sätt, oavsett om de finns lokalt, i molnet eller i hybridmiljöer.
  
- **Öka insynen i data**: Ger en helhetsbild av dataflöden och möjliggör identifiering av känslig information med hjälp av dataupptäckt och klassificering.

- **Säkerställa efterlevnad**: Hjälper till att upprätthålla regelefterlevnad genom att spåra och kontrollera vem som har tillgång till data, samt säkerställa att de följer regler och standarder.

- **Förbättra datasäkerhet**: Genom att identifiera och klassificera känslig information kan organisationer skydda sina data och säkerställa att rätt åtkomstkontroller är på plats.

Microsoft Purview ger en omfattande plattform för att hantera datastyrning och säkerhet i hela datalandskapet.

## Microsoft Policy
**Azure Policy** är en tjänst i Azure som hjälper dig att skapa, tilldela och hantera principer för att säkerställa att dina resurser följer företagets standarder och efterlevnadskrav. Tjänsten gör det möjligt att automatisera regelefterlevnad, vilket minskar risken för manuella fel och säkerställer att alla resurser uppfyller definierade regler och policys.

### Viktiga funktioner i Azure Policy:

1. **Skapa och tillämpa principer**:
   - Azure Policy låter dig definiera och tilldela principer som styr resurskonfigurationer, vilket säkerställer att dina resurser överensstämmer med företagsstandarder och säkerhetskrav.
   
2. **Utvärdering och övervakning**:
   - Azure Policy granskar kontinuerligt dina resurser och markerar de som inte följer definierade principer. Detta hjälper dig att upptäcka potentiella avvikelser snabbt och agera innan de blir problematiska.

3. **Förebyggande åtgärder**:
   - Azure Policy kan hindra skapandet av icke-kompatibla resurser, vilket säkerställer att nya resurser som deployas alltid uppfyller dina krav. Om en resurs bryter mot en policy kan Azure automatiskt förhindra dess skapande.

4. **Automatiska korrigeringar**:
   - I vissa fall kan Azure Policy automatiskt åtgärda resurser som inte uppfyller policyn. Till exempel, om en resurs saknar en specifik tagg kan Azure Policy tillämpa den taggen automatiskt.

5. **Hierarkisk tillämpning**:
   - Principer kan sättas på olika nivåer, som resursgrupper, prenumerationer eller specifika resurser, och de ärvs nedåt i hierarkin. Detta gör det enkelt att styra hela miljön med centralt definierade principer.

### Azure Policy Initiativ:

- Ett **initiativ** är en grupp av relaterade principer som hanteras tillsammans för att uppnå ett större efterlevnadsmål. Exempelvis kan ett initiativ i **Azure Security Center** bestå av principer för övervakning av okrypterade databaser, saknat slutpunktsskydd, och säkerhetsproblem på servrar. Initiativet möjliggör en övergripande säkerhetspolicy med flera underliggande kontroller.

Azure Policy integreras även med **Azure DevOps** för att säkerställa att principer efterlevs genom hela utvecklings- och distributionsprocessen, från kontinuerlig integrering till distribution.

### Sammanfattning:
**Azure Policy** ger företag möjligheten att säkerställa att deras Azure-miljöer följer standarder och säkerhetskrav genom att skapa, tilldela och hantera principer. Genom att använda initiativ kan du gruppera flera relaterade regler och enkelt spåra efterlevnaden över tid.

## Resurslås
**Resurslås** i Azure används för att skydda resurser från att oavsiktligt tas bort eller ändras, även av användare med behörigheter. Detta skapar en extra säkerhetsnivå utöver rollbaserad åtkomstkontroll (RBAC), vilket säkerställer att viktiga molnresurser inte oavsiktligt påverkas.

### Viktiga funktioner i resurslås:

1. **Skydd mot oavsiktliga ändringar eller borttagningar**:
   - Även användare med rätt behörigheter kan av misstag ta bort eller ändra resurser. Resurslås hindrar detta beroende på vilken typ av lås som tillämpas.

2. **Tillämpning på flera nivåer**:
   - Resurslås kan appliceras på enskilda resurser, hela resursgrupper eller på hela prenumerationen. Låsen ärvs, så om du låser en resursgrupp tillämpas låset på alla resurser inom den gruppen.

### Typer av resurslås:

1. **Delete (Ta bort)**:
   - Användare kan fortfarande läsa och ändra resursen men kan inte ta bort den.

2. **ReadOnly (Skrivskyddad)**:
   - Användare kan endast läsa resursen, men kan inte ändra eller ta bort den. Detta liknar att begränsa behörigheter till de som tillhör rollen Läsare.

### Hantering av resurslås:

- Du kan hantera resurslås via **Azure-portalen**, **PowerShell**, **Azure CLI**, eller med en **Azure Resource Manager-mall**. Lås visas och hanteras från resursens inställningar.

### Ändring eller borttagning av en låst resurs:

- För att ändra en låst resurs måste låset först tas bort, vilket kräver en tvåstegsprocess. Resurslås gäller för alla, oavsett behörigheter, så även ägaren måste ta bort låset innan ändringar kan göras.

### Sammanfattning:
**Resurslås** i Azure säkerställer att kritiska resurser inte ändras eller tas bort av misstag genom att införa lås som skyddar resurser. Två typer av lås kan användas: **Delete** för att förhindra borttagning och **ReadOnly** för att förhindra både ändringar och borttagning.

## Service Trust-portalen
**Service Trust-portalen** är en plattform där Microsoft tillhandahåller information om säkerhet, sekretess och efterlevnadsmetoder relaterade till deras molntjänster. Syftet är att ge användare tillgång till dokumentation och verktyg som beskriver hur Microsoft skyddar kunddata och implementerar säkerhetskontroller.

Viktiga funktioner:
- **Åtkomst till efterlevnadsdokument**: Ger användare insikter om hur Microsoft uppfyller säkerhets- och sekretesskrav.
- **Mitt bibliotek**: Möjlighet att spara viktiga dokument och få uppdateringar när de ändras.
- **Autentisering**: Kräver inloggning med ett Microsoft Cloud Services-konto för åtkomst till vissa resurser.
