import 'package:flutter/material.dart';

import '/constants/colors.dart';

class RoundNextButton extends StatelessWidget {
  const RoundNextButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: const CircleAvatar(
        radius: 45,
        backgroundColor: AppColors.lightGreenColor,
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 60,
        ),
      ),
    );
  }
}
