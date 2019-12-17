


import 'package:shared_preferences/shared_preferences.dart';

class CartService {

  static Future<List<CartEntry>> getCartEntries() {

    var future = SharedPreferences.getInstance().then((value) {

      var cartCount = value.getInt("cart.count");

      var list = List<CartEntry>(cartCount);

      for (int i = 0; i < cartCount; i++) {

        list.add(CartEntry(
            value.getInt("cart.entry." + i.toString() + ".type"),
            value.getInt("cart.entry." + i.toString() + ".index"),
            value.getInt("cart.entry." + i.toString() + ".count")
        ));

      }

      return list;
    });

    return future;
  }
}

class CartEntry {
  int type;
  int index;
  int count;

  CartEntry(this.type, this.index, this.count);

}