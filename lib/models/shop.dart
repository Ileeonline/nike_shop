// ignore_for_file: unused_element

class Shop {
  final String imgPath;
  final String name;
  final String price;
  final String offer;
  final String description;

  Shop({
    required this.description,
    required this.offer,
    required this.imgPath,
    required this.name,
    required this.price,
  });
  get _description => description;
  get _offer => offer;
  get _imgPath => imgPath;
  get _name => name;
  get _price => price;
}

List<Shop> shopItems = [
  Shop(
    imgPath: 'assets/images/Yellow Shoe.png',
    name: 'Air Max 97',
    price: '\$20.09',
    offer: '10% OFF',
    description:
        "Experience unparalleled comfort and style with Nike Air Max shoes. Featuring iconic Air cushioning technology, these shoes provide superior impact absorption and energy return with every step. Whether you're hitting the gym or exploring the city streets, Nike Air Max shoes offer lightweight support and unbeatable performance.",
  ),
  Shop(
      imgPath: 'assets/images/rednike.png',
      name: 'React Presto',
      price: '\$25.99',
      offer: '23% OFF',
      description:
          "Discover the next generation of cushioning technology with Nike React shoes. Engineered for maximum responsiveness and flexibility, these shoes feature a lightweight foam midsole that delivers a smooth and springy ride. Whether you're running miles or running errands, Nike React shoes provide all-day comfort and support."),
  Shop(
      imgPath: 'assets/images/toppng.png',
      name: 'Air Jordan',
      price: '\$23.09',
      offer: '12% OFF',
      description:
          "Elevate your sneaker game with Nike Air Jordan shoes, inspired by basketball legend Michael Jordan. Designed for both on-court performance and off-court style, these iconic kicks blend premium materials with innovative cushioning to deliver unmatched comfort and durability. Step into a pair of Air Jordans and make a statement wherever you go."),
  Shop(
      imgPath: 'assets/images/Shoe 1.png',
      name: 'Nike Free',
      price: '\$21.09',
      offer: '14% OFF',
      description:
          "Set your feet free with Nike Free shoes. Designed to mimic the natural motion of barefoot running, these lightweight and flexible shoes allow your feet to move freely and naturally. Whether you're logging miles on the track or hitting the gym, Nike Free shoes provide a barefoot-like feel and exceptional comfort with every stride."),
  Shop(
      imgPath: 'assets/images/Yellow Shoe.png',
      name: 'Nike Zoom',
      price: '\$20.09',
      offer: '12% OFF',
      description:
          "Take your performance to the next level with Nike Zoom shoes. Featuring Zoom Air cushioning units in the heel and forefoot, these shoes provide responsive cushioning and energy return for explosive speed and agility. Whether you're sprinting, jumping, or cutting on the court, Nike Zoom shoes deliver maximum impact protection and propulsion."),
  Shop(
      imgPath: 'assets/images/rednike.png',
      name: 'Air Force 1',
      price: '\$25.99',
      offer: '11% OFF',
      description:
          "Step into timeless style with Nike Air Force 1 shoes. Originally released in 1982, these iconic sneakers have stood the test of time and remain a streetwear staple today. With a classic low-top silhouette and premium leather construction, Nike Air Force 1 shoes offer unmatched versatility and durability for everyday wear."),
  Shop(
      imgPath: 'assets/images/toppng.png',
      name: 'Nike Flyknit',
      price: '\$23.09',
      offer: '27% OFF',
      description:
          "Experience the perfect combination of form and function with Nike Flyknit shoes. Crafted with a seamless, sock-like upper, these shoes offer a snug and supportive fit that moves with your foot. With precision-engineered ventilation and targeted support, Nike Flyknit shoes are designed to enhance your performance and keep you comfortable mile after mile."),
  Shop(
      imgPath: 'assets/images/Shoe 1.png',
      name: 'Nike Blazor',
      price: '\$21.09',
      offer: '17% OFF',
      description:
          "Elevate your sneaker rotation with Nike Blazer shoes. Inspired by classic basketball sneakers, these retro-inspired kicks offer timeless style and modern comfort. With a high-top silhouette and premium suede or leather construction, Nike Blazer shoes add a vintage touch to any outfit while providing cushioned support for all-day wear."),
];
