import 'package:flutter/material.dart';

// 출도착역 리스트

class StationListPage extends StatelessWidget {
  final List<String> stationList = [
    '수서',
    '동탄',
    '평택지제',
    '천안아산',
    '오송',
    '대전',
    '김천구미',
    '동대구',
    '경주',
    '울산',
    '부산',
  ];

  final String? excludeStation;

  StationListPage({this.excludeStation});

  @override
  Widget build(BuildContext context) {
    // 출발역을 제외한 필터링된 리스트 생성
    final filteredStationList = stationList
        .where((station) => station != excludeStation)
        .toList();

    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        iconTheme: IconThemeData(color: isDarkMode ? Colors.white : Colors.black),
        title: Text(
          '역 선택',
          style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: isDarkMode ? Colors.black : Colors.white,
        child: ListView.builder(
          padding: EdgeInsets.only(top: 10),
          itemCount: filteredStationList.length, 
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey[300]!,
                    width: 1.0,
                  ),
                ),
              ),
              child: ListTile(
                title: Text(
                  filteredStationList[index], 
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context, filteredStationList[index]);
                },
                dense: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
            );
          },
        ),
      ),
    );
  }
}
