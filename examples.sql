
SELECT
 `region` AS "State",
 COUNT(*) AS "Edits"        -- Apply: count edits
FROM `wikiticker`
WHERE NOT ISNULL(`region`)  -- Filter
AND `country` = "United States"
GROUP BY `region`           -- Split by region
ORDER BY `Edits` DESC       -- Combine by sorting on
LIMIT 5;                    -- Edits and limiting


SELECT
 `region` AS "State",
 WEEKDAY(`time`) AS "DayOfWeek",
 COUNT(*) AS "Edits"
FROM `wikiticker`
WHERE NOT ISNULL(`region`)
AND `country` = "United States"
AND `state` IN ('<States from above query>')
GROUP BY `region`, WEEKDAY(`time`)


