class Customer {
  final String id;
  final String name;
  final String phone;
  final String? email;
  final String? address;
  final String? fiscalCode;
  final String? vatNumber;
  final String? pec;
  final String? recipientCode;

  const Customer({
    required this.id,
    required this.name,
    required this.phone,
    this.email,
    this.address,
    this.fiscalCode,
    this.vatNumber,
    this.pec,
    this.recipientCode,
  });
}
