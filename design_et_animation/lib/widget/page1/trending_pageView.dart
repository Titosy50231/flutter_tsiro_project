import 'package:design_et_animation/model/recipe.dart';
import 'package:design_et_animation/service/recipe_bloc.dart';
import 'package:design_et_animation/widget/page1/trending_element.dart';
import 'package:flutter/material.dart';

class TrendingPageView extends StatefulWidget {

  @override
  _TrendingPageViewState createState() => _TrendingPageViewState();
}

class _TrendingPageViewState extends State<TrendingPageView> {

  int currentPage = 0;
  PageController _controller = PageController(initialPage: 0, viewportFraction: 0.9);
 
  final RecipeBloc _recipeBloc = RecipeBloc();

  @override
  void dispose() {
    _recipeBloc.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      int next = _controller.page.round();
      

      if(currentPage != next){
        setState(() {
          currentPage = next;
        });
      }

    });
  }

 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 490),
          child: Container(
            height: 120,
            child: StreamBuilder<List<Recipe>>(
              stream: _recipeBloc.recipeListStream,
              builder: (BuildContext context, AsyncSnapshot<List<Recipe>> snapshot){
                return PageView.builder(
                  itemCount: snapshot.data.length,
                  controller: _controller,
                  itemBuilder: (context, index) {
                    if(snapshot.hasData){
                      bool active = index == currentPage;
                      return TrendingElement(
                        id: snapshot.data[index].id,
                        title: snapshot.data[index].name,
                        imagePath: snapshot.data[index].imagesPath,
                        active: active,
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator()
                    );
                  },
                );
              }
            )
          ),
        ),
      ],
    );
  }
}