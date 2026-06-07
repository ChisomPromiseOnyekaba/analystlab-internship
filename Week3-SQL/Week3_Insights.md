# Week 3 — SQL Analysis Insights
## AnalystLab Africa Data Analytics Internship

---

## CHINOOK DATABASE (Music Store)

### Insight 1 — Rock Dominates All Other Genres
Rock is the highest revenue-generating genre with 835 purchases and 
£826.65 in total revenue. Latin comes second with 386 purchases. 
This means the store should prioritise Rock catalogue expansion and 
promotions to maximise revenue.

### Insight 2 — USA is the Largest Market by Far
The USA generates the highest revenue among all countries, with 
significantly more customers and orders than any other market. 
Brazil, Canada and France follow but at a much lower level. 
International expansion should focus on these secondary markets.

### Insight 3 — Top Customers Drive Disproportionate Revenue
The top 10 customers account for a significant share of total revenue. 
The highest spending customer spent nearly double the second highest. 
A VIP loyalty programme targeting these customers would protect 
this revenue concentration risk.

### Insight 4 — Revenue is Consistent Throughout the Year
Monthly revenue trends show relatively stable performance across all 
months with no extreme seasonal spikes unlike retail datasets. 
This suggests music purchases are driven by catalogue size and 
promotions rather than seasonal demand.

### Insight 5 — Most Artists Have Only One Album in the Store
The LEFT JOIN analysis revealed that many artists have only one album 
available. Expanding the catalogue depth for popular artists with 
multiple albums could significantly increase purchase opportunities 
per customer visit.

---

## SALES DATABASE

### Insight 1 — Classic Cars Generate the Most Revenue
Classic Cars is the top performing product line generating over 
$3.9 million in total revenue across all deal sizes. Medium deals 
contribute the most ($2.4M) followed by Large ($796K) and Small 
($692K). Prioritising Classic Cars inventory and sales efforts 
would have the biggest revenue impact.

### Insight 2 — USA Dominates Sales Revenue
The USA is the single largest market by a significant margin. 
Spain and France are the next strongest markets. This geographic 
concentration means the business should both protect its US market 
share and invest in growing European markets.

### Insight 3 — Medium Deals Drive the Most Revenue
Across all product lines, Medium sized deals generate more total 
revenue than Large or Small deals combined. This suggests the 
sweet spot for sales effort is medium-value customers rather than 
chasing large enterprise deals or small one-off purchases.

### Insight 4 — Revenue Peaked in 2004
The year-by-year analysis shows 2004 had the highest monthly revenues 
across most months. 2005 data appears incomplete suggesting it may 
be a partial year in the dataset. Year-over-year growth from 2003 
to 2004 was strong across most product lines.

### Insight 5 — Top 10 Customers are Highly Concentrated
The top 10 customers by revenue show significant concentration — 
the top customer alone generates substantially more than average. 
These high-value accounts should receive dedicated account management 
to protect and grow these relationships.

---

## SQL CONCEPTS DEMONSTRATED
- SELECT, WHERE, ORDER BY, LIMIT
- Aggregate functions: SUM, AVG, COUNT, MIN, MAX
- GROUP BY and HAVING
- INNER JOIN, LEFT JOIN across multiple tables
- Subqueries
- Window functions: ROW_NUMBER(), RANK(), PARTITION BY
