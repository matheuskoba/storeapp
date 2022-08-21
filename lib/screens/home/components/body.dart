import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/models/Product.dart';
import 'package:store/screens/details/details_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Women",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
        ),
        const Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75
                ),
                itemBuilder: (context, index) {
                    final item = products[index];
                    return ItemCard(
                      product: item,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailsScreen(product: item))
                        );
                      }
                  );
                }
              ),
            )
        )
      ],
    );
  }
}
