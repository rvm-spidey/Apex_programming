StaticKeyword countryA = new StaticKeyword();
for (Integer i = 0; i < 5 ; i++) {
  countryA.treatPatient();
}
countryA.displayPatientsTreated();
StaticKeyword.printTreatedInCountry();

StaticKeyword countryB = new StaticKeyword();
countryB.treatPatient();
countryB.displayPatientsTreated();
StaticKeyword.printTreatedInCountry();
