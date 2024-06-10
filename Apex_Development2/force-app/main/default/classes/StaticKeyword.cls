public with sharing class StaticKeyword {

    public Integer recoveredInArea = 0;
    public static Integer recoveredInCountry = 0;

    public void treatPatient() {
      recoveredInArea++;
      recoveredInCountry++;
    }

    public void displayPatientsTreated() {
      System.debug('Patients treaded in country ' + recoveredInArea);
    }

    public static void printTreatedInCountry(){
      System.debug('Patients recovered ' + recoveredInCountry);
    }

}
