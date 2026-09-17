import 'package:preventiviedili/features/catalog/domain/work_item.dart';

abstract class WorkItemRepository {
  Future<List<WorkItem>> getAllWorkItems();

  Future<WorkItem?> getWorkItemById(String id);

  Future<WorkItem> createWorkItem(WorkItem workItem);

  Future<void> updateWorkItem(WorkItem workItem);

  Future<void> deleteWorkItem(String id);
}
