import 'package:flutter/material.dart';

class PlantsAppBar extends StatelessWidget {
  const PlantsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: Navigator.of(context).pop,
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        const Text(
          'Search Products',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/avatar.jpeg'),
        ),
      ],
    );
  }
}
