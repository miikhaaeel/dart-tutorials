void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.0]
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0]
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0]
    },
  ];

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    var sum = 0.0;
    var avgRating;

    for (var rating in ratings) {
      avgRating = ((sum += rating) / ratings.length).toStringAsFixed(1);
    }
    restaurant['avgRating'] = avgRating;
  }
  print(restaurants);
}
