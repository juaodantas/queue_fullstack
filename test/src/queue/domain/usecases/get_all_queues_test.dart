import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:queue_fullstack/src/queue/domain/entities/queue_entity.dart';
import 'package:queue_fullstack/src/queue/domain/usecases/get_all_queues.dart';

import '../../../../mocks/mocks.dart';


void main() {
  test('deve retornar uma lista de QueueEntity', (){
    final repository = QueueReposutiryMock();
    final entity = QueueEntityMock();
    when(() => repository.getAllQueues()).thenAnswer((_) => Stream.value([entity]));
    
    final usecase = GetAllQueues(repository);

    final result = usecase.call();

    expect(result, emits(isA<List<QueueEntity>>()));
  });
}