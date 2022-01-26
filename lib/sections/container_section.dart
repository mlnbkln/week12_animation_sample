import 'package:basic_animations/gallery_screen.dart';
import 'package:flutter/material.dart';

class ContainerSection extends StatefulWidget {
  final List<String>? imageUrls;

  ContainerSection({
    required this.imageUrls,
  });

  @override
  State<ContainerSection> createState() => _ContainerSectionState();
}

class _ContainerSectionState extends State<ContainerSection> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      show = !show;
                    });
                    },
                  child: Text(show ? 'Hide Guest' : 'Show Guest'),
                ),
                OutlinedButton(
                  child: Text('Show Gallery'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GalleryScreen(widget.imageUrls),
                      ),
                    );
                  },
                ),
              ],
            ),
            Hero(
              tag: 'rabbit hero',
              child: AnimatedContainer(
              height: show ? 150 : 0,
              width: 150,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              child: Image.network(widget.imageUrls![0]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

