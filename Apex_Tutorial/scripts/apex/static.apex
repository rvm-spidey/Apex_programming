MyTasks t = new MyTasks();

for (Integer i = 0; i < 5; i++ ) {
  t.doTask();
}

Integer count = t.getTasksCompleted();
System.debug('Count of completed tasks,' + count);


MyTasks t2 = new MyTasks();
t2.doTask();

System.debug(MyTasks.getTotalTasksCompleted());
System.debug(MyTasks.totalTasksCompleted);
