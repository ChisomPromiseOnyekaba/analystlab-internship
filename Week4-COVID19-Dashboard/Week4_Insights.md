# Global COVID-19 Dashboard
## Week 4 — Data Visualization & Dashboarding
### AnalystLab Africa Internship

---

## Slide 1 — Project Title
**Global COVID-19 Dashboard**
Tool: Tableau Public
Dataset: Johns Hopkins University COVID-19 Time Series Data
Period: January 2020 – March 2023

---

## Slide 2 — Dataset Overview
- Source: Johns Hopkins University CSSE GitHub Repository
- 3 datasets merged: Confirmed, Deaths, Recovered
- 330,327 rows × 9 columns after reshaping with Python
- Covers 289 countries and regions
- Date range: 22 January 2020 – 9 March 2023

---

## Slide 3 — Business Problem
COVID-19 created an unprecedented global health crisis.
Decision-makers needed real-time visibility into:
- How fast was the virus spreading?
- Which countries were most affected?
- How did death rates compare across countries?
- When did major waves occur?

---

## Slide 4 — KPIs Defined
| KPI | Value |
|-----|-------|
| Total Confirmed Cases | 676M+ |
| Total Deaths | 6.8M+ |
| Total Recovered | 627M+ |
| Peak Daily New Cases | 4M+ (Jan 2022) |
| Highest Death Rate | Peru (6%+) |
| Most Affected Country | USA (103M+ cases) |

---

## Slide 5 — Key Insights

### Insight 1 — USA Led Global Cases by a Wide Margin
The USA recorded over 103 million confirmed cases —
nearly double India in second place. This reflects
both high transmission and strong reporting infrastructure.

### Insight 2 — Omicron Caused the Largest Single Wave
Daily new cases peaked at over 4 million in January 2022
during the Omicron variant surge — far exceeding all
previous waves combined.

### Insight 3 — Peru Had the Highest Death Rate
Peru recorded a death rate above 6% — significantly
higher than most developed nations. This reflects
healthcare system capacity constraints during peak waves.

### Insight 4 — Recovery Rate Improved Over Time
Later waves showed higher recovery rates relative to
deaths — indicating improved treatment protocols,
vaccine rollouts and healthcare system adaptations.

### Insight 5 — Europe Showed Multiple Distinct Waves
European countries showed clear wave patterns in
Winter 2020, Autumn 2021 and Winter 2021-22 —
consistent with seasonal respiratory virus behaviour.

---

## Slide 6 — Recommendations
- Countries with high death rates should invest in
  healthcare infrastructure before the next pandemic
- Early detection systems need global standardisation
- Vaccine distribution equity remains critical —
  low-income countries showed delayed recovery curves
- Data transparency across countries needs improvement
  for better global response coordination

---

## Slide 7 — Challenges Faced
- Dataset was in wide format (1,100+ columns) —
  required Python reshaping before Tableau could load it
- Encoding issues with CSV required WIN1252 specification
- Daily New Cases calculation required a LOOKUP window
  function in Tableau
- Null value on first date required manual exclusion

---

## Slide 8 — Conclusion
This dashboard transforms 330,000+ rows of raw COVID-19
data into an interactive, decision-ready visual tool.
It demonstrates the full analytics workflow:
data acquisition → cleaning → transformation →
visualization → insight generation.

Tools: Python (pandas) + Tableau Public