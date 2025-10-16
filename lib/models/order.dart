class Order {
  const Order({
    required this.orderId,
    required this.dateTime,
    required this.amount,
    required this.status,
  });

  final DateTime dateTime;
  final String orderId;
  final OrderStatus status;
  final double amount;
}

enum OrderStatus { Completed, Processing, Pending, Cancelled }
