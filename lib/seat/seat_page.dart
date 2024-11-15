import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat/widgets/seat_choose.dart';
import 'package:flutter_train_app/seat/widgets/seat_choose_button.dart';
import 'package:flutter_train_app/seat/widgets/selected_station.dart';

class SeatPage extends StatefulWidget {
  final String departureStation;
  final String arrivalStation;

  SeatPage({
    required this.departureStation,
    required this.arrivalStation,
  });

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  int? selectedCol;
  String? selectedRow;

  // Callback 함수로 SeatChoose에서 좌석 선택 시 호출
  void onSeatSelected(int col, String row) {
    setState(() {
      selectedCol = col;
      selectedRow = row;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('좌석 선택'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectedStation(
                departureStation: widget.departureStation,
                arrivalStation: widget.arrivalStation,
              ),
              SizedBox(height: 16),
              // 좌석 선택 - Callback 함수 추가
              SeatChoose(onSeatSelected: onSeatSelected),
              SizedBox(height: 16),
              SeatChooseButton(selectedCol, selectedRow),
            ],
          ),
        ),
      ),
    );
  }
}
