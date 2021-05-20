import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/day_widget.dart';
import 'package:movieapp/movie_grid.dart';
import 'MovieModel.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var width = double.infinity;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage("images/movie.jpg"), fit: BoxFit.cover),
            ),
            width: width,
            height: 180,
          ),
          Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              width: width,
              child: Text(
                "This week:",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18,color: Colors.white),)
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: width,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 5,
              children: [
                DayOfWeek(day: "Mon"),
                DayOfWeek(day: "Tue"),
                DayOfWeek(day: "Wed"),
                DayOfWeek(day: "Thu"),
                DayOfWeek(day: "Fri"),
                DayOfWeek(day: "Sat",color: Colors.orange,),
                DayOfWeek(day: "Sun",color: Colors.red,),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20,bottom: 10),
              width: width,
              child: Text(
                "Top Movie:",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18,color: Colors.white),)
          ),
          _buildFamousMovie,
        ],
      ),
    );
  }

  get _buildFamousMovie{
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: famousMovie.map((movie) {
          return Container(
            child: MovieGrid(
              movie: movie,
              displayPrice: false,
            ),
            width: 150,
            height: 200,
            margin: EdgeInsets.only(right: 8),
          );
        }).toList(),
      ),
    );
  }
}
