import 'package:flutter/material.dart';

import 'hotel_item_view.dart';

class ChooseHotelView extends StatelessWidget {
  const ChooseHotelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Hotel"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8),
        child: ListView.separated(
          itemBuilder: (context, index) => const HotelItemView(),
         separatorBuilder: (context, index) => const SizedBox(height: 15),
          itemCount: 20,
        ),
      ),
    );
  }
}
