void main() {
  const order = ['margherita', 'chickenpizza', 'suyapizza', 'vegetarian'];
  getOrder(order);
}

void getOrder(List orders) {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
    'chickenpizza': 7.0,
    'suyapizza': 8.5,
  };
  
  var total = 0.0;
  for (var order in orders) {
    final price = pizzaPrices[order];
    if (price != null) {
      total += price;
    } else {
      print('order contains invalid item(s): $order');
    }
  }

  for (int i = 0; i < orders.length; i++) {
    print('${orders[i]} is \$${pizzaPrices[orders[i]]}');
  }

  print('Total: \$$total');
}
