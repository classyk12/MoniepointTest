class Item {
  String? image;
  String? title;
  String? body;
  double? rating;
  String? totalReviews;
  String? amount;
  bool? isLiked;

  Item({
    this.image,
    this.title,
    this.body,
    this.rating,
    this.totalReviews,
    this.amount,
    this.isLiked,
  });
}

List<Item> getItems() {
  return [
    Item(
        image: 'cloth1.png',
        title: 'Shirt',
        body: 'Essential Men\'s Short-Sleeve Crewneck T-shirt ',
        rating: 4.9,
        totalReviews: '2344',
        amount: '12.00',
        isLiked: false),
    Item(
        image: 'cloth2.png',
        title: 'Shirt',
        body: 'Essential Women\'s Long-Sleeve Open T-shirt ',
        rating: 4.9,
        totalReviews: '9344',
        amount: '24.00',
        isLiked: true),
    Item(
        image: 'cloth3.png',
        title: 'Shirt',
        body: 'Essential Women\'s Short-Sleeve Open T-shirt ',
        rating: 4.9,
        totalReviews: '1344',
        amount: '18.00',
        isLiked: false),
    Item(
        image: 'cloth4.png',
        title: 'Shirt',
        body: 'Essential Men\'s Short-Sleeve Crewneck T-shirt ',
        rating: 4.9,
        totalReviews: '9944',
        amount: '12.00',
        isLiked: true),
    Item(
        image: 'cloth5.png',
        title: 'Shirt',
        body: 'Essential Men\'s Short-Sleeve Crewneck T-shirt ',
        rating: 4.9,
        totalReviews: '1844',
        amount: '10.00',
        isLiked: false),
    Item(
        image: 'cloth6.png',
        title: 'Shirt',
        body: 'Essential Men\'s Short-Sleeve Crewneck T-shirt ',
        rating: 4.9,
        totalReviews: '2344',
        amount: '9.00',
        isLiked: true),
    Item(
        image: 'cloth7.png',
        title: 'Shirt',
        body: 'Essential Men\'s Short-Sleeve Crewneck T-shirt ',
        rating: 4.9,
        totalReviews: '2344',
        amount: '19.00',
        isLiked: false),
    Item(
        image: 'cloth8.png',
        title: 'Shirt',
        body: 'Essential Unisex\'s Short-Sleeve Crewneck T-shirt ',
        rating: 4.9,
        totalReviews: '2344',
        amount: '89.00',
        isLiked: false),
    Item(
        image: 'cloth2.png',
        title: 'Shirt',
        body: 'Unisex Short-Sleeve Crewneck T-shirt ',
        rating: 4.9,
        totalReviews: '2344',
        amount: '14.00',
        isLiked: false),
    Item(
        image: 'cloth4.png',
        title: 'Shirt',
        body: 'Essential Women\'s Short-Sleeve Crewneck T-shirt ',
        rating: 4.9,
        totalReviews: '2344',
        amount: '13.00',
        isLiked: false),
  ];
}
