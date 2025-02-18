# Notes From YT series
 
https://www.youtube.com/watch?v=HPYUuBuq1Ns&list=PLuQSde7Xvu7DCRenR1otgxAplTtnzKO9e&ab_channel=TybulonAzure


### **Skillnad mellan OLTP och OLAP**  

| **Funktion** | **OLTP (Online Transaction Processing)** | **OLAP (Online Analytical Processing)** |
|-------------|---------------------------------|----------------------------------|
| **Syfte** | Hanterar transaktioner i realtid. | Analyserar stora mängder data för beslutsfattning. |
| **Datatyp** | Operativ data (t.ex. kundbeställningar, betalningar). | Historisk och aggregerad data (t.ex. försäljningstrender). |
| **Läs/skriv-förhållande** | Mycket skrivningar och uppdateringar. | Främst läsoperationer, komplexa frågor. |
| **Databasdesign** | Normaliserad (3NF) för att minimera redundans och optimera transaktioner. | Denormaliserad (stjärnschema, snöflingeschema) för att snabba upp frågor. |
| **Prestandakrav** | Låg latens, hög transaktionshastighet. | Optimerad för komplexa analysfrågor, stora dataset. |
| **Exempel på användning** | Banktransaktioner, e-handel, CRM-system. | Business Intelligence (BI), Data Warehousing, rapportering. |

---

### **Exempel på OLTP och OLAP-tjänster**  

#### **🔹 OLTP-tjänster (Transaktionsbaserade databaser)**
1. **Azure SQL Database** – Managed SQL-databas för transaktionsbaserade applikationer.  
2. **Amazon RDS (MySQL, PostgreSQL, SQL Server)** – Relationsdatabas för OLTP-applikationer.  
3. **Google Cloud Spanner** – Globalt distribuerad relationsdatabas för högtransaktionssystem.  
4. **Azure Cosmos DB** – Skalbar NoSQL-databas för realtidsapplikationer.  
5. **PostgreSQL / MySQL** – Öppen källkodsdatabaser vanliga inom OLTP.  

#### **🔹 OLAP-tjänster (Analys & Data Warehousing)**  
1. **Azure Synapse Analytics** – Data Warehouse-lösning för BI och analys.  
2. **Amazon Redshift** – Molnbaserad OLAP-databas för storskalig analys.  
3. **Google BigQuery** – Serverlös OLAP-tjänst för stora dataanalysuppgifter.  
4. **Snowflake** – Populär molnbaserad OLAP-lösning för dataanalys och BI.  
5. **SAP BW (Business Warehouse)** – Data Warehouse-lösning för affärsanalys.  

---

### **Sammanfattning**
- **OLTP = Realtid, transaktioner, relationsdatabaser.**  
- **OLAP = Storskalig analys, BI, Data Warehousing.**  
- **Azure SQL Database** (OLTP) vs **Azure Synapse Analytics** (OLAP) är ett bra exempel på skillnaden.  

---

### **Jämförelse: Relationellt Data Warehouse vs. Data Lake vs. Modernt Data Warehouse vs. Data Lakehouse**

| **Egenskap** | **Relationellt Data Warehouse** | **Data Lake** | **Modernt Data Warehouse** | **Data Lakehouse** |
|-------------|------------------|------------------|------------------|------------------|
| **Lagring** | Relationsdatabas (SQL-baserat) | Billig objektlagring (ADLS, S3, Hadoop) | Cloud-baserad DW + Data Lake-integration | ADLS Gen2, Delta Lake (struktur + semi-struktur + ostrukturerad data) |
| **Datamodell** | Stjärnschema/Snöflingeschema | Ingen formell modell, rådata | Kombinerar Data Warehouse & Data Lake | Kombinerar Data Lake & Warehouse-strategier |
| **Prestandaoptimering** | Indexering, partitionering, OLAP-kuber | Ingen direkt optimering, lagrar allt | Indexering, materialiserade vyer, autoskalning | Delta Lake, Z-ordering, Auto-Optimize |
| **Frågespråk** | SQL | Hadoop, Spark, Python, SQL | SQL | SQL + Spark SQL |
| **Analys** | OLAP, BI, rapportering | AI/ML, Big Data, IoT | OLAP, BI, AI/ML | OLAP, AI/ML, realtidsanalyser |
| **Typ av data** | Strukturerad | Ostrukturerad + semi-strukturerad | Strukturerad + semi-strukturerad | Strukturerad + Semi-strukturerad + Ostrukturerad |
| **Bearbetning** | ETL (Extract, Transform, Load) | ELT (Extract, Load, Transform) | ELT + realtidsbearbetning | ELT + realtidsbearbetning |
| **BI & Dashboards** | Power BI, Tableau, Looker | Kräver integration med annan tjänst | Power BI, Looker, Snowflake | Power BI, Databricks SQL, Unity Catalog |
| **AI & ML-stöd** | Begränsat | Starkt (Databricks, Spark) | Begränsat | Starkt (Delta Lake, Databricks, AI/ML) |
| **Flexibilitet & Skalbarhet** | Mindre flexibel, fast schema | Mycket flexibel, lagrar allt | Bättre skalbarhet än klassiskt DW | Mycket flexibel och skalbar |
| **Exempel på teknologier** | SQL Server, Teradata, Oracle DW | ADLS Gen2, Amazon S3, Hadoop | Azure Synapse, Snowflake, Google BigQuery | Databricks + ADLS Gen2 + Unity Catalog + Power BI |

---

### **Sammanfattning:**
✅ **Relationellt Data Warehouse** = Klassisk BI och OLAP, optimerat för strukturerad data.  
✅ **Data Lake** = Billig lagring för alla typer av data, bra för AI/ML och Big Data.  
✅ **Modernt Data Warehouse** = Cloud-baserad lösning som kombinerar DW och Data Lake.  
✅ **Data Lakehouse** = Hybridlösning som hanterar både BI, AI/ML och realtidsdata i ett system.  


### **Jämförelse: LRS vs. ZRS vs. GRS vs. GZRS i Azure Storage**

| **Egenskap**         | **LRS (Locally Redundant Storage)** | **ZRS (Zone-Redundant Storage)** | **GRS (Geo-Redundant Storage)** | **GZRS (Geo-Zone-Redundant Storage)** |
|----------------------|-----------------------------------|---------------------------------|---------------------------------|---------------------------------|
| **Lagringsplats**    | Enskilt datacenter inom en region | Flera tillgänglighetszoner i en region | Primär region + sekundär region | Flera zoner i primär region + sekundär region |
| **Redundans**       | 3 kopior inom ett datacenter      | 3 kopior fördelat på olika zoner | 3 kopior lokalt + 3 kopior i en annan region | 3 kopior i olika zoner + 3 kopior i en annan region |
| **Skydd mot fel**   | Hårdvarufel inom ett datacenter   | Zonfel inom en region           | Regionalt fel (men asynkron replikering) | Zonfel + regionalt fel (bättre än GRS) |
| **Failover**        | Ingen failover                    | Ingen failover                  | Microsoft-kontrollerad failover | Microsoft-kontrollerad failover |
| **Åtkomst till sekundära data** | Nej | Nej | Endast vid failover | Endast vid failover |
| **Användningsfall** | Lägsta kostnad, icke-kritiska data | Hög tillgänglighet inom en region | Skydd mot regionala fel, backup | Högsta tillgänglighet och skydd mot regionala fel |
| **Kostnad**         | Lägst                              | Högre än LRS                     | Dyrare än ZRS                   | Dyrast, men mest robust |


### **Skillnad mellan Azure SQL Database Single Database och Managed Instance**  

| **Funktion** | **Azure SQL Database (Single Database)** | **Azure SQL Managed Instance** |
|--------------|--------------------------------|--------------------------------|
| **Arkitektur** | En **enstaka** databas i en delad miljö | En **fullständig SQL Server-instans** i Azure |
| **Användningsområde** | Molnbaserade appar som kräver enskilda databaser | Migrering från lokal SQL Server till Azure |
| **SQL Server-kompatibilitet** | Begränsat stöd för SQL Server-funktioner | Nästan full kompatibilitet med SQL Server |
| **Automatiska uppdateringar** | Fullt hanterad med automatiska uppdateringar | Fullt hanterad men mer kontroll |
| **Funktioner som stöds** | Ingen **SQL Agent, Cross-DB Queries, CLR, Service Broker** | Stödjer **SQL Agent, Cross-DB Queries, CLR, Service Broker** |
| **Prestanda och skalbarhet** | Skalbar per databas (DTU eller vCore-modell) | Skalbar per instans (vCore-modell) |
| **Nätverk** | Publikt åtkomlig via **Azure Public Endpoint** | Kan använda **privat nätverk (VNet Integration)** |
| **Hantering av flera databaser** | En databas per instans | **Stödjer flera databaser** i samma instans |
| **Backup och återställning** | Automatiska säkerhetskopior, men ingen manuell **DB Restore med .bak** | **Stöd för native .bak backups** och fullständig återställning |
| **Användning av tredjepartsappar** | Begränsad kompatibilitet | Kan använda traditionella SQL Server-verktyg |
| **Licensiering** | Betalas per databas | Stöd för **"Bring Your Own License" (BYOL)** |

---

### **Vilken ska du välja?**
✅ **Välj Azure SQL Database (Single Database)** om du:
- Behöver **en enda, fristående databas** för en molnbaserad applikation.  
- Vill ha **enkel skalbarhet** och hantering utan komplexa inställningar.  
- **Inte behöver funktioner som SQL Agent, cross-database queries eller privat nätverk**.  

✅ **Välj Azure SQL Managed Instance** om du:
- Vill **migrera en befintlig SQL Server-instans** till Azure utan att ändra mycket i koden.  
- **Behöver flera databaser i samma instans** och funktioner som **SQL Agent och Cross-DB Queries**.  
- Vill ha **bättre nätverksintegration** (VNet, Hybrid-miljöer, privat anslutning).  

🚀 **Sammanfattning:**  
- **Single Database** = Lättanvänd, molnoptimerad lösning för enskilda databaser.  
- **Managed Instance** = Full SQL Server-upplevelse i Azure för företag och migreringar.

**Slowly Changing Dimensions (SCD)** är en metod för att hantera förändringar i dimensionstabeller i en **datamodell** (vanligtvis i ett **data warehouse**). Det finns tre huvudsakliga typer:

---

### **🔹 SCD Type 1 – Överskrivning av historik**
- **Beskrivning**: Uppdaterar värdet direkt utan att behålla någon historik.  
- **När används det?**: När **historik inte är viktig**, och endast det senaste värdet behövs.  
- **Exempel**:  
  - En kund ändrar sin **adress**, och den gamla adressen ersätts direkt.
  - Tabell före ändring:  
    | Customer_ID | Name  | Address       |
    |------------|-------|--------------|
    | 1          | Anna  | Stockholm    |
  - Tabell efter ändring:  
    | Customer_ID | Name  | Address       |
    |------------|-------|--------------|
    | 1          | Anna  | Göteborg     |  

---

### **🔹 SCD Type 2 – Bevarar historik med versionering**
- **Beskrivning**: Skapar en ny rad i tabellen med en **tidsstämpel eller versionsnummer** för att behålla historik.  
- **När används det?**: När det är **viktigt att spåra förändringar över tid**.  
- **Exempel**:  
  - En kund flyttar till en ny adress, men vi vill behålla den gamla för historik.  
  - Tabell före ändring:  
    | Customer_ID | Name  | Address    | Start_Date | End_Date  | Is_Current |
    |------------|-------|------------|------------|------------|------------|
    | 1          | Anna  | Stockholm  | 2023-01-01 | NULL       | Yes        |
  - Tabell efter ändring:  
    | Customer_Key | Customer_ID | Name  | Address   | Start_Date  | End_Date   | Is_Current |
    |-------------|------------|-------|-----------|------------|------------|------------|
    | 1           | 1          | Anna  | Stockholm | 2023-01-01 | 2024-02-01 | No         |
    | 2           | 1          | Anna  | Göteborg  | 2024-02-01 | NULL       | Yes        |

---

### **🔹 SCD Type 3 – Bevarar endast den senaste historiken**
- **Beskrivning**: Lägger till en **extra kolumn** för att lagra den tidigare versionen av fältet.  
- **När används det?**: När endast **den senaste förändringen är relevant**, men full historik inte behövs.  
- **Exempel**:  
  - En kund flyttar och vi vill behålla **både nuvarande och föregående adress**, men inte äldre historik.  
  - Tabell före ändring:  
    | Customer_ID | Name  | Current_Address | Previous_Address |
    |------------|-------|----------------|-----------------|
    | 1          | Anna  | Stockholm      | NULL            |
  - Tabell efter ändring:  
    | Customer_ID | Name  | Current_Address | Previous_Address |
    |------------|-------|----------------|-----------------|
    | 1          | Anna  | Göteborg       | Stockholm       |

---

### **🔹 Sammanfattning**
| Typ  | Hur hanteras förändringar? | Fördelar | Nackdelar |
|------|----------------------|------------|------------|
| **SCD Type 1** | Ersätter gamla värden | Enkel, ingen extra lagring | Ingen historik bevaras |
| **SCD Type 2** | Skapar en ny rad med datum/version | Full historik bevaras | Kräver mer lagring och hantering |
| **SCD Type 3** | Lägger till en extra kolumn för föregående värde | Enkel att implementera, bevarar viss historik | Begränsad historik (endast senaste ändringen) |

---

**Vilken SCD-typ ska jag använda?**  
✅ **Type 1** – När **historik inte är viktig** och endast senaste värdet behövs.  
✅ **Type 2** – När **full historik krävs**, t.ex. spårning av kundens adresser över tid.  
✅ **Type 3** – När **endast den senaste ändringen är viktig**, t.ex. vid senaste och föregående kundkategori.


Här är den korrigerade tabellen med en tydligare beskrivning i sista rutan:

| **Typ av fönster**    | **Beskrivning** | **Överlappning?** | **Exempel (5 min fönster, start kl. 12:00)** |
|-----------------------|----------------|------------------|----------------------------------|
| **Tumbling Window**  | Fasta tidsintervall utan överlapp. Varje händelse tillhör exakt ett fönster. | ❌ Nej | 12:00–12:05, 12:05–12:10, 12:10–12:15 |
| **Hopping Window**   | Fasta tidsintervall **med överlapp**. Man definierar en "hop size" (hur ofta ett nytt fönster startar). | ✅ Ja | Om hop size = 2 min: 12:00–12:05, 12:02–12:07, 12:04–12:09 |
| **Sliding Window**   | Ett nytt fönster skapas **när en ny händelse inträffar** och varar en viss tid. | ✅ Ja | Om en händelse inträffar kl. 12:03 och fönstret är 5 min → 12:03–12:08 |
| **Session Window**   | Dynamiska fönster som baseras på **inaktivitet** mellan händelser. Ett nytt fönster skapas när en ny aktivitet börjar. | ❌ Nej (men fönsterstorleken varierar) | Om aktivitet sker kl. **12:00–12:03** och nästa aktivitet börjar kl. **12:07**, skapas två session-fönster:<br> 🔹 **Fönster 1:** 12:00–12:03 *(stängs pga. inaktivitet)*<br> 🔹 **Fönster 2:** 12:07 och framåt *(fortsätter så länge ny aktivitet sker inom session-timeout)* |

---

### **Sammanfattning**
- **Tumbling** → Fasta fönster, ingen överlapp.  
- **Hopping** → Fasta fönster, men kan överlappa.  
- **Sliding** → Skapas när en ny händelse sker, varar en viss tid.  
- **Session** → Dynamiska fönster baserade på aktivitet/inaktivitet.