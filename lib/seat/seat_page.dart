import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  final String departureStation;
  final String arrivalStation;

  SeatPage({
    required this.departureStation,
    required this.arrivalStation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('좌석 선택'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '출발역: $departureStation',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '도착역: $arrivalStation',
              style: TextStyle(fontSize: 20),
            ),
            // 좌석 선택 기능을 이곳에 추가할 수 있습니다.
          ],
        ),
      ),
    );
  }
}
