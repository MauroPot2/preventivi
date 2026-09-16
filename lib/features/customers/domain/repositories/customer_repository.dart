import '../customer.dart';

abstract class CustomerRepository {
  Future<List<Customer>> getAllCustomers();

  Future<Customer?> getCustomerById(String id);

  Future<Customer> createCustomer(Customer customer);

  Future<void> updateCustomer(Customer customer);

  Future<void> deleteCustomer(String id);
}
