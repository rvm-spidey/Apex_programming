public with sharing class Company {

    public String companyName;
    public String ceo;
    public Integer employeeCount;
    public Long revenue;

    private List<Client> listClients = new List<Client>();


    public void addNewCustomer(String clientName, String email) {
      Client customer = new Client(clientName, email);
      listClients.add(customer);
    }

    public void getAllCustomers() {
      for (Client customer: listClients) {
        System.debug('Customer Name: ' + customer.clientName);
      }
    }

    private class Client {
      public String clientName;
      public String website;
      public String email;
      public Long phone;

      Client(String clientName, String email) {
        this.clientName = clientName;
        this.email = email;
      }

    }

}
