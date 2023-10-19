import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '/models/plant.dart';
import '/widgets/plant_card.dart';

class PlantsList extends StatelessWidget {
  const PlantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.builder(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: dummyPlants.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Text(
              'Found\n10 Results',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            );
          }

          final plant = dummyPlants[index - 1];

          return PlantCard(
            plant: plant,
          );
        },
      ),
    );
  }
}
