# AAPL Stock Analysis — Insight Summary
## Advanced Python Analysis: Time-Series & Feature Engineering
### AnalystLab Africa Internship — Week 6

---

## Dataset Overview
- **Source:** Yahoo Finance via yfinance library
- **Ticker:** AAPL (Apple Inc.)
- **Period:** 14 June 2021 – 12 June 2026 (5 years, 1,254 trading days)
- **Columns:** Date, Open, High, Low, Close, Volume
- **Data Quality:** No missing values; required fixing a malformed CSV header from the download

---

## Data Transformation Techniques Applied
- Converted Date column from string to datetime and set as DataFrame index
- Sorted data chronologically to enable time-series operations
- Created a Year column via `.dt.year` for grouping
- Used `.groupby()` and `.agg()` to produce a yearly summary table
- Used `.resample('ME')` to convert daily data into monthly closing prices

---

## Trends Identified
- AAPL's closing price grew from **$127.19 to $291.13** — a **128.9% total return** over 5 years
- Average closing price rose every year: $147 (2021) → $271 (2026)
- Trading volume steadily declined from ~85M shares/day (2021) to ~48M (2026), 
  suggesting reduced day-to-day trading activity as ownership matured
- **2022 was the most volatile year** — both the best month (July 2022, +18.86%) 
  and worst month (December 2022, -12.23%) of the entire 5-year period occurred in 2022
- Recent volatility (1.63% average, rising toward 1.53% in the latest 10 days) 
  suggests increased market uncertainty heading into mid-2026

---

## Features Created
| Feature | Description |
|---------|-------------|
| Daily_Change | Absolute day-over-day price change |
| Daily_Pct_Change | Percentage day-over-day price change |
| MA_7 | 7-day rolling average closing price |
| MA_30 | 30-day rolling average closing price |
| Volatility_30 | 30-day rolling standard deviation of daily returns |
| Year | Extracted year for grouping/aggregation |
| Monthly Returns | Month-over-month % change in closing price |

---

## Key Insights

**Insight 1 — Long-Term Growth with Short-Term Turbulence**
AAPL delivered strong long-term growth (128.9% over 5 years) but experienced 
significant short-term swings, including a single-day gain of 15.33% and 
a single-day loss of 9.25%.

**Insight 2 — 2022 Was a Pivot Year**
2022 recorded the highest volatility (2.20% average), the lowest average 
daily return (-0.10%), and contained both the best and worst single months 
of the entire dataset — reflecting the broader 2022 tech market downturn.

**Insight 3 — Declining Trading Volume**
Average daily volume fell by roughly 43% from 2021 to 2026 (84M → 48M shares), 
even as the price more than doubled — indicating the stock has become less 
actively traded relative to its size.

**Insight 4 — Short-Term Trend Reversal Signal**
In the most recent data, the 7-day moving average dropped below the 30-day 
moving average (298.4 vs 299.0) — a classic "death cross" signal often 
watched by traders as an indicator of potential short-term downward momentum.

**Insight 5 — Rising Recent Volatility**
30-day volatility climbed from 1.30% to 1.53% over just the last two weeks 
of data, the highest level since the 2022 downturn period — worth monitoring 
for early signs of a larger market shift.

---

## Recommendations
1. **Monitor the MA_7/MA_30 crossover** — the recent crossover below the 
   30-day average warrants close attention as a potential trend reversal signal
2. **Account for seasonal volatility patterns** — 2022's extreme swings show 
   that risk models should not assume constant volatility year-round
3. **Investigate the volume decline** — understanding why trading activity 
   has fallen could reveal shifts in investor base or market structure
4. **Use 30-day rolling volatility as a risk indicator** — the recent uptick 
   suggests increased caution may be warranted for short-term positions
5. **Combine with broader market data** — comparing AAPL's volatility to 
   the S&P 500 would clarify whether these patterns are stock-specific or 
   market-wide

---

*Report prepared by: [Chisom Promise Onyekaba]*
*AnalystLab Africa Data Analytics Internship — Week 6*