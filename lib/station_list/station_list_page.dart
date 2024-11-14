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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('출발역'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.separated(
          padding: EdgeInsets.only(top: 10), 
          itemCount: stationList.length, 
          itemBuilder: (context, index) {
            return Container(
              height: 35, 
              child: ListTile(
                title: Text(
                  stationList[index],
                  textAlign: TextAlign.left, 
                ),
                onTap: () {
                  Navigator.pop(context, stationList[index]); // 선택된 항목 반환
                },
                dense: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(
            color: Colors.grey.shade300, 
            thickness: 1,
          ),
        ),
      ),
    );
  }
}


