import 'package:flutter/material.dart';

class PlantImage extends StatelessWidget {
  const PlantImage({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 24,
      ),
      child: Image.asset(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
