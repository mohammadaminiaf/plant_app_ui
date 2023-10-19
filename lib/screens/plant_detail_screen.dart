// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:plant_app/models/plant.dart';

import '/constants/colors.dart';
import '/widgets/plant_detail_app_bar.dart';
import '/widgets/plant_image.dart';
import '/widgets/plant_properties_card.dart';

class PlantDetailScreen extends StatefulWidget {
  const PlantDetailScreen({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  static const routeName = '/plant-detail-screen';

  @override
  State<PlantDetailScreen> createState() => _PlantDetailScreenState();
}

class _PlantDetailScreenState extends State<PlantDetailScreen> {
  late final PageController _controller;

  @override
  initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // app bar of the page
                  const PlantDetailAppBar(),
                  // Main part (plant and descriptions)
                  SizedBox(
                    height: 350,
                    child: Row(
                      children: [
                        Expanded(
                          child: PageView(
                            scrollDirection: Axis.vertical,
                            controller: _controller,
                            children: [
                              PlantImage(
                                url: widget.plant.imageUrl,
                              ),
                              PlantImage(
                                url: widget.plant.imageUrl,
                              ),
                              PlantImage(
                                url: widget.plant.imageUrl,
                              ),
                            ],
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 1,
                          child: SmoothPageIndicator(
                            count: 3,
                            controller: _controller,
                            axisDirection: Axis.horizontal,
                            effect: const ExpandingDotsEffect(
                              dotHeight: 7,
                              dotWidth: 7,
                              activeDotColor: AppColors.lightGreenColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    widget.plant.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Plants make your life with minimal and happy love the plants more and enjoy life.',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            // Plant Properties Card
            const PlantPropertiesCard(),
          ],
        ),
      ),
    );
  }
}
