import 'package:flutter/material.dart';

class SeatChoose extends StatefulWidget {
  final int? selectedCol;
  final String? selectedRow;

  SeatChoose(this.selectedCol, this.selectedRow);

  @override
  _SeatChooseState createState() => _SeatChooseState();
}

class _SeatChooseState extends State<SeatChoose> {
  int? selectedCol;
  int? selectedRow;

  @override
  void initState() {
    super.initState();
    selectedCol = widget.selectedCol;
    selectedRow = int.tryParse(widget.selectedRow ?? ''); // String to int 변환
  }

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
                SizedBox(height: 10),
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
          SizedBox(width: 5),
          seat(rowNum, 2, 'B'),
          SizedBox(width: 5),
          Container(
            width: 40,
            height: 40,
            child: Center(
              child: Text(
                '$rowNum',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(width: 5),
          seat(rowNum, 3, 'C'),
          SizedBox(width: 5),
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
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: (selectedRow == rowNum && selectedCol == colNum)
              ? Colors.purple
              : Colors.grey,
          borderRadius: BorderRadius.circular(10),
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
          width: 40,
          height: 30,
          child: Center(child: Text('A')),
        ),
        SizedBox(width: 5),
        Container(
          width: 40,
          height: 30,
          child: Center(child: Text('B')),
        ),
        SizedBox(width: 5),
        Container(
          width: 40,
          height: 30,
        ),
        SizedBox(width: 5),
        Container(
          width: 40,
          height: 30,
          child: Center(child: Text('C')),
        ),
        SizedBox(width: 5),
        Container(
          width: 40,
          height: 30,
          child: Center(child: Text('D')),
        ),
      ],
    );
  }
}
