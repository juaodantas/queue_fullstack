class Order {
  final int position;
  final DateTime timestap;
  final OrderStatus status;

  Order({required this.position, required this.timestap, required this.status});
}

enum OrderStatus {
  waiting, attending, notAnswared
}