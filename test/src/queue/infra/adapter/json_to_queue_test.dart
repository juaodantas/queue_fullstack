import 'package:flutter_test/flutter_test.dart';
import 'package:queue_fullstack/src/queue/domain/entities/queue_entity.dart';
import 'package:queue_fullstack/src/queue/domain/value_objects/orders.dart';
import 'package:queue_fullstack/src/queue/infra/adapter/json_to_queue.dart';

void main() {
  test('Deve converter um map em um objeto do tipo QueueEntity', () {
    final queue = JsonToQueue.fromMap({
      'id': 'uahdshua',
      'title': 'title',
      'priority': 1,
      'abbr':'adshua',
      'orders': [
        {
          'id': 'uahdshua',
          'position': 1,
          'status': 'attending',
          'timestamp': '2022-03-31',
        }
      ],
    });

    expect(queue, isA<QueueEntity>());
    expect(queue.title, 'title');
    expect(queue.priority, 1);
    expect(queue.orders.first.status, OrderStatus.attending );
  });
}
