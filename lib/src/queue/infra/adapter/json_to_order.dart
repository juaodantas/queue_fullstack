import 'package:queue_fullstack/src/queue/domain/entities/queue_entity.dart';
import 'package:queue_fullstack/src/queue/domain/value_objects/orders.dart';

class JsonToOrder {
  static Order fromMap(dynamic json) {
    return Order(
      id: json['id'],
      position: json['position'],   
      timestamp: DateTime.parse(json['timestamp']),
      status: OrderStatus.values.firstWhere((element) {
        return element.name == json['status'];
      }),
    );
  }
}
