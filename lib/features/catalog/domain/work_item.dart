import 'package:preventiviedili/core/domain/unit_measurement.dart';

class WorkItem {
  final String id;
  final String name;
  final String? description;
  final double basePrice;
  final UnitMeasurement unitMeasurement;

  WorkItem({
    required this.id,
    required this.name,
    this.description,
    required this.basePrice,
    required this.unitMeasurement,
  });
}
