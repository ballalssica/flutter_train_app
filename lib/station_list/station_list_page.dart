import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        iconTheme: IconThemeData(color: isDarkMode ? Colors.white : Colors.black),
        title: Text(
          '출발역',
          style: TextStyle(color: isDarkMode ? Colors.white : Colors.black,),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: isDarkMode ? Colors.black : Colors.white,
        child: ListView.builder(
          padding: EdgeInsets.only(top: 10),
          itemCount: stationList.length,
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
                  stationList[index],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context, stationList[index]); // 선택된 항목 반환
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
