import 'package:chat/ui/choose_journey_type/journey_item_view.dart';
import 'package:flutter/material.dart';

import '../../model/journey_item_model.dart';
import '../choose_journey_places/choose_journey_places.dart';

class JourneyTypeScreen extends StatelessWidget {
  const JourneyTypeScreen({super.key});
  static const String routeName = 'journey_type';
  static List<JourneyITemModel> items = <JourneyITemModel>[
    JourneyITemModel(
      imagePath: "assets/images/summer.jpg",
      title: "Summer",
    ),
    JourneyITemModel(
      imagePath: "assets/images/winter(1).jpg",
      title: "Winter",
    ),
    JourneyITemModel(
      imagePath: "assets/images/entertainment_image.jpg",
      title: "Entertainment",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Journey Type"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            items.length,
            (index) => InkWell(
              onTap: () => _navigateToJourneyPage(context, items[index].title),
              child: JourneyItemView(
                model: items[index],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToJourneyPage(BuildContext context, String journeyType) {
    switch (journeyType) {
      case "Summer":
        break;
      case "Winter":
        break;
      case "Entertainment":
        break;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ChooseJourneyPlaces(),
      ),
    );
  }
}
