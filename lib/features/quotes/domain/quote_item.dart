import '../../../core/domain/unit_measurement.dart';

class QuoteItem {
  final String id;
  final String? workItemId;
  final String name;
  final String? description;
  final double quantity;
  final UnitMeasurement unitMeasurement;
  final double unitPrice;

  QuoteItem({
    required this.id,
    this.workItemId,
    required this.name,
    this.description,
    required this.quantity,
    required this.unitMeasurement,
    required this.unitPrice,
  });

  double get lineTotal => quantity * unitPrice;
}
