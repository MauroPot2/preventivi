import 'quote_item.dart';
import 'quote_status.dart';

class QuoteRevision {
  final String id;
  final int revisionNumber;
  final double discountPercent;
  final double vatPercent;
  final QuoteStatus status;
  final String? notes;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<QuoteItem> items;

  QuoteRevision({
    required this.id,
    required this.revisionNumber,
    required this.discountPercent,
    required this.vatPercent,
    required this.status,
    this.notes,
    required this.createdAt,
    required this.updatedAt,
    required this.items,
  });

  double get subtotal {
    double total = 0;
    for (QuoteItem q in items) {
      total += q.lineTotal;
    }
    return total;
  }

  double get discountAmount {
    return subtotal * discountPercent / 100;
  }

  double get taxableAmount {
    return subtotal - discountAmount;
  }

  double get vatAmount {
    return taxableAmount * vatPercent / 100;
  }

  double get total {
    return taxableAmount + vatAmount;
  }
}
