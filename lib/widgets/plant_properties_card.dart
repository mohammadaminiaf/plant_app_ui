import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/constants/colors.dart';
import '/widgets/plant_info_tile.dart';

class PlantPropertiesCard extends StatelessWidget {
  const PlantPropertiesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.only(
        left: 30,
        right: 25,
        top: 30,
        bottom: 15,
      ),
      decoration: const BoxDecoration(
        color: AppColors.lightGreenColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PlantInfoTile(
                title: 'Height',
                value: '20cm - 40cm',
                icon: FontAwesomeIcons.arrowUpWideShort,
              ),
              PlantInfoTile(
                title: 'Temperature',
                value: '20°C to 25°C',
                icon: FontAwesomeIcons.temperatureHalf,
              ),
              PlantInfoTile(
                title: 'Pot',
                value: 'Ciramic Pot',
                icon: Icons.eco,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Total price
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '\$12.99',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.realWhiteColor,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: AddToCartTile()),
            ],
          ),
        ],
      ),
    );
  }
}

class AddToCartTile extends StatelessWidget {
  const AddToCartTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.darkGreenColor,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: const Center(
        child: Text(
          'Add to Cart',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
