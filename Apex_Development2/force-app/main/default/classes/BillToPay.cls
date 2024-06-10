public with sharing class BillToPay {

  final Integer ONLY_ONE_SLICE = 8;
  final Integer UP_TO_THREE_SLICES = 7;
  final Integer MORE_THAN_THREE_SLICES = 6;


  private Integer getBill(Integer numberOfSlices) {

    Integer billAmount = 0;
    if (numberOfSlices == 1) {
      billAmount = ONLY_ONE_SLICE * numberOfSlices;
    }
    else if (numberOfSlices <= 3) {
      billAmount = UP_TO_THREE_SLICES * numberOfSlices;
    }
    else {
      billAmount = MORE_THAN_THREE_SLICES * numberOfSlices;
    }
    return billAmount;
  }

  public void displayBill(Integer numberOfSlices) {
    System.debug('The bill for ' + numberOfSlices + ' slices of pizza is: ' + getBill(numberOfSlices));
  }
}
