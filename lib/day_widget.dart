import 'package:flutter/material.dart';

class DayOfWeek extends StatelessWidget {
  final String day;
  final Color color;
  DayOfWeek({this.day,this.color= Colors.blue});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: this.color
      ),
      child: Center(child: Text(this.day,
      style: TextStyle(color: Colors.white, fontSize: 18),)),
    );
  }
}
