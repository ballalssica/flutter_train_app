
import 'package:flutter/material.dart';
 
class SelectedStation extends StatelessWidget{

    final String departureStation;
   final String arrivalStation;

  SelectedStation({
    required this.departureStation,
    required this.arrivalStation,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      child: Column(
        children: [
          //선택된 역 표시
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  departureStation,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.arrow_circle_right_outlined,
                color: isDarkMode ? Colors.white : Colors.black,
                size: 30, // 아이콘 크기 조절
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  arrivalStation,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          // 선택좌석 표시 가이드
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
              SizedBox(width: 4,),
              Text('선택됨'),
              SizedBox(width: 20,),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.grey[300]!,
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
              SizedBox(width: 4,),
              Text('선택가능')
            ],
          )
        ],
      ),
    );
  }
}