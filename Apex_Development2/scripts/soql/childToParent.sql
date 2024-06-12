
SELECT FirstName, LastName, Account.Name, Account.Website, Account.Owner.Name, (SELECT Subject FROM Cases) FROM Contact
