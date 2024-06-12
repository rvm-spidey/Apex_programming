Account acc = new Account(Name='Test Account', Type='Customer', Description='Created via apex');
String accName = (String) acc.get('Name');
String accDescription = String.valueOf(acc.get('Name'));
System.debug('accName: ' + accName);
System.debug('accDescription: ' + accDescription);


// get(fieldName) returns is of type object
