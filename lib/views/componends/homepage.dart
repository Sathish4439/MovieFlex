import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieflex/componets/topRated_movies.dart';
import 'package:movieflex/componets/upcommingMovies.dart';
import 'package:movieflex/views/componends/modified%20_text.dart';

import 'package:movieflex/views/componends/tranding.dart';

import 'package:tmdb_api/tmdb_api.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    loadmivies();
    super.initState();
  }

  List tradingmovies = [];
  List TopratedMovies = [];
  List UpcommingMovies = [];

  String apikey = 'e81358a3532699d4f209d40025f527b7';

  String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlODEzNThhMzUzMjY5OWQ0ZjIwOWQ0MDAyNWY1MjdiNyIsInN1YiI6IjY1OTc3YjcxYTY5OGNmMTI3YjQzYTFlMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.4TC8YSRlQnSxARg8BFJp1O15dq4-K2XUvuzoNbFO-AU';

  loadmivies() async {
    TMDB tmdbwithcustomerlogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(showErrorLogs: true, showLogs: true),
    );

    Map trandingresult = await tmdbwithcustomerlogs.v3.trending.getTrending();
    Map Topratedresult = await tmdbwithcustomerlogs.v3.movies.getTopRated();
    Map UpcommingMoviesResult =
        await tmdbwithcustomerlogs.v3.movies.getUpcoming();

    //print(trandingresult);

    setState(() {
      tradingmovies = trandingresult['results'];
      TopratedMovies = Topratedresult['results'];
      UpcommingMovies = UpcommingMoviesResult['results'];
    });

    print(tradingmovies);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Image.network(
            'https://fontmeme.com/temporary/b323a80ddb8d1da85f5aed3177a47484.png',
            height: 50,
            filterQuality: FilterQuality.high,
          ),
        ),
           backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              ModifiedText(text: "Tranding Movies"),
              SizedBox(height: 10),
              TrandingMovies(tranding: tradingmovies),
              ModifiedText(text: "Top Rated Movies"),
              SizedBox(height: 10),
              TopRattedMovies(TopratedMovies: TopratedMovies),
              SizedBox(height: 10),
              ModifiedText(text: "Upcomming Movies"),
              SizedBox(height: 10),
              UpCommingMovies(UpcommingMovies: UpcommingMovies)
            ],
          ),
        ),
      ),
    );
  }
}
