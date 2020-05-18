import 'package:content_placeholder/content_placeholder.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.black87
      ),
      child: Column(
        children: <Widget>[
          ContentPlaceholder(
            highlightColor: Colors.white.withOpacity(0.5),
            bgColor: Colors.grey.withOpacity(0.5),
            borderRadius: 0,
            height: 220,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ContentPlaceholder(
              highlightColor: Colors.white.withOpacity(0.5),
              bgColor: Colors.grey.withOpacity(0.5),
              borderRadius: 0,
              height: 50,
              width: 220,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ContentPlaceholder(
              highlightColor: Colors.white.withOpacity(0.5),
              bgColor: Colors.grey.withOpacity(0.5),
              borderRadius: 0,
              height: 40,
              width: 100,
            ),
          ),

          SizedBox(height: 20,),

          Align(
            alignment: Alignment.centerLeft,
            child: ContentPlaceholder(
              highlightColor: Colors.white.withOpacity(0.5),
              bgColor: Colors.grey.withOpacity(0.5),
              borderRadius: 0,
              height: 10,
              width: 200,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ContentPlaceholder(
              highlightColor: Colors.white.withOpacity(0.5),
              bgColor: Colors.grey.withOpacity(0.5),
              borderRadius: 0,
              height: 10,
              width: 200,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ContentPlaceholder(
              highlightColor: Colors.white.withOpacity(0.5),
              bgColor: Colors.grey.withOpacity(0.5),
              borderRadius: 0,
              height: 10,
              width: 200,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ContentPlaceholder(
              highlightColor: Colors.white.withOpacity(0.5),
              bgColor: Colors.grey.withOpacity(0.5),
              borderRadius: 0,
              height: 10,
              width: 200,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: ContentPlaceholder(
              highlightColor: Colors.white.withOpacity(0.5),
              bgColor: Colors.grey.withOpacity(0.5),
              borderRadius: 0,
              height: 10,
              width: 200,
            ),
          ),

          SizedBox(height: 50,),

          Align(
            alignment: Alignment.centerLeft,
            child: ContentPlaceholder(
              highlightColor: Colors.white.withOpacity(0.5),
              bgColor: Colors.grey.withOpacity(0.5),
              borderRadius: 0,
              height: 30,
              width: 120,
            ),
          ),
        ],
      ),
    );
  }
}