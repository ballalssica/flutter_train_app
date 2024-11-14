import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat/widgets/selected_station.dart';

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
            SelectedStation(
              departureStation: departureStation,
              arrivalStation: arrivalStation,
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Container Content',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // 버튼 클릭 시 수행할 작업
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                backgroundColor: Colors.purple,
              ),
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}

