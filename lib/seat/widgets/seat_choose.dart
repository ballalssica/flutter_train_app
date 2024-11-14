import 'package:flutter/material.dart';

class SeatChoose extends StatelessWidget {
  SeatChoose(this.selectedCol, this.selectedRow);

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
                SizedBox(height: 10,),
                row(1),
                SizedBox(height: 10,),
                row(2),
                SizedBox(height: 10,),
                row(3),
                SizedBox(height: 10,),
                row(4),
                SizedBox(height: 10,),
                row(5),
                SizedBox(height: 10,),
                row(6),
                SizedBox(height: 10,),
                row(7),
                SizedBox(height: 10,),
                row(8),
                SizedBox(height: 10,),
                row(9),
                SizedBox(height: 10,),
                row(10),
                SizedBox(height: 10,),
                row(11),
                SizedBox(height: 10,),
                row(12),
                SizedBox(height: 10,),
                row(13),
                SizedBox(height: 10,),
                row(14),
                SizedBox(height: 10,),
                row(15),
                SizedBox(height: 10,),
                row(16),
                SizedBox(height: 10,),
                row(17),
                SizedBox(height: 10,),
                row(18),
                SizedBox(height: 10,),
                row(19),
                SizedBox(height: 10,),
                row(20),
              ],
            ),
          ),
        ),
      ),
    );
  }

// SeatBox Row
  Widget row(int rowNum, int colNum) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    seat(),
                    SizedBox(width: 5,),
                    seat(),
                    SizedBox(width: 5,),
                    Container(
                      width: 40,
                      height: 40,
                      child: Center(
                        child: Text(
                          '$rowNum',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      ),
                    SizedBox(width: 5,),
                    seat(),
                    SizedBox(width: 5,),
                    seat(),
                  ],
                ),
    );
  }
}


// 좌석위젯
Widget seat() {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      color: Colors.black12,
      borderRadius: BorderRadius.circular(10),
    ),
  );
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
        SizedBox(width: 5,),
        Container(
          width: 40,
          height: 30,
          child: Center(child: Text('B')),
        ),
        SizedBox(width: 5,),
        Container(
          width: 40,
          height: 30,
        ),
        SizedBox(width: 5,),
        Container(
          width: 40,
          height: 30,
          child: Center(child: Text('C')),
        ),
        SizedBox(width: 5,),
        Container(
          width: 40,
          height: 30,
          child: Center(child: Text('D')),
        ),
      ],
    );
  }
}



