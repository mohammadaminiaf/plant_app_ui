import 'package:flutter/material.dart';

import '/constants/colors.dart';
import '/widgets/plants_appbar.dart';
import '/widgets/plants_list.dart';
import '../widgets/search_text_field.dart';
import '/widgets/settings_icon.dart';

class PlantsScreen extends StatefulWidget {
  const PlantsScreen({super.key});

  static const routeName = '/plants-screen';

  @override
  State<PlantsScreen> createState() => _PlantsScreenState();
}

class _PlantsScreenState extends State<PlantsScreen> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 15),
              // AppBar
              const PlantsAppBar(),
              const SizedBox(height: 15),
              // Search and Settings Part
              Row(
                children: [
                  Expanded(
                    child: SearchTextField(
                      controller: _searchController,
                    ),
                  ),
                  const SizedBox(width: 15),
                  const SettingsIcon(),
                ],
              ),
              const SizedBox(height: 20),
              // Plants List
              const PlantsList(),
            ],
          ),
        ),
      ),
    );
  }
}
