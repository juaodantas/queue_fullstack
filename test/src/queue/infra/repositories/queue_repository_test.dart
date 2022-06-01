import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:queue_fullstack/src/queue/domain/entities/queue_entity.dart';
import 'package:queue_fullstack/src/queue/infra/repositories/queue_repository.dart';

import '../../../../mocks/mocks.dart';

void main() {
  test('queue repository getAllQueues', () async {
    final datasource = IQueueDatasourceMock();
    when(() => datasource.getAllQueues()).thenAnswer(
      (_) => Stream.value([
        {
          'id': 'uahdshua',
          'title': 'title',
          'priority': 1,
          'abbr': 'adshua',
          'orders': [
            {
              'id': 'uahdshua',
              'position': 1,
              'status': 'attending',
              'timestamp': '2022-03-31',
            }
          ],
        }
      ]),
    );

    final repository = QueueRepository(datasource);

    final result = repository.getAllQueues();

    expect(result, emits(
      isA<List<QueueEntity>>()
    ));
  });
}
