try {
  Double result = 1 / 0;
  System.debug('Result '+ result);
} catch (Exception e) {
  System.debug('Cause ' + e.getCause());
  System.debug('Message ' + e.getMessage());
  System.debug('Line number ' + e.getLineNumber());
  System.debug('Stack trace ' + e.getStackTraceString());
}
