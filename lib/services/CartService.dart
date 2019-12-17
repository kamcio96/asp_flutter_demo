import 'package:shared_preferences/shared_preferences.dart';

class CartService {

  static Future<List<CartEntry>> getCartEntries() async {

    var sharedPreference = await SharedPreferences.getInstance();

    var cartCount = sharedPreference.getInt("cart.count");

    var list = List<CartEntry>(cartCount);

    for (int i = 0; i < cartCount; i++) {

      list.add(CartEntry(
          sharedPreference.getInt("cart.entry." + i.toString() + ".type"),
          sharedPreference.getInt("cart.entry." + i.toString() + ".index"),
          sharedPreference.getInt("cart.entry." + i.toString() + ".count")
      ));

    }

    return list;
  }
}

class CartEntry {
  int type;
  int index;
  int count;

  CartEntry(this.type, this.index, this.count);

}