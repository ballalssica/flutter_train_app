import 'package:flutter/material.dart';
import 'package:flutter_train_app/station_list/station_list_page.dart';

class StationSelection extends StatefulWidget {
  final Function(String, String) onStationSelected; // 출발역과 도착역을 전달하는 콜백 함수

  StationSelection({required this.onStationSelected});

  @override
  _StationSelectionState createState() => _StationSelectionState();
}

class _StationSelectionState extends State<StationSelection> {
  String selectedDepartureStation = '선택'; // 출발역 선택된 역 이름을 저장할 변수
  String selectedArrivalStation = '선택'; // 도착역 선택된 역 이름을 저장할 변수

  Future<void> _selectStation(bool isDeparture) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StationListPage(),
      ),
    );

    if (result != null) {
      setState(() {
        if (isDeparture) {
          selectedDepartureStation = result; // 출발역 업데이트
        } else {
          selectedArrivalStation = result; // 도착역 업데이트
        }
      });

      // 콜백 함수를 호출하여 선택된 출발역과 도착역을 전달
      widget.onStationSelected(selectedDepartureStation, selectedArrivalStation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '출발역',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  GestureDetector(
                    onTap: () => _selectStation(true), // 출발역 선택
                    child: Text(
                      selectedDepartureStation, // 선택된 출발역 이름 표시
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 2,
            height: 50,
            color: Colors.grey[400],
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '도착역',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  GestureDetector(
                    onTap: () => _selectStation(false), // 도착역 선택
                    child: Text(
                      selectedArrivalStation, // 선택된 도착역 이름 표시
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
