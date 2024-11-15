import 'package:flutter/material.dart';

class SeatChooseButton extends StatelessWidget {
  final int? selectedCol;
  final String? selectedRow;

  SeatChooseButton(this.selectedCol, this.selectedRow);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            // 버튼 클릭 시 AlertDialog 표시
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('좌석 확인'),
                  content: Text(
                    '선택한 좌석: Row $selectedRow, Column $selectedCol',
                    style: TextStyle(fontSize: 16),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // AlertDialog 닫기
                      },
                      child: Text('확인'),
                    ),
                  ],
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            '예매 하기',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}