import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/seat_selection_button.dart';
import 'package:flutter_train_app/home/widgets/station_selection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기차예매'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StationSelection(),
            SizedBox(height: 16),
            SeatSelectionButton(),
          ],
        ),
      ),
    );
  }
}
