List<Integer> intList = new List<Integer>();

intList.add(12);
intList.add(93);

Integer intSize = intList.size();
Boolean isEmpty = intList.isEmpty();

System.debug(intSize);
System.debug(isEmpty);
System.debug(intList);

List<Integer> lst2 = new List<Integer>{12, 10 , 9 , 6, 5, 3};
System.debug(lst2);
lst2.remove(2);
System.debug(lst2);
lst2.set(0,77);
System.debug(lst2);

Integer element2 = lst2.get(2);
System.debug('element2 '+ element2);


for (Integer element: lst2) {
  System.debug(element);
}
