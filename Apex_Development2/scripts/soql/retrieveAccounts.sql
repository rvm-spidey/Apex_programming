SELECT Name, AccountNumber, Rating, Industry, CreatedDate
  FROM Account
  WHERE Type IN ('Prospect' , 'Customer - Direct')
  AND
  (
  CreatedDate > 2024-06-05T00:00:00.000+0000
  OR
  CreatedDate = LAST_MONTH
  )
