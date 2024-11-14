
import 'package:flutter/material.dart';

class SeatChoose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      '중앙 Container의 긴 내용\n' * 40, 
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            );
  }
}