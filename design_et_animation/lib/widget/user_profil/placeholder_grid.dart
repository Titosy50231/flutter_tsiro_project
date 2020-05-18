import 'package:content_placeholder/content_placeholder.dart';
import 'package:flutter/material.dart';

class PlaceholderGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: <Widget>[
            ContentPlaceholder(
              borderRadius: 0,
              height: 84,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ContentPlaceholder(
                width: 80,
                borderRadius: 0,
                height: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}