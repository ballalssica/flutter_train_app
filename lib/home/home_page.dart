import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/seat_selection_button.dart';
import 'package:flutter_train_app/home/widgets/station_selection.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedDepartureStation = '출발역 선택';
  String selectedArrivalStation = '도착역 선택';

  void updateStations(String departure, String arrival) {
    setState(() {
      selectedDepartureStation = departure;
      selectedArrivalStation = arrival;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('기차예매'),
        centerTitle: true,
      ),
      body: Container(
        color: isDarkMode ? Colors.black : Colors.grey[200],
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StationSelection(
                onStationSelected: updateStations,
              ), //출발역과 도착역 선택
              SizedBox(height: 20),
              SeatSelectionButton( //좌석선택버튼
                departureStation: selectedDepartureStation,
                arrivalStation: selectedArrivalStation,
              ),
            ],
          ),
        ),
      ),
    );
  }
}