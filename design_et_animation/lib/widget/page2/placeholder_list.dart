import 'package:content_placeholder/content_placeholder.dart';
import 'package:flutter/material.dart';

class PlaceholderList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Container(
        height: 487,
        child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index){
          return Container(
            child: Row(
              children: <Widget>[
                ContentPlaceholder(
                  width: 100,
                  height: 100,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Column(
                      children: <Widget>[
                        ContentPlaceholder(
                          width: 180,
                          height: 20,
                        ),

                        ContentPlaceholder(
                            width: 180,
                            height: 12,
                          ),

                        ContentPlaceholder(
                            width: 180,
                            height: 20,
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ) 
    );
  }
}
