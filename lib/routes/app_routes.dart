import 'package:flutter/cupertino.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:uiproject/cart_view.dart';
import 'package:uiproject/item_view.dart';

import '../my_home_page.dart';

class AppRoutes {
  static const item = 'Item';
  static const home = 'Home';
  static const cart = 'Cart';
  static List<QRoute> routes() => [
        QRoute(
            path: '/',
            builder: () => const MyHomePage(
                  title: 'app',
                )),
        QRoute(
          name: item,
          path: '/item',
          builder: () => const ItemView(),
        ),
        QRoute(
          name: cart,
          path: '/cart',
          builder: () => const CartView(),
        )
      ];
}
