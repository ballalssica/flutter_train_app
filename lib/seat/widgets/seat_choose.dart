import 'package:flutter/material.dart';

class SeatChoose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SeatChooseHeader(), 
                // 아래에 다른 위젯들을 추가할 수 있음
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 좌석선택 헤더
class SeatChooseHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 30,
          child: Center(child: Text('A')),
        ),
        SizedBox(width: 10,),
        Container(
          width: 40,
          height: 30,
          child: Center(child: Text('B')),
        ),
        SizedBox(width: 10,),
        Container(
          width: 40,
          height: 30,
        ),
        SizedBox(width: 10,),
        Container(
          width: 40,
          height: 30,
          child: Center(child: Text('C')),
        ),
        SizedBox(width: 10,),
        Container(
          width: 40,
          height: 30,
          child: Center(child: Text('D')),
        ),
      ],
    );
  }
}