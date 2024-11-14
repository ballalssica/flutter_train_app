
import 'package:flutter/material.dart';

class SeatChooseButton extends StatelessWidget {
  SeatChooseButton(this.selectedCol, this.selectedRow);

  int? selectedCol;
  String? selectedRow;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // 버튼 클릭 시 수행할 작업
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
        ),
      ),
      child: Text(
        '좌석 선택',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}