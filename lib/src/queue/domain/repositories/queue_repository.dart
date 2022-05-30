import 'package:queue_fullstack/src/queue/domain/usecases/get_all_queues.dart';

import '../entities/queue_entity.dart';

abstract class IQueueRepository {
  Stream<List<QueueEntity>> getAllQueues();
}