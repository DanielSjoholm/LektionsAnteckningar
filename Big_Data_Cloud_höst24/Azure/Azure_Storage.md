# Azure Storage - Sammanfattning

Azure Storage erbjuder en kraftfull uppsättning molnbaserade lagringstjänster som gör det möjligt att lagra, hantera och flytta data på ett säkert och skalbart sätt. Under denna modul har vi gått igenom de viktigaste koncepten och verktygen inom Azure Storage, inklusive olika lagringstyper, redundansalternativ och migreringsmetoder för att enkelt flytta data både till och inom Azure.

## Grundläggande Funktioner i Azure Storage

1. **Azure Storage-konto**
   - **Definition**: Ett Azure Storage-konto fungerar som en central åtkomstpunkt för alla lagringstjänster som erbjuds av Azure.
   - **Funktion**: Genom att skapa ett lagringskonto kan du lagra olika typer av data såsom blobar, filer, köer och tabeller.

2. **Lagringsnivåer**
   - **Definition**: Lagringsnivåer (tiering) låter dig välja rätt kostnads- och prestandabalans för olika typer av data.
   - **Funktion**: Nivåer som **Hot**, **Cool**, och **Archive** erbjuder flexibilitet beroende på hur ofta du behöver åtkomst till dina data och hur länge du vill lagra dem.

3. **Redundansalternativ**
   - **Definition**: Azure erbjuder olika redundansalternativ för att säkerställa hög tillgänglighet och dataskydd.
   - **Funktion**: Alternativ inkluderar **LRS (Local Redundant Storage)**, **GRS (Geo-Redundant Storage)**, och **ZRS (Zone-Redundant Storage)**. Dessa alternativ avgör hur många kopior av dina data som lagras och var de replikeras.

4. **Lagringskontoalternativ och lagringstyper**
   - **Definition**: Det finns flera typer av lagringskonton, såsom **Standard** och **Premium**, beroende på prestandakrav.
   - **Funktion**: Du kan välja olika lagringstyper, inklusive blob-lagring, fil-lagring, kö-lagring och tabell-lagring, för att passa specifika arbetsbelastningar.

## Verktyg för att flytta och migrera filer

1. **AzCopy**
   - **Definition**: Ett kommandoradsverktyg för att kopiera data till och från Azure Storage.
   - **Funktion**: AzCopy erbjuder ett enkelt sätt att snabbt flytta stora mängder data till Azure Storage.

2. **Azure Storage Explorer**
   - **Definition**: Ett grafiskt användargränssnitt för att hantera och bläddra i dina Azure-lagringskonton.
   - **Funktion**: Azure Storage Explorer gör det enkelt att ladda upp, ladda ner och hantera filer i dina blobar, filer och andra lagringstjänster.

3. **Azure File Sync**
   - **Definition**: En tjänst som synkroniserar filer mellan lokala filservrar och Azure.
   - **Funktion**: Gör det möjligt för organisationer att hålla lokala kopior av filer synkroniserade med Azure och använda Azure som ett molnbaserat filarkiv.

## Migreringsalternativ

1. **Azure Migrate**
   - **Definition**: En tjänst som hjälper till med att migrera lokala arbetsbelastningar till Azure.
   - **Funktion**: Azure Migrate tillhandahåller verktyg för att planera, bedöma och flytta både virtuella maskiner och databaser till Azure.

2. **Azure Data Box**
   - **Definition**: En fysisk enhet som används för att flytta stora mängder data till Azure.
   - **Funktion**: Azure Data Box möjliggör snabb dataöverföring genom att fysiskt flytta lagringsenheten från kunden till Azure, vilket är särskilt användbart när dataöverföring via nätverket skulle ta för lång tid.

### Sammanfattning:
I denna modul har du fått en översikt över **Azure Storage-tjänsterna** och de olika verktygen och metoderna som finns för att hantera och flytta data inom Azure. Genom att förstå hur du kan utnyttja olika lagringskonton, redundansalternativ och migreringsverktyg som AzCopy och Azure Migrate, har du nu de kunskaper som krävs för att planera och genomföra en effektiv datahantering och migrering till Azure.