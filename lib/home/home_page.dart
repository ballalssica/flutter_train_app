import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/seat_selection_button.dart';
import 'package:flutter_train_app/home/widgets/station_selection.dart';

class HomePage extends StatelessWidget {
  final String departureStation = '서울'; // 예시 출발역
  final String arrivalStation = '부산'; // 예시 도착역

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
            StationSelection(), // StationSelection 위젯 추가
            SizedBox(height: 16), // 위젯 간격
            SeatSelectionButton( ), // SeatSelectionButton 위젯 추가
          ],
        ),
      ),
    );
  }
}