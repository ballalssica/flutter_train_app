import 'package:flutter/material.dart';

class SeatChoose extends StatefulWidget {
  final Function(int, String) onSeatSelected; // 콜백 함수 추가

  SeatChoose({required this.onSeatSelected});

  @override
  _SeatChooseState createState() => _SeatChooseState();
}

class _SeatChooseState extends State<SeatChoose> {
  int? selectedCol;
  int? selectedRow;

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
                SeatBoxHeader(),
                SizedBox(height: 8),
                for (int i = 1; i <= 20; i++) ...[
                  row(i),
                  SizedBox(height: 10),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  // SeatBox Row
  Widget row(int rowNum) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          seat(rowNum, 1, 'A'),
          SizedBox(width: 4),
          seat(rowNum, 2, 'B'),
          SizedBox(width: 4),
          Container(
            width: 50,
            height: 50,
            child: Center(
              child: Text(
                '$rowNum',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(width: 4),
          seat(rowNum, 3, 'C'),
          SizedBox(width: 4),
          seat(rowNum, 4, 'D'),
        ],
      ),
    );
  }

  // 좌석 위젯
  Widget seat(int rowNum, int colNum, String colLabel) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedRow = rowNum;
          selectedCol = colNum;
        });
        // 콜백 함수 호출
        widget.onSeatSelected(rowNum, colLabel);
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: (selectedRow == rowNum && selectedCol == colNum)
              ? Colors.purple
              : Colors.grey[300]!,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

// SeatBoxHeader
class SeatBoxHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Center(
            child: Text(
              'A',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(width: 4),
        Container(
          width: 50,
          height: 50,
          child: Center(
            child: Text(
              'B',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(width: 4),
        Container(
          width: 50,
          height: 50,
        ),
        SizedBox(width: 4),
        Container(
          width: 50,
          height: 50,
          child: Center(
            child: Text(
              'C',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(width: 4),
        Container(
          width: 50,
          height: 50,
          child: Center(
            child: Text(
              'D',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
