import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  final List<String>? imageUrls;

  GalleryScreen(this.imageUrls);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rabbit\'s guests Animations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Card(
                child: SizedBox(
                  height: 200,
                  child: Hero(
                    tag: 'rabbit hero',
                  child: FadeInImage(
                    placeholder: AssetImage('images/placeholder.jpeg'),
                    image: NetworkImage(imageUrls![0]),
                  ),
                ),
              ),
            ),
            Card(
              child: SizedBox(
              height: 200,
                child: FadeInImage(
                  placeholder: AssetImage('images/placeholder.jpeg'),
                  image: NetworkImage(imageUrls![1]),
                ),
              ),
            ),
        Card(
        child: SizedBox(
          height: 200,
            child: FadeInImage(
              placeholder: AssetImage('images/placeholder.jpeg'),
              image: NetworkImage(imageUrls![2]),
            ),
          ),
        ),
        ],
        ),
      ),
    ),
    );
  }
}
