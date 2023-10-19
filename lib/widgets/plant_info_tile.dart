import 'package:flutter/material.dart';

import '/constants/colors.dart';

class PlantInfoTile extends StatelessWidget {
  const PlantInfoTile({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: AppColors.realWhiteColor,
          size: 22,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            color: AppColors.realWhiteColor,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat',
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            fontSize: 11,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w400,
            fontFamily: 'Montserrat',
          ),
        ),
      ],
    );
  }
}
