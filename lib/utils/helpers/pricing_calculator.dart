class PricingCalculatorApp {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static double calculateDiscountedPrice(double price, double discount) {
    return price - (price * discount) / 100;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }
}

double getShippingCost(String location) {
  var items = [
    {
    'name': 'fdkj',
    'avg': [4.0, 5.0, 8.0],
  },
  {
    'name': 'fdkj',
    'avg': [4.0, 5.0, 8.0],
  },

  ];



  return 5.00;
}
