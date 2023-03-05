import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() {
    return CategoriesWidgetStates();
  }
}

class CategoriesWidgetStates extends State<CategoriesWidget> {
  final List<Item> items = [
    Item(title: 'All', image: 'assets/images/groceries.png', selected: true),
    Item(title: 'Meat', image: 'assets/images/pork-leg.png', selected: false),
    Item(
        title: 'Fast food', image: 'assets/images/burger.png', selected: false),
    Item(title: 'Sea food', image: 'assets/images/shrimp.png', selected: false),
    Item(title: 'Drinks', image: 'assets/images/drink.png', selected: false),
  ];

  String selected = 'All';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 90,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (Item item in items)
              Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = item.title;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: item.title == selected
                              ? Colors.black
                              : Colors.grey.shade200,
                          radius: 30,
                          child: Image.asset(item.image, scale: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(item.title),
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}

class Item {
  final String title;
  final String image;
  late final bool selected;

  Item({required this.title, required this.image, required this.selected});
}
