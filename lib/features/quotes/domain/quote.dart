import 'quote_revision.dart';

class Quote {
  final String id;
  final String customerId;
  final String quoteNumber;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<QuoteRevision> revisions;

  Quote({
    required this.id,
    required this.customerId,
    required this.quoteNumber,
    required this.createdAt,
    required this.updatedAt,
    required this.revisions,
  });
}
