import 'package:flutter_test/flutter_test.dart';
import 'package:queue_fullstack/src/queue/domain/value_objects/orders.dart';
import 'package:queue_fullstack/src/queue/infra/adapter/json_to_order.dart';

void main() {
  test('Deve converter um map em um objeto do tipo Order', (){
    final order = JsonToOrder.fromMap({
      'id': 'uahdshua',
      'position': 1,
      'status': 'attending',
      'timestamp': '2022-03-31',
    });

    expect(order, isA<Order>());
    expect(order.status, OrderStatus.attending);
  });
}