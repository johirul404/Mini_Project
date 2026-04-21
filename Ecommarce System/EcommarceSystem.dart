class Product {
  Product(this._name, this._price);
  String _name;
  double _price;

  String get name => _name;
  double get price => _price;
}

class Cart {
  List<Product> _products = [];
  void addProduct(Product p) {
    _products.add(p);
  }

  double getTotalPrice() {
    double total = 0;
    for (var n in _products) {
      total += n.price;
    }
    return total;
  }

  double applyDiscount(double percentage) {
    double finalPrice = getTotalPrice();
    if (percentage >= 0 && percentage <= 50) {
      finalPrice -= finalPrice * (percentage / 100);
    } else {
      throw Exception("Discount must be between 0–50%");
    }
    return finalPrice;
  }
}

class User {
  User(this._name);
  String _name;
  Cart _cart = Cart();
  String get name => _name;

  void addToCart(Product p) {
    _cart.addProduct(p);
  }

  void checkout(double percent) {
    double total_price = _cart.getTotalPrice();
    print("Total price: $total_price");
    double after_discount = _cart.applyDiscount(percent);
    print("After discount: ${after_discount}");
  }
}

main() {
  Product p1 = Product("Phone", 20000);
  Product p2 = Product("Head Phone", 2000);
  User user = User("Md Johirul Islam");
  user.addToCart(p1);
  user.addToCart(p2);
  user.checkout(10);
}
