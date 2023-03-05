import 'package:flutter/material.dart';

class PopularItems extends StatelessWidget {
  PopularItems({super.key});

  final List<Item> items = [
    Item(
        image: 'assets/images/popular-burguer.png',
        title: 'Cheese Hot Hamburguer',
        price: 8.99),
    Item(
        image: 'assets/images/popular-burguer.png',
        title: 'Supreme Cheese Hot Hamburguer',
        price: 12),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 20),
          child: Text(
            'Popular Items',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width - 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0),
                        image: DecorationImage(
                          image: AssetImage(items[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 20, right: 20),
                              child: Text(
                                items[index].title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10, left: 20, right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$${items[index].price}',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: GestureDetector(
                                          child: Container(
                                            height: 60,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: const Center(
                                                child: Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                101, 255, 255, 255),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.message,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                101, 255, 255, 255),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Item {
  final String title;
  final String image;
  final double price;

  Item({required this.title, required this.image, required this.price});
}
