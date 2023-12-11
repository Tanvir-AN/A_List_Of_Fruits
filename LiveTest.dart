void main() {
  // Create a list of fruits
  List<Map<String, dynamic>> fruits = [
    {
      'name': 'Apple',
      'color': 'Red',
      'price': 2.50,
    },
    {
      'name': 'Banana',
      'color': 'Yellow',
      'price': 1.25,
    },
    {
      'name': 'Orange',
      'color': 'Orange',
      'price': 3.00,
    },
  ];

  // Function to display fruit details
  void displayFruitDetails(List<Map<String, dynamic>> fruits) {
    for (var fruit in fruits) {
      print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: ${fruit['price']}');
    }
  }

  // Function to apply price discount
  void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discount) {
    for (var fruit in fruits) {
      fruit['price'] = fruit['price'] * (1 - discount / 100);
    }
  }

  // Display initial fruit details
  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  // Apply a 10% discount
  applyPriceDiscount(fruits, 10);

  // Display fruit details after discount
  print('\nFruit Details after 10% discount:');
  displayFruitDetails(fruits);
}