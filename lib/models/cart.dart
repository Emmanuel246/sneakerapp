import 'shoe.dart';

class Cart {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordans',
      price: '220',
      decription: 'New colors, fresh textures. Here\'s your updated AJ1 with that familiar feel. This all-time favorite is made of premium materials and decked out with subtle accents, giving you a staple sneaker with modern expression.',
      imagePath: 'lib/images/sneaker_1.png',
    ),
        Shoe(
      name: 'Air Max',
      price: '515',
      decription: 'Nike\'s first lifestyle Air Max shoe is everything you imagined with the Nike Air Max 270. What we love most (for obvious reasons): the BIG, bold wraparound 270 Air unit to showcase our greatest technology everywhere you go.',
      imagePath: 'lib/images/sneaker_2.png',
    ),
            Shoe(
      name: 'Nike Air Max Plus',
      price: '160',
      decription: 'Let your attitude have the edge with flame-like caging that adds heat to the streets while airy mesh keeps you cool. The Air Max Plus gives you a tuned Nike Air experience that offers premium stability and unbelievable cushioning.',
      imagePath: 'lib/images/sneaker_3.png',
    ),
            Shoe(
      name: 'Air Jordan 1 Retro High OG "Latte"',
      price: '180',
      decription: 'This iteration of the AJ1 reimagines Mike\'s first signature model with a fresh mix of colors. Premium materials, soft cushioning and a padded ankle collar offer total support and celebrate the shoe that started it all.',
      imagePath: 'lib/images/sneaker_4.png',
    ),
                Shoe(
      name: 'Nike Waffle Debut SE',
      price: '110',
      decription: 'Retro running style gets modernized in this special edition Nike Waffle Debut. Era-echoing suede and nylon pair with a modern wedge-shaped midsole for a look that feels fresh and classic. Of course, we kept our tried, true and trusted Waffle outsole on the bottom to add durable traction and a touch of character to your every step.',
      imagePath: 'lib/images/sneaker_5.png',
    ),
                    Shoe(
      name: 'Nike Go FlyEase',
      price: '125',
      decription: 'Ditch the laces and get outside. These kicks feature Nike\'s revolutionary FlyEase technology, making on-and-off a breeze. With a heel that pivots open for a totally hands-free entry, they\'re great for people with limited mobility—or anyone who wants a quicker way to get going.',
      imagePath: 'lib/images/sneaker_9.png',
    ),
                        Shoe(
      name: 'Nike Dunk High',
      price: '130',
      decription: 'Created for the hardwood but taken to the streets, the \'80s b-ball icon returns with crisp leather and retro colors. The classic hoops design channels \'80s vintage back onto the streets while the padded, high-top collar adds an old-school look rooted to comfort.',
      imagePath: 'lib/images/sneaker_10.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }
  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }
  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }
  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}