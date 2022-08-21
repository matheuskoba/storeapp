import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/constants.dart';
import 'package:store/screens/details/components/body.dart';

import '../../models/Product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg',
          color: Colors.white
        ),
        onPressed: () => Navigator.pop(context)
      ),
      actions: [
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/search.svg")
        ),
        IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/cart.svg")
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}