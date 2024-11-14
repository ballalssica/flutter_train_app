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

  int? selectedRow;
  int? selectedCol;

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
              //좌석선택
              SeatChoose(selectedCol, selectedRow),
              SizedBox(height: 16),
              SeatChooseButton(selectedCol, selectedRow)
            ],
          ),
        ),
      ),
    );
  }
}

