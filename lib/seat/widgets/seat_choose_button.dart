import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatChooseButton extends StatelessWidget {
  final int? selectedCol;
  final String? selectedRow;

  SeatChooseButton(this.selectedCol, this.selectedRow); // 생성자에서 값을 받도록 설정

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text('예매 하시겠습니까?'),
                  content: Text('좌석 : $selectedRow - $selectedCol'),
                  actions: [
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('취소'),
                    ),
                    CupertinoDialogAction(
                      isDestructiveAction: true,
                      onPressed: () {},
                      child: Text('확인'),
                    ),
                  ],
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
            ),
          ),
          child: Text(
            '예매 하기 ',
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