import 'dart:async';

import 'package:design_et_animation/model/recipe.dart';

class RecipeBloc {

  List<Recipe> _recipeList = [
    Recipe(
      id: "1",
      name: "Recette 01",
      imagesPath: "assets/image/recette1.jpg",
    ),
    Recipe(
      id: "2",
      name: "Recette 02",
      imagesPath: "assets/image/recette2.jpg",
    ),
    Recipe(
      id: "3",
      name: "Recette 03",
      imagesPath: "assets/image/recette3.jpg",
    ),
    Recipe(
      id: "4",
      name: "Recette 04",
      imagesPath: "assets/image/recette4.jpg",
    ),
    Recipe(
      id: "5",
      name: "Recette 05",
      imagesPath: "assets/image/recette5.jpg",
    ),
    Recipe(
      id: "6",
      name: "Recette 06",
      imagesPath: "assets/image/recette6.jpg",
    ),
    Recipe(
      id: "7",
      name: "Recette 07",
      imagesPath: "assets/image/recette7.jpg",
    ),
    Recipe(
      id: "8",
      name: "Recette 08",
      imagesPath: "assets/image/recette8.jpg",
    ),
    Recipe(
      id: "9",
      name: "Recette 09",
      imagesPath: "assets/image/recette9.jpg",
    ),
    Recipe(
      id: "10",
      name: "Recette 10",
      imagesPath: "assets/image/recette10.jpg",
    ),
  ];


  final _recipeListStreamController = StreamController<List<Recipe>>();


  // for update add and delete
  final _recipeCreateStreamController = StreamController<Recipe>();
  final _recipeUpdateStreamController = StreamController<Recipe>();
  final _recipeDeleteStreamController = StreamController<Recipe>();

  //getters

  Stream<List<Recipe>> get recipeListStream => 
  _recipeListStreamController.stream;

  StreamSink<List<Recipe>> get recipeListSink =>
  _recipeListStreamController.sink;

  StreamSink<Recipe> get createRecipe => 
  _recipeCreateStreamController.sink;

  StreamSink<Recipe> get updateRecipe => 
  _recipeUpdateStreamController.sink;

  StreamSink<Recipe> get deleteRecipe => 
  _recipeDeleteStreamController.sink;


  RecipeBloc(){
    _recipeListStreamController.add(_recipeList);

    _recipeCreateStreamController.stream.listen(_createRecipe);
    _recipeDeleteStreamController.stream.listen(_deleteRecipe);
  }

  _createRecipe(Recipe recipe){
    // core here
    _recipeList.add(recipe);
    recipeListSink.add(_recipeList);
  }


  _deleteRecipe(Recipe recipe){
    // core here
    
    recipeListSink.add(_recipeList);
  }

  void dispose(){
    _recipeCreateStreamController.close();
    _recipeUpdateStreamController.close();
    _recipeDeleteStreamController.close();
    _recipeListStreamController.close();
  }
}