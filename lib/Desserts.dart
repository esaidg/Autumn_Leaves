import 'package:flutter/material.dart';
import 'package:lab5/RecipeCard.dart';
import 'package:flushbar/flushbar.dart';

class Desserts extends StatefulWidget {
  Desserts({Key key}) : super(key: key);

  @override
  _DessertsState createState() => _DessertsState();
}

class _DessertsState extends State<Desserts> {
  List<String> chocPieIng = ["2 cups chocolate", "8-inch pie crust", "3 cups soy whip"];
  List<String> chocPieInst = [
    "1. Mix the chocolate",
    "2. Add to the crust",
    "3. Set overnight",
    "4. Serve with whipped topping"
  ];
  List<String> macaronIng  = ["2 cups aquafaba", "1 cup almond flour", "1 tablespoon berry jam"];
  List<String> macaronInst = [
    "1. Whip the aquafaba to stiff",
    "2. Mix in the flour",
    "3. Mix with the jam",
    "4. Bake at 350-F"
  ];
  List<String> brownieIng = ["2 cups chocolate chips", "2 cups flour", "1/4 cup oil"];
  List<String> brownieInst = [
    "1. Mix the chocolate with the oil",
    "2. Add the flour",
    "3. Bake at 350-F",
    "4. Cut while warm"
  ];
  List<String> caramelIng = ["1 cup grated apples", "2 cups flour", "1/4 cup oil"];
  List<String> caramelInst = [
    "1. Mix the apples and flour",
    "2. Add the oil",
    "3. Add to cupcake pans",
    "4. Bake at 375-F"
  ];
  List<String> logIng = ["1 cup chocolate", "2 cups flour", "1/4 cup apple sauce", "1 cup soy whip"];
  List<String> logInst = [
    "1. Mix the flour and apple sauce",
    "2. Add the soy whip",
    "3. Bake at 300-F",
    "4. Roll while warm",
    "5. Spread with chocolate"
  ];
  List<String> mousseIng = [ "2 cups aquafaba",  "2 cups chocolate"];
  List<String> mousseInst = [
    "1. Whip the aquafaba to stiff",
    "2. Stir in the chocolate",
    "3. Set overnight"
  ];
  List<String> keyIng = ["1 cup aquafaba", "1/4 cup lime juice" , "1 cup coconut cream", "8-inch pie crust", "3 cups soy whip"];
  List<String> keynst = [
    "1. Whip the aquafaba to stiff",
    "2. Add the lime juice and coconut",
    "3. Add to the crust",
    "4. Set overnight",
    "5. Serve with whipped topping"
  ];
  List<String> meringueIng = ["1 cup aquafaba", "1 tablespoon berry jam"];
  List<String> meringueInst = [
    "1. Whip the aquafaba to stiff",
    "2. Add the jam",
    "3. Pipe on baking sheet",
    "4. Bake at 275-F for 1 hour"
  ];
  List<String> blissIng = ["2 cups flour", "1/4 cup apple sauce", "1/2 cup cranberries", "1/2 cup cream cheese"];
  List<String> blissInst = [
    "1. Mix the flour and sauce",
    "2. Add the cranberries",
    "3. Spread on baking sheet",
    "4. Bake at 375-F",
    "5. Cut into wedges"
  ];
  List<String> biscottiIng = ["2 cups flour", "1/2 cup cranberries", "1/2 cup pistachios", "1/4 cup oil"];
  List<String> biscottiInst = [
    "1. Mix the flour and oil",
    "2. Add the cranberries",
    "3. Add the nuts",
    "4. Shape into a log",
    "5. Bake at 350-F",
    "6. Slice and bake at 200-F"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[400],
      appBar: AppBar(
        title: Text("Desserts"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: recipeCard(
                  "Chocolate Pie", "choc_pie", chocPieIng, "8 slices", chocPieInst),
            ),
            Center(
              child: recipeCard(
                  "Meringue Cookies", "meringue", meringueIng, "36 cookies", meringueInst),
            ),
            Center(
              child: recipeCard(
                  "Chocolate Mousse", "mousse", mousseIng, "8 servings", mousseInst),
            ),
            Center(
              child: recipeCard(
                  "Key Lime Pie", "key", keyIng, "8 slices", keynst),
            ),
            Center(
              child: recipeCard(
                  "Yule Log", "log", logIng, "12 slices", logInst),
            ),
            Center(
              child: recipeCard(
                  "Caramel Apple Cupcake", "cupcake", caramelIng, "12 cupcakes", caramelInst),
            ),
            Center(
              child: recipeCard(
                  "Fudge Brownie", "brownie", brownieIng, "12 squares", brownieInst),
            ),
            Center(
              child: recipeCard(
                  "Biscotti", "biscotti", biscottiIng, "24 cookies", biscottiInst),
            ),
            Center(
              child: recipeCard(
                  "Cranberry Bliss Bar", "bliss", blissIng, "8 wedges", blissInst),
            ),
            Center(
              child: recipeCard(
                  "Berry Macaron", "berry_macaron", macaronIng, "24 cookies", macaronInst),
            ),
          ],
        ),
      ),
    );



  }



  //add this to your classes to get the RecipeCard widget
  Widget recipeCard(nm, im, ing, port, inst) {
    return RecipeCard(
        name: nm,
        img: im,
        ingredients: ing,
        portionSize: port,
        instructions: inst);
  }
}

