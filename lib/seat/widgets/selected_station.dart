
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
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              departureStation,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 8),
          Icon(
            Icons.arrow_circle_right_outlined,
            color: Colors.black,
            size: 30, // 아이콘 크기 조절
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              arrivalStation,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}