# Azure Compute - Sammanfattning

**Azure Compute** erbjuder skalbara beräkningstjänster som gör det möjligt för företag att köra applikationer, virtuella maskiner och containerbaserade arbetsbelastningar i molnet. Denna modul täcker de olika tjänsterna och funktionerna som Azure Compute tillhandahåller, samt metoder för att hantera och optimera beräkningsresurser i Azure.

## Grundläggande Funktioner i Azure Compute

1. **Virtuella Maskiner (VMs)**
   - **Definition**: Azure Virtuella Maskiner (VMs) är skalbara molnbaserade servrar som ger användarna full kontroll över operativsystem och konfiguration.
   - **Funktion**: Du kan välja bland en mängd olika operativsystem (Windows eller Linux) och storlekar för att passa dina specifika arbetsbelastningar. Virtuella maskiner är idealiska för att köra applikationer som kräver hög flexibilitet och kontroll.

2. **Azure App Service**
   - **Definition**: En plattform som låter dig bygga, distribuera och skala webbappar och API:er utan att behöva hantera infrastruktur.
   - **Funktion**: App Service är en **PaaS (Platform-as-a-Service)**-lösning som hanterar skalning, säkerhet och underhåll av applikationer automatiskt, vilket möjliggör snabbare utveckling och distribution av appar.

3. **Azure Kubernetes Service (AKS)**
   - **Definition**: En hanterad Kubernetes-tjänst som gör det enkelt att distribuera, hantera och skala containerbaserade applikationer med Kubernetes.
   - **Funktion**: Med AKS får du en färdighanterad Kubernetes-lösning, inklusive automatiska uppdateringar, övervakning och säkerhetsåtgärder för containerbaserade arbetsbelastningar.

4. **Azure Functions**
   - **Definition**: En serverlös beräkningstjänst där du kan köra kod utan att hantera servrar, vilket gör det möjligt att skala applikationer automatiskt.
   - **Funktion**: Med Azure Functions kan du köra små kodsegment ("funktioner") baserat på utlösare som HTTP-förfrågningar eller meddelanden, vilket gör det till en flexibel och kostnadseffektiv lösning för tillfälliga arbetsbelastningar.

5. **Azure Batch**
   - **Definition**: En tjänst som hanterar storskaliga batchbearbetningar och beräkningsjobb.
   - **Funktion**: Azure Batch tillhandahåller automatiserad skalning och schemaläggning av batchjobb, vilket gör det möjligt att bearbeta stora mängder data parallellt på flera virtuella maskiner.

## Verktyg och Metoder för Beräkningsoptimering

1. **Autoskalning**
   - **Definition**: Autoskalning är en funktion som gör att Azure Compute automatiskt kan skala upp eller ned beroende på arbetsbelastningen.
   - **Funktion**: Med autoskalning kan du optimera kostnader genom att endast använda beräkningsresurser när de behövs och automatiskt minska resurserna när belastningen minskar.

2. **Azure Virtual Machine Scale Sets**
   - **Definition**: En tjänst som låter dig hantera en grupp identiska virtuella maskiner som skalas baserat på arbetsbelastningens krav.
   - **Funktion**: Virtual Machine Scale Sets säkerställer att dina applikationer alltid har rätt mängd resurser genom att dynamiskt skala antalet VM-instanser som behövs.

3. **Azure DevTest Labs**
   - **Definition**: En tjänst som gör det enkelt att skapa utvecklings- och testmiljöer utan att överanvända resurser eller öka kostnaderna.
   - **Funktion**: Med DevTest Labs kan du skapa kostnadseffektiva testmiljöer och automatisera distributionen av testmaskiner.

## Säkerhet och Hantering

1. **Azure Security Center**
   - **Definition**: Ett enhetligt säkerhetshanteringssystem för att övervaka och skydda Azure-resurser.
   - **Funktion**: Security Center hjälper dig att identifiera hot och säkerhetsrisker, samt ger rekommendationer för att förbättra säkerheten för dina Azure Compute-resurser.

2. **Azure Monitor**
   - **Definition**: En övervakningstjänst som samlar in data från dina Azure-resurser och applikationer.
   - **Funktion**: Med Azure Monitor kan du spåra prestanda, identifiera problem och reagera på incidenter i realtid, vilket säkerställer att dina beräkningsresurser fungerar optimalt.

## Migreringsalternativ till Azure Compute

1. **Azure Migrate**
   - **Definition**: En tjänst som hjälper företag att bedöma och migrera sina on-premise arbetsbelastningar till Azure.
   - **Funktion**: Med Azure Migrate kan du identifiera vilka virtuella maskiner och applikationer som är bäst lämpade för att migreras till molnet och få rekommendationer för optimala resurser.

2. **Azure Site Recovery**
   - **Definition**: En tjänst för att skydda och replikera dina arbetsbelastningar mellan datacenter eller till Azure.
   - **Funktion**: Site Recovery säkerställer att dina applikationer och virtuella maskiner är skyddade vid driftstopp och kan snabbt återställas i molnet.

## Sammanfattning:
Denna modul har täckt grunderna i **Azure Compute** och de olika beräkningstjänster som finns tillgängliga för att skapa, distribuera och skala applikationer. Du har nu en förståelse för hur du kan optimera beräkningsresurser, använda autoskalning och hantera säkerhet i Azure. Dessutom har vi gått igenom de olika migreringsalternativen som **Azure Migrate** och **Azure Site Recovery**, vilka kan hjälpa företag att enkelt flytta sina arbetsbelastningar till Azure-molnet.