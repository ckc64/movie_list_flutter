// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_list/screens/details.dart';
import 'package:movie_list/store/movie_store.dart';

class MovieListScreen extends StatefulWidget {
  const MovieListScreen({Key? key}) : super(key: key);

  @override
  State<MovieListScreen> createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  MovieStore movieStore = MovieStore();
  @override
  void initState() {
    movieStore.fetchPopular();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    final items = movieStore.allPopular;

    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: true,
      body: Observer(
        builder: (_) {
          if (items.isEmpty) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          }
          var size = MediaQuery.of(context).size;

          /*24 is for notification bar on Android*/
          final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
          final double itemWidth = size.width / 1.5;
          return Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 3,
                      mainAxisSpacing: 0,
                      childAspectRatio: (itemWidth / itemHeight),
                      children: List.generate(items.length, (index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MovieDetailsScreen(
                                      movieID: items[index].id!),
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.zero,
                            child: CachedNetworkImage(
                                imageUrl: movieStore
                                    .getImage(items[index].posterPath!),
                                fit: BoxFit.fill),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
              // Container(
              //   height: 200,
              //   width: MediaQuery.of(context).size.width,
              //   foregroundDecoration: const BoxDecoration(
              //     gradient: LinearGradient(
              //       colors: [
              //         Colors.black,
              //         Colors.black45,
              //         Colors.transparent,
              //       ],
              //       begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter,
              //       stops: [0, 0.5, 0.3],
              //     ),
              //   ),
              // )
            ],
          );
        },
      ),
    );
  }
}
