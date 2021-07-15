import 'package:dunzo_ui_clone/colors.dart';
import 'package:dunzo_ui_clone/models/order.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainOrderScreen extends StatelessWidget {
  static const String routeName = '/main-order';

  final List<Order> orders = [
    Order(
      orderId: 'yTd6Fdy9J',
      dateTime: DateTime.now(),
      amount: 456.34,
      status: OrderStatus.Completed,
    ),
    Order(
      orderId: 'Oh7dGt5Rv',
      dateTime: DateTime.now().subtract(Duration(days: 2)),
      amount: 156.88,
      status: OrderStatus.Processing,
    ),
    Order(
      orderId: 'Pjd6gd5dD',
      dateTime: DateTime.now().subtract(Duration(days: 3)),
      amount: 100,
      status: OrderStatus.Pending,
    ),
    Order(
      orderId: 'Qe4D5G5t3',
      dateTime: DateTime.now().subtract(Duration(days: 6)),
      amount: 145.65,
      status: OrderStatus.Cancelled,
    ),
  ];

  // ignore: missing_return
  Color generateStatusColor(OrderStatus status) {
    switch (status) {
      case OrderStatus.Completed:
        return Color(0xFF86c55c);
        break;
      case OrderStatus.Processing:
        return Color(0xFF02bcf5);
        break;
      case OrderStatus.Pending:
        return Color(0xFFc99800);
        break;
      case OrderStatus.Cancelled:
        return Color(0xFFeb383e);
        break;
    }
  }

  // ignore: missing_return
  String generateStatusText(OrderStatus status) {
    switch (status) {
      case OrderStatus.Completed:
        return 'Completed';
        break;
      case OrderStatus.Processing:
        return 'Processing';
        break;
      case OrderStatus.Pending:
        return 'Pending';
        break;
      case OrderStatus.Cancelled:
        return 'Cancelled';
        break;
    }
  }

  Widget build(BuildContext context) {
    SliverAppBar sliverAppBar = SliverAppBar(
      pinned: true,
      backgroundColor: primaryColor,
      elevation: 0,
      title: Text(
        'Orders',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 2),
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          splashRadius: 22,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          sliverAppBar,
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.center,
                color: primaryColor,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  child: orders.isEmpty
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height -
                              sliverAppBar.toolbarHeight -
                              MediaQuery.of(context).padding.top -
                              56,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/lightening.png',
                                    width: 120),
                                SizedBox(height: 20),
                                Text(
                                  'It\s lonely out here',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  'Place your first order from the \'home\' section',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                          child: Column(
                            children: orders.map((order) {
                              return _buildOrderItem(order);
                            }).toList(),
                          ),
                        ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderItem(Order order) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF1F1F1)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateFormat('MMM dd, yyyy, hh:mm a').format(order.dateTime),
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF8f8f8f),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order ID:',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF8f8f8f),
                    ),
                  ),
                  Text(
                    '#${order.orderId}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Amount:',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF8f8f8f),
                    ),
                  ),
                  Text(
                    '₹${order.amount}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Status:',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF8f8f8f),
                    ),
                  ),
                  Text(
                    '${generateStatusText(order.status)}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: generateStatusColor(order.status),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(4),
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFE9E9E9)),
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: Text(
                  'Reorder',
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
