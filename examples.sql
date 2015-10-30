
SELECT
 `regionName` AS "State",
 COUNT(*) AS "Edits"      -- Apply: count edits
FROM `wikiticker`
GROUP BY `regionName`     -- Split by region
ORDER BY `Edits` DESC     -- Combine by sorting on
LIMIT 5;                  -- Edits and limiting


SELECT
 `regionName` AS "State",
 `dayQuarter` AS "DayQuarter",
 COUNT(*) AS "Edits"
FROM `wikiticker`
GROUP BY `regionName`, `dayQuarter` -- Will nest this later

