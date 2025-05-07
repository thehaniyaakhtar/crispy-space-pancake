
-- *** The Lost Letter ***
-- I live over at 900 Somerville Avenue
-- at 2 Finnegan Street, uptown
-- congratulatory note
-- where did it end up
SELECT id
FROM addresses
WHERE address = "900 Somerville Avenue"
; --432--

SELECT *
FROM packages
WHERE contents = "%congrat%"
; --384-- --from 432-- --to 854--

SELECT *
FROM scans
WHERE package_id = "384"
;

SELECT address,
       type
FROM addresses
WHERE id = 854
;
-- *** The Devious Delivery ***
--from fiftyville
SELECT *
FROM packages
WHERE contents LIKE '%duck%'
      AND from_address_id IS NULL
; --5098-- --to 50--

SELECT *
FROM addresses
WHERE id = 50
;

SELECT *
FROM scans
WHERE package_id = 5098
;

SELECT *
FROM addresses
WHERE id = 348
;
-- *** The Forgotten Gift ***

SELECT *
FROM addresses
WHERE address LIKE "%728 Maple Place%"
;

SELECT *
FROM packages
WHERE to_address_id = "4983"
;

SELECT *
FROM scans
WHERE package_id = "9523"
;

SELECT *
FROM addresses
WHERE id = "7432"
;

SELECT *
FROM drivers
WHERE id = "17"
;
