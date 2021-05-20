import 'package:flutter/material.dart';
import 'package:movieapp/MovieModel.dart';

class MovieDetails extends StatefulWidget {
  final MovieModel movie;

  MovieDetails({this.movie});

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.movie.title),
          backgroundColor: Colors.black26,
          elevation: 0,
          centerTitle: true,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.movie.image), fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Text(
                  widget.movie.title,
                  style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.6),
                indent: 20,
                endIndent: 20,
                thickness: 1.5,
                height: 25,
              ),
              Container(
                  width: double.infinity,
                  height: 100,
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Durations: ${widget.movie.duration} min",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      Text("Price: ${widget.movie.price}\$",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      Text("Type: ${widget.movie.type}",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ],
                  ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.6),
                indent: 20,
                endIndent: 20,
                thickness: 1.5,
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    color: Colors.orange,
                    child: Text("Booking",style: TextStyle(fontSize: 20),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    onPressed: (){}
                ),
              ),
            ],
          ),
        ));
  }
}
