import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movieapp/movie_grid.dart';
import 'MovieModel.dart';
class MovieScreen extends StatefulWidget {
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: movieDB.length,
          itemBuilder: (context, index) => Container(child: MovieGrid(movie: movieDB[index],)),
          staggeredTileBuilder: (index)=> StaggeredTile.count(2, 3),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
