import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TrandingMovies extends StatelessWidget {
  final List tranding;
  const TrandingMovies({Key? key, required this.tranding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: CarouselSlider.builder(
        
        itemCount: tranding.length,
        
        itemBuilder: (context, index, realIndex) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage('http://image.tmdb.org/t/p/w500' +
                        tranding[index]['poster_path'])),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
        },
        options: CarouselOptions(
          enlargeCenterPage: true,
          pageSnapping: true,
          height: 350,
          autoPlay: true,
          autoPlayAnimationDuration: Duration(seconds: 3),
        ),
      ),
    );
  }
}
