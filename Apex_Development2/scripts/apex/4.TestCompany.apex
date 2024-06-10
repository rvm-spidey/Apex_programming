Company companyA = new Company();
companyA.companyName = 'Geek';
companyA.ceo = 'Elon';
companyA.employeeCount = 100;
companyA.revenue = 20000;

companyA.addNewCustomer('joe', 'joe@test.com');
companyA.addNewCustomer('bob', 'bob@test.com');

companyA.getAllCustomers();
