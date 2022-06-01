import 'package:queue_fullstack/src/queue/domain/entities/queue_entity.dart';
import 'package:queue_fullstack/src/queue/domain/value_objects/orders.dart';
import 'package:queue_fullstack/src/queue/infra/adapter/json_to_order.dart';

class JsonToQueue {
  static QueueEntity fromMap(dynamic json) {
    return QueueEntity(
      id: json['id'],
      abbr: json ['abbr'],
      priority: json['priority'],
      title: json['title'],
      orders: [
        if (json.containsKey('orders'))
         ...(json['orders'] as List).map(JsonToOrder.fromMap).toList(),
      ], 
    );
  }
}
