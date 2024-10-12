# Azure Identitet och Säkerhet - Sammanfattning

Azure erbjuder omfattande tjänster för identitets- och säkerhetshantering, vilket gör det möjligt för organisationer att skydda sina resurser och hantera åtkomst på ett effektivt och säkert sätt. I denna modul har vi gått igenom de viktigaste koncepten och tjänsterna inom Azure identitets- och säkerhetshantering, inklusive autentisering, åtkomstkontroll och säkerhetsmodeller som Defense In Depth och Nolltillit.

## Grundläggande Funktioner inom Azure Identitet och Säkerhet

1. **Microsoft Entra ID (tidigare Azure AD)**
   - **Definition**: Microsoft Entra ID är Azures katalogtjänst för hantering av användaridentiteter och åtkomst till resurser.
   - **Funktion**: Entra ID tillhandahåller single sign-on (SSO), multifaktorautentisering (MFA), och integreras med tusentals SaaS-applikationer, vilket gör det enkelt att hantera användaridentiteter och säker åtkomst.

2. **Rollbaserad åtkomstkontroll (RBAC)**
   - **Definition**: RBAC gör det möjligt att tilldela användare och grupper specifika roller baserat på deras ansvarsområden.
   - **Funktion**: Genom RBAC kan administratörer styra åtkomst till resurser på ett detaljerat sätt och säkerställa att användare endast har tillgång till det de behöver.

3. **Autentiseringsmetoder**
   - **Definition**: Azure stödjer olika autentiseringsmetoder, inklusive lösenordsfri autentisering, SSO och MFA.
   - **Funktion**: Dessa metoder ökar säkerheten genom att minska beroendet av lösenord och möjliggöra starkare verifieringsmetoder för att säkerställa identiteten på användarna.

4. **Villkorsstyrd åtkomst**
   - **Definition**: En funktion som gör det möjligt att kontrollera åtkomst baserat på specifika villkor.
   - **Funktion**: Med villkorsstyrd åtkomst kan du ställa in regler som endast tillåter åtkomst baserat på enhetens status, plats eller applikationens känslighet.

## Säkerhetsmodeller och Principer

1. **Nolltillit (Zero Trust)**
   - **Definition**: En säkerhetsmodell som bygger på att alltid verifiera och aldrig lita på någon enhet eller användare, oavsett om de befinner sig inom eller utanför organisationens nätverk.
   - **Funktion**: Med Nolltillit krävs kontinuerlig autentisering och auktorisering för åtkomst till alla resurser, vilket skyddar mot interna och externa hot.

2. **Defense In Depth**
   - **Definition**: En säkerhetsstrategi som involverar flera lager av skyddsåtgärder för att minimera risker.
   - **Funktion**: Defense In Depth tillämpar olika försvarsåtgärder på varje lager av infrastruktur, vilket gör det svårare för hot att tränga igenom hela systemet.

3. **Microsoft Defender för molnet**
   - **Definition**: Ett verktyg som övervakar och skyddar Azure-miljöer genom att identifiera säkerhetshot och sårbarheter.
   - **Funktion**: Microsoft Defender för molnet ger rekommendationer för att förbättra säkerheten och hjälper till att skydda resurser från angrepp.

## Hantering av Externa Identiteter och Gäståtkomst

1. **Externa identiteter**
   - **Definition**: Externa identiteter tillåter användare från andra organisationer att få åtkomst till dina Azure-resurser.
   - **Funktion**: Du kan använda externa identiteter för att bjuda in och hantera åtkomst för gästanvändare utan att ge dem full åtkomst till interna resurser.

2. **Gäståtkomst**
   - **Definition**: En metod för att ge externa användare kontrollerad åtkomst till specifika resurser.
   - **Funktion**: Gäståtkomst används för att samarbeta säkert med externa partners eller användare samtidigt som du behåller kontrollen över känsliga data.

## Verktyg och Tjänster för Säkerhetshantering

1. **Azure Security Center**
   - **Definition**: Ett enhetligt verktyg för att övervaka säkerheten hos dina Azure-resurser.
   - **Funktion**: Security Center erbjuder realtidsinsikter i säkerhetsstatus och ger rekommendationer för att förbättra säkerhetskonfigurationer.

2. **Azure Monitor**
   - **Definition**: Ett övervakningsverktyg som samlar in loggar och telemetridata från Azure-resurser.
   - **Funktion**: Med Azure Monitor kan du analysera prestanda, identifiera säkerhetsrisker och svara på incidenter i realtid.

## Sammanfattning:
Denna modul har gett en grundläggande förståelse för **Azure identitets- och säkerhetstjänster**, inklusive hur du hanterar användaridentiteter, kontrollerar åtkomst, och skyddar dina resurser med avancerade säkerhetsmodeller som **Nolltillit** och **Defense In Depth**. Du har också lärt dig om verktyg som **Azure Security Center** och **Microsoft Defender för molnet**, som hjälper till att övervaka och stärka säkerheten i din Azure-miljö.