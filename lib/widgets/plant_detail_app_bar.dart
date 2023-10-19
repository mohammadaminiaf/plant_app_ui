import 'package:flutter/material.dart';

class PlantDetailAppBar extends StatelessWidget {
  const PlantDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
          const Icon(Icons.shopping_cart_outlined),
        ],
      ),
    );
  }
}
