import 'package:basic_animations/gallery_screen.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SimpleSection extends StatefulWidget {
  final List<String>? imageUrls;

  SimpleSection({
    required this.imageUrls,
  });

  @override
  State<SimpleSection> createState() => _SimpleSectionState();
}

class _SimpleSectionState extends State<SimpleSection> {
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
                DropdownButton(
                  hint: Text("Gallery",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  ),
                  items: dropdownItems,
                  onChanged: (value) { Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => GalleryScreen(widget.imageUrls),
                    ),
                  );
                      },
                ),
            ]),
            SizedBox(
              height: show ? 150 : 0,
              width: 150,
              child: Image.network(widget.imageUrls![0]),
            ),
          ],
        ),
      ),
    );
  }
}

