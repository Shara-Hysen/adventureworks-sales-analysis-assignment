# AdventureWorks-sales-analysis 

## Beskrivning  

Detta projekt analyserar försäljningsdata från AdventureWorks med fokus på regional försäljningsoptimering. Syftet är att undersöka skillnader i försäljning mellan regioner, analysera produktkategorier och kundtyper samt identifiera säsongsmönster. Analysen inkluderar SQL-aggregationer, pandas-bearbetning, pivot-tabeller och visualiseringar som stapeldiagram, heatmaps och linjediagram för att ge insikter som kan stödja affärsbeslut och strategiska åtgärder per region.

## Innehåll  

1. **Grundläggande visualiseringar (7 delar)**  
Varje del innehåller en affärsfråga, en tydlig plan, SQL-fråga, visualisering och analys.
2. **Djupanalys - Regional försäljningsoptimering**  
Innehåller affärsfrågor, planer, SQL-frågor, visualiseringar och djupare analys.
3. **Reflektion och slutsats**  
Redogör för valda metoder och visualiseringar, samt utmaningar och lärdomar från arbetet.  
Ger rekommendationer för företaget baserat på analyserna.

## Filstruktur

- Data/ – SQL-frågor som används för att hämta och aggregera data
- analysis.ipynb – Jupyter Notebook med analys, visualiseringar och slutsatser
- README.md – Projektbeskrivning
- .gitignore – Ignorerade filer för Git
- requirements.txt – Lista över Pythonpaket som behövs för att köra projektet

## Miljö

Python version 3.13.7

## Installation och körning  

1. **Klona repo:**  
git clone https://github.com/Shara-Hysen/adventureworks-sales-analysis-assignment.git

2. **Skapa och aktivera virtuell miljö:**    
python -m venv .venv    
.venv\Scripts\Activate # Windows    
source .venv/bin/activate # Linux/macOS   

3. **Installera beroenden:**  
pip install -r requirements.txt  

4. **Kör Jupyter Notebook:**    
jupyter notebook analysis.ipynb  


## Källor  

Projektet är utvecklat som en examinationsuppgift med utgångspunkt i kursmaterial och laborationer, med stöd av AI-verktyg för kodoptimering