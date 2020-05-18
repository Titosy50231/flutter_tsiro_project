import 'package:design_et_animation/model/recipe.dart';
import 'package:design_et_animation/widget/page2/placeholder_list.dart';
import 'package:design_et_animation/widget/page2/recent_element.dart';
import 'package:flutter/material.dart';
import 'package:design_et_animation/service/recipe_bloc.dart';

class ListOfRecent extends StatefulWidget {
  @override
  _ListOfRecentState createState() => _ListOfRecentState();
}

class _ListOfRecentState extends State<ListOfRecent> {

  bool _isLoading = false;
  var _listItems = <Widget>[];
  final _listKey = GlobalKey<AnimatedListState>();
  final RecipeBloc _recipeBloc = RecipeBloc();

  @override
  void initState() {
    super.initState();
    _loading();
  }

  void _loading(){
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2),(){
      setState(() {
        _isLoading = false;
      });
    }).then((_){
      _loadItems();
    });
  }

  List<RecentElement> fetchedList = [];
  void _loadItems(){  
    var future = Future((){});
    for(var i = 0; i < fetchedList.length; i++){
      future = future.then((_){
        return Future.delayed(Duration(milliseconds: 300), (){
          _listItems.add(fetchedList[i]);
          _listKey.currentState.insertItem(_listItems.length - 1);
        });
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: 494,
            child: StreamBuilder(
              stream: _recipeBloc.recipeListStream,
              builder: (BuildContext context, AsyncSnapshot<List<Recipe>> snapshot){
                
                if(snapshot.hasData){
                  for(var i = 0; i < snapshot.data.length; i++){
                    fetchedList.add(RecentElement(
                      id: snapshot.data[i].id,
                      title: snapshot.data[i].name,
                      imagePath: snapshot.data[i].imagesPath,
                    ));
                  }
                }
                
                if(!_isLoading){
                  return AnimatedList(  
                    key: _listKey,               
                    initialItemCount: _listItems.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index, animation){
                      var myTween = Tween<double>(begin: 0.0, end: 1.0).chain(CurveTween(
                        curve: Curves.easeOut
                      ));
                      return FadeTransition(
                        opacity: animation.drive(myTween),
                        child: _listItems[index],
                      );
                    },
                  );
                }
                return PlaceholderList();
              }
            )
        ),
      ],
    );
  }
}
