import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';
import 'package:lab5/main.dart';

class RecipeCard extends StatelessWidget {
  final String name;
  final String img;
  final List<String> ingredients;
  final String portionSize;
  final List<String> instructions;

  RecipeCard(
      {this.name,
      this.img,
      this.ingredients,
      this.portionSize,
      this.instructions});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        color: Colors.orange[200],
        margin: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Tooltip(
                    message: "${name}",
                    child: Image.asset('assets/${img}.jpg'),

                    ),
                 ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Makes: $portionSize",
                      style: TextStyle(color: Colors.orange[900], fontSize: 20),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              //ingredients
              Column(
                children: ingredients
                    .map((e) => Text(
                          '$e',
                          style: TextStyle(color: Colors.brown, fontSize: 18),
                        ))
                    .toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: instructions
                    .map((e) => Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '$e',
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 18),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Tooltip(
                  message: 'Like',
                  child: IconButton(
                    icon: Icon(Icons.favorite),
                    color: Colors.deepOrangeAccent,
                    onPressed: () {
                      LikesPage.likedRecipes.add(LikeCard(
                              name: name,
                              img: img,
                              ingredients: ingredients,
                              portionSize: portionSize,
                              instructions: instructions,
                            ));
                      showSnackbar(context, name);
                    }), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackbar(BuildContext context, String name) {
    Flushbar(
      flushbarStyle: FlushbarStyle.FLOATING,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(16),
      borderRadius: 8,
      backgroundGradient: LinearGradient(
          colors: [Colors.orange[200], Colors.deepOrange], stops: [.4, 1]),
      boxShadows: [
        BoxShadow(
          color: Colors.brown,
          offset: Offset(3, 3),
          blurRadius: 3,
        )
      ],
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      forwardAnimationCurve: Curves.fastOutSlowIn,
      messageText: Text(
        "You added $name to your favorites!",
        style: TextStyle(
          color: Colors.deepOrangeAccent[900],
          fontSize: 18,
        ),
      ),
      icon: Icon(
        Icons.favorite,
        color: Colors.orange[900],
      ),
      duration: Duration(seconds: 5),
    )..show(context);
  }
}


