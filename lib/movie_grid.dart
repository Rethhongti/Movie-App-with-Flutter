import 'package:flutter/material.dart';
import 'package:movieapp/movieDetails.dart';
import 'package:page_transition/page_transition.dart';
import 'MovieModel.dart';
class MovieGrid extends StatelessWidget {
  final MovieModel movie;
  final bool displayPrice;
  double w = double.infinity;
  MovieGrid({this.movie,this.displayPrice});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, PageTransition(child: MovieDetails(movie: this.movie,), type: PageTransitionType.rightToLeft));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
              image: AssetImage(this.movie.image), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                    color: Colors.orange,
                  ),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(this.movie.title ,style: TextStyle(fontSize: 16,color: Colors.white),),
                      Text(this.displayPrice==false ? "":"\$ ${this.movie.price}",style: TextStyle(fontSize: 16,color: Colors.white))
                    ],
                  )),
              bottom: 0,
              left: 0,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
