String team = 'My team\'s name is \'SFDS Academy\'';
System.debug(team);


Integer myMarks = Integer.valueOf('85');


String physicsMark = '85';
String mathMark = '87';

Integer totalInt = Integer.valueOf(physicsMark) + Integer.valueOf(mathMark);
System.debug(totalInt);

String totalStr = String.valueOf(Integer.valueOf(physicsMark) + Integer.valueOf(mathMark));
System.debug(totalStr);
