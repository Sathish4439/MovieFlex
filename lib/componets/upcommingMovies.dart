import 'package:flutter/material.dart';

class UpCommingMovies extends StatelessWidget {
  final List UpcommingMovies;
  const UpCommingMovies({super.key, required this.UpcommingMovies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        // Provide a unique key to the ListView.builder
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 200, // Set your desired width
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('http://image.tmdb.org/t/p/w500' +
                        UpcommingMovies[index]['poster_path'])),
              ),
            ),
          );
        },
      ),
    );
  }
}
