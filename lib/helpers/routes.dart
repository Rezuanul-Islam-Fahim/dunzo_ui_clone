import 'package:flutter/widgets.dart';

import '../screens/about_screen.dart';
import '../screens/add_card_screen.dart';
import '../screens/cart_screen/cart_screen.dart';
import '../screens/category_items_screen/category_items_screen.dart';
import '../screens/custom_order_screen/custom_order_screen.dart';
import '../screens/detailed_store_screen/detailed_store_screen.dart';
import '../screens/edit_location_screen.dart';
import '../screens/empty_screen.dart';
import '../screens/location_screen.dart';
import '../screens/main_order_screen.dart';
import '../screens/main_search_screen.dart';
import '../screens/notification_screens.dart';
import '../screens/pickup_drop_screen/pickup_drop_screen.dart';
import '../screens/product_details_screen.dart';
import '../screens/refer_partner_screen.dart';
import '../screens/saved_addresses_screen.dart';
import '../screens/saved_card_screen.dart';
import '../screens/store_list_screen/store_list_screen.dart';
import '../screens/store_list_search_screen.dart';
import '../screens/store_screen/store_screen.dart';
import '../screens/store_search_screen.dart';
import '../screens/support_screen.dart';
import '../screens/user_screen/user_screen.dart';

Map<String, WidgetBuilder> routes() {
  return <String, WidgetBuilder>{
    MainSearchScreen.routeName: (_) => MainSearchScreen(),
    LocationScreen.routeName: (_) => LocationScreen(),
    CartScreen.routeName: (_) => CartScreen(),
    StoreListScreen.routeName: (_) => StoreListScreen(),
    StoreListSearchScreen.routeName: (_) => StoreListSearchScreen(),
    StoreScreen.routeName: (_) => StoreScreen(),
    StoreSearchScreen.routeName: (_) => StoreSearchScreen(),
    CategoryItemsScreen.routeName: (_) => CategoryItemsScreen(),
    ProductDetailsScreen.routeName: (_) => ProductDetailsScreen(),
    PickupDropScreen.routeName: (_) => PickupDropScreen(),
    DetailedStoreScreen.routeName: (_) => DetailedStoreScreen(),
    CustomOrderScreen.routeName: (_) => CustomOrderScreen(),
    UserScreen.routeName: (_) => UserScreen(),
    MainOrderScreen.routeName: (_) => MainOrderScreen(),
    EmptyScreen.routeName: (_) => EmptyScreen(),
    SavedAddressesScreen.routeName: (_) => SavedAddressesScreen(),
    SavedCardScreen.routeName: (_) => SavedCardScreen(),
    ReferPartnerScreen.routeName: (_) => ReferPartnerScreen(),
    NotificationScreen.routeName: (_) => NotificationScreen(),
    SupportScreen.routeName: (_) => SupportScreen(),
    AboutScreen.routeName: (_) => AboutScreen(),
    AddCardScreen.routeName: (_) => AddCardScreen(),
    EditLocationScreen.routeName: (_) => EditLocationScreen(),
  };
}
