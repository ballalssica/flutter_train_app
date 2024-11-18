import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat/seat_page.dart';

class SeatSelectionButton extends StatelessWidget {
  final String departureStation;
  final String arrivalStation;

  SeatSelectionButton({
    required this.departureStation,
    required this.arrivalStation,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SeatPage(
                departureStation: departureStation,
                arrivalStation: arrivalStation,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // 둥근 모서리 설정
          ),
        ),
        child: Text(
          '좌석선택',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
