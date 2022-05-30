import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:queue_fullstack/src/queue/domain/repositories/queue_repository.dart';
import 'package:queue_fullstack/src/queue/domain/usecases/get_all_queues.dart';

class QueueReposutiryMock extends Mock implements IQueueRepository {}

void main() {
  test('deve retornar uma lista de QueueEntity', (){
    final repository = QueueReposutiryMock();
    final usecase = GetAllQueues(repository);
  });
}