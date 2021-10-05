void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
    'chickenpizza': 7.0,
    'suyapizza': 8.5,
  };
  const order = ['margherita', 'pepperoni', 'suyapizza', 'vegetarian'];
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    } else {
      print('order contains invalid item(s): $item');
    }
  }

  for (int i = 0; i < order.length; i++) {
    print('${order[i]} is \$${pizzaPrices[order[i]]}');
  }
  
  print('Total: \$$total');
}
