import 'package:flutter/material.dart';
import 'package:flutter_train_app/station_list/station_list_page.dart';

// 출발역 도착역 선택 위젯

class StationSelection extends StatefulWidget {
  final Function(String, String) onStationSelected;

  StationSelection({required this.onStationSelected});

  @override
  _StationSelectionState createState() => _StationSelectionState();
}

class _StationSelectionState extends State<StationSelection> {
  String selectedDepartureStation = '선택';
  String selectedArrivalStation = '선택';

  Future<void> _selectStation(bool isDeparture) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StationListPage(
          excludeStation: isDeparture ? null : selectedDepartureStation,
        ), // 출발역 선택 시 제외값 없음, 도착역 선택 시 출발역 제외
      ),
    );

    if (result != null) {
      setState(() {
        if (isDeparture) {
          selectedDepartureStation = result;
        } else {
          selectedArrivalStation = result;
        }
      });

      widget.onStationSelected(selectedDepartureStation, selectedArrivalStation);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isDarkMode ? Colors.grey[800] : Colors.white,
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
                    onTap: () => _selectStation(true),
                    child: Text(
                      selectedDepartureStation,
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
                    onTap: () => _selectStation(false),
                    child: Text(
                      selectedArrivalStation,
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
