import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/constants/colors.dart';

class SettingsIcon extends StatelessWidget {
  const SettingsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.realWhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const RotatedBox(
        quarterTurns: 2,
        child: FaIcon(
          FontAwesomeIcons.sliders,
          size: 25,
          color: Colors.black,
        ),
      ),
    );
  }
}
