
import 'package:flutter/material.dart';

class SeatSelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
          ),
        ),
        child: Text(
          '좌석선택',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
