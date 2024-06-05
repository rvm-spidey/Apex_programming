Map<Integer,String> employees = new Map<Integer,String>();

employees.put(101, 'Han');
employees.put(102, 'Luke');
employees.put(103, 'Bob');
System.debug(employees);

employees.put(102, 'Luke skywalker');
System.debug(employees);

Set<Integer> keySet = employees.keySet();
System.debug(keySet);

List<String> values = employees.values();
System.debug(values);
