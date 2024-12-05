void main() {
  void calculateTotal(List<int> listOfPrices) {
    int sum = 0;
    for (int value in listOfPrices) {
      sum += value;
    }
    print("Total: $sum");
  }

  void filterPrices(List<int> listOfPrices) {
    listOfPrices.removeWhere((val) => val < 10);
    print("Filtered Prices: $listOfPrices");
  }

  void applyDiscount(List<int> listOfPrices, double discount_percent) {
    for (int price in listOfPrices) {
        double new_price = (discount_percent/100) * price;
        print(new_price);
    }
  }

  double calculateFactorialDiscount(int n) {
    if (n == 0 || n == 1) {
      return 1.0;
    }
    return n * calculateFactorialDiscount(n - 1);
  }

  List<int> myList = [10, 20, 15, 12, 30, 5];
  calculateTotal(myList);
  filterPrices(myList);
  applyDiscount(myList, 10);
  int numberOfItems = myList.length;
  double discount = calculateFactorialDiscount(numberOfItems);
  print("Number of items in cart: $numberOfItems");
  print("Special discount: $discount%");
  applyDiscount(myList, discount);
}
