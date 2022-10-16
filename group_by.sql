-- In the group_by.sql file, write out the code for the following problems:

-- These questions reference the invoice, track and album tables.

-- 1. Find the sum of totals in the invoice table grouped by billing_state.
SELECT SUM(total)
FROM invoice
GROUP BY billing_state

-- 2. Find the average track length (in milliseconds) by album. Order the table by the averages.
SELECT AVG(milliseconds)
FROM track
GROUP BY album_id

-- 3. Find a count of how many albums the artists with the ids 8 and 22 have respectively. Use COUNT, WHERE/IN, and GROUP BY.
SELECT COUNT(*)
FROM album
WHERE artist_id = 8 

SELECT COUNT(*)
FROM album
WHERE artist_id = 22