class Services {
  final String title;
  final int days;
  final double price;
  int inCart;

  Services({
    required this.title,
    required this.days,
    required this.price,
    required this.inCart,
  });

  void incrementCount() {
    inCart++;
  }

  void decrementCount() {
    if (inCart > 0) inCart--;
  }

}