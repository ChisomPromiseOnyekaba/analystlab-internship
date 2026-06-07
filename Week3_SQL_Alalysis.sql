-- ============================================================
-- WEEK 3: SQL & DATA QUERYING ANALYSIS
-- AnalystLab Africa Data Analytics Internship
-- Databases: Chinook (Music Store) & Sales Data
-- ============================================================


-- ============================================================
-- SECTION 1: CHINOOK DATABASE
-- ============================================================

-- 1. View all tables in Chinook database
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public'
ORDER BY table_name;

-- 2. Core SQL: SELECT, WHERE, ORDER BY
SELECT *
FROM artist
LIMIT 10;

-- 3. Filter tracks by genre
SELECT *
FROM track
WHERE genre_id = 1
LIMIT 10;

-- 4. Sort tracks by length
SELECT name, composer, milliseconds
FROM track
ORDER BY milliseconds DESC
LIMIT 10;

-- 5. Aggregate functions on tracks
SELECT 
    COUNT(*) AS total_tracks,
    AVG(milliseconds) AS avg_length,
    MIN(milliseconds) AS shortest,
    MAX(milliseconds) AS longest
FROM track;

-- 6. GROUP BY: Tracks per genre
SELECT 
    genre_id,
    COUNT(*) AS total_tracks,
    AVG(milliseconds) AS avg_length
FROM track
GROUP BY genre_id
ORDER BY total_tracks DESC;

-- 7. HAVING: Genres with more than 50 tracks
SELECT 
    genre_id,
    COUNT(*) AS total_tracks
FROM track
GROUP BY genre_id
HAVING COUNT(*) > 50
ORDER BY total_tracks DESC;

-- 8. INNER JOIN: Tracks with genre names
SELECT 
    t.name AS track_name,
    g.name AS genre_name,
    t.milliseconds
FROM track t
INNER JOIN genre g ON t.genre_id = g.genre_id
LIMIT 10;

-- 9. JOIN across 3 tables: Artist, Album, Track
SELECT 
    ar.name AS artist_name,
    al.title AS album_title,
    t.name AS track_name,
    t.milliseconds
FROM track t
INNER JOIN album al ON t.album_id = al.album_id
INNER JOIN artist ar ON al.artist_id = ar.artist_id
LIMIT 10;

-- 10. LEFT JOIN: Artists with album counts
SELECT 
    ar.name AS artist_name,
    COUNT(al.album_id) AS total_albums
FROM artist ar
LEFT JOIN album al ON ar.artist_id = al.artist_id
GROUP BY ar.name
ORDER BY total_albums DESC
LIMIT 15;

-- 11. Subquery: Tracks longer than average
SELECT 
    name,
    milliseconds
FROM track
WHERE milliseconds > (
    SELECT AVG(milliseconds)
    FROM track
)
ORDER BY milliseconds DESC
LIMIT 10;

-- 12. Window Function: ROW_NUMBER
SELECT 
    ar.name AS artist_name,
    al.title AS album_title,
    COUNT(t.track_id) AS total_tracks,
    ROW_NUMBER() OVER (
        ORDER BY COUNT(t.track_id) DESC
    ) AS rank
FROM track t
INNER JOIN album al ON t.album_id = al.album_id
INNER JOIN artist ar ON al.artist_id = ar.artist_id
GROUP BY ar.name, al.title
ORDER BY total_tracks DESC
LIMIT 15;

-- 13. Window Function: RANK with PARTITION BY
SELECT 
    ar.name AS artist_name,
    al.title AS album_title,
    COUNT(t.track_id) AS total_tracks,
    RANK() OVER (
        PARTITION BY ar.name
        ORDER BY COUNT(t.track_id) DESC
    ) AS rank_within_artist
FROM track t
INNER JOIN album al ON t.album_id = al.album_id
INNER JOIN artist ar ON al.artist_id = ar.artist_id
GROUP BY ar.name, al.title
ORDER BY ar.name, rank_within_artist
LIMIT 20;

-- ============================================================
-- BUSINESS QUESTIONS: CHINOOK
-- ============================================================

-- Q1: Top 10 customers by total spending
SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    c.country,
    SUM(i.total) AS total_spent
FROM customer c
INNER JOIN invoice i ON c.customer_id = i.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.country
ORDER BY total_spent DESC
LIMIT 10;

-- Q2: Top 10 best selling tracks
SELECT 
    t.name AS track_name,
    ar.name AS artist_name,
    COUNT(il.track_id) AS times_purchased,
    SUM(il.unit_price * il.quantity) AS total_revenue
FROM invoice_line il
INNER JOIN track t ON il.track_id = t.track_id
INNER JOIN album al ON t.album_id = al.album_id
INNER JOIN artist ar ON al.artist_id = ar.artist_id
GROUP BY t.name, ar.name
ORDER BY times_purchased DESC
LIMIT 10;

-- Q3: Revenue by country
SELECT 
    c.country,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(i.invoice_id) AS total_orders,
    SUM(i.total) AS total_revenue,
    ROUND(AVG(i.total), 2) AS avg_order_value
FROM customer c
INNER JOIN invoice i ON c.customer_id = i.customer_id
GROUP BY c.country
ORDER BY total_revenue DESC;

-- Q4: Monthly revenue trends
SELECT 
    DATE_TRUNC('month', invoice_date) AS month,
    COUNT(invoice_id) AS total_orders,
    SUM(total) AS monthly_revenue,
    ROUND(AVG(total), 2) AS avg_order_value
FROM invoice
GROUP BY DATE_TRUNC('month', invoice_date)
ORDER BY month;

-- Q5: Revenue by genre
SELECT 
    g.name AS genre_name,
    COUNT(il.invoice_line_id) AS total_purchases,
    SUM(il.unit_price * il.quantity) AS total_revenue,
    ROUND(AVG(il.unit_price * il.quantity), 2) AS avg_revenue_per_purchase
FROM invoice_line il
INNER JOIN track t ON il.track_id = t.track_id
INNER JOIN genre g ON t.genre_id = g.genre_id
GROUP BY g.name
ORDER BY total_revenue DESC;


-- ============================================================
-- SECTION 2: SALES DATABASE
-- ============================================================

-- Q1: Top 10 products by revenue
SELECT 
    productline,
    productcode,
    SUM(sales) AS total_revenue,
    SUM(quantityordered) AS total_units_sold,
    ROUND(AVG(priceeach), 2) AS avg_price
FROM sales_data
GROUP BY productline, productcode
ORDER BY total_revenue DESC
LIMIT 10;

-- Q2: Revenue by country
SELECT 
    country,
    COUNT(DISTINCT ordernumber) AS total_orders,
    COUNT(DISTINCT customername) AS total_customers,
    SUM(sales) AS total_revenue,
    ROUND(AVG(sales), 2) AS avg_order_line_value
FROM sales_data
GROUP BY country
ORDER BY total_revenue DESC;

-- Q3: Revenue trends by year and month
SELECT 
    year_id,
    month_id,
    COUNT(DISTINCT ordernumber) AS total_orders,
    SUM(sales) AS monthly_revenue,
    ROUND(AVG(sales), 2) AS avg_sale_value
FROM sales_data
GROUP BY year_id, month_id
ORDER BY year_id, month_id;

-- Q4: Top 10 customers by revenue
SELECT 
    customername,
    country,
    COUNT(DISTINCT ordernumber) AS total_orders,
    SUM(sales) AS total_revenue,
    ROUND(AVG(sales), 2) AS avg_order_value,
    MAX(sales) AS largest_single_order
FROM sales_data
GROUP BY customername, country
ORDER BY total_revenue DESC
LIMIT 10;

-- Q5: Revenue by product line and deal size
SELECT 
    productline,
    dealsize,
    COUNT(DISTINCT ordernumber) AS total_orders,
    SUM(sales) AS total_revenue,
    ROUND(AVG(sales), 2) AS avg_sale_value
FROM sales_data
GROUP BY productline, dealsize
ORDER BY productline, total_revenue DESC;