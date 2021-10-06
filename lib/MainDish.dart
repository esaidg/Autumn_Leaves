import 'package:flutter/material.dart';
import 'package:lab5/RecipeCard.dart';

class MainDish extends StatefulWidget {
  MainDish({Key key})  : super(key: key);
  @override
  _MainState createState() => _MainState();
}
class _MainState extends State<MainDish>
{
  //Recipee Source:https://www.readyseteat.com/recipes-Spaghetti-and-Meat-Sauce-3983
  List<String> SpaghettiIng = ["12 ounces dry spaghetti, uncooked","2 tablespoons canola oil","1 cup chopped onion","2 tablespoons minced garlic","1 pound ground round beef", "1 can (24 oz each) Hunt's® Traditional Pasta Sauce","Grated Parmesan cheese, optional"];
  List<String> SpaghettiInst = [
    "1. Cook spaghetti based on package instructions",
    "2. Heat oil on a large skillet on medium-high heat",
    "3. add onions and garlic",
    "4. cook for 5 minutes",
    "5. Add Beef",
    "6. cook for 7 minutes ",
    "7. Drain water",
    "8. Add pasta Sauce on top of spaghetti "


  ];
  //Recipee Source: https://www.foodnetwork.com/recipes/ree-drummond/twice-baked-potatoes-recipe-1925596
  List<String> PotatoIng =["8 baking potatos,washed","3 tablespoons canola oil","2 sticks salted butter","1 cup bacon bits", "1 cup sour cream","1 cup Cheddar cheese","1 cup whole mile","2 teaspoons seasoned salt","3 green onions,slice","Freshly ground black pepper"];
  List<String> PotatoInst =[
    "1. Preheat oven to 400 degrees",
    "2. Rub potatos with canola oil",
    "3. Bake for 1 hour",
    "4. Place butter, bacon bits and sour cream in a bowl and mix",
    "5. Remove Potatos from oven and lower heat to 350 degrees",
    "6. Cut potatos in half and scrape insides into the bowl of ingredients and mix ",
    "7. Fill potato shells with the mixed potatos and cook them for another 15 to 20 minutes",



  ];
  //Recipee Source: https://www.simplyrecipes.com/recipes/homemade_pizza/
  List<String> PizzaIng= ["1 1/2 cups warm water","1 package of dry yeast","3 3/4 cups bread flour","2 tablespoons extra virgin olive oil","2 teaspoons salt","1 teaspoon sugar"];
  List<String> PizzaInst =[
    "1. make and knead the pizza dough",
    "2. Preheat oven to 475 degrees F",
    "3. Divide the dough into two balls of dough",
    "4. Flatten and stretch dough",
    "5. Brush dough top with olive oil",
    "6. Spead tomato sauce and add toppings",
    "7. Bake pizza in over for about 10-15 minutes"

  ];
  //Recipee Source: https://www.tablespoon.com/recipes/spinach-dip-in-bread-bowl/6cda9ee1-1ec1-46a7-8604-b7b7a51d42c6
  List<String> DipIng= ["2 boxes of frozen spinach","1 cup regular mayonnaise","1 envelope onion soup mix powder","1 container of sour cream","2 cans of water chesnuts","3 green onions","1 loaf Hawaiian or sourdough bread"];
  List<String> DipInst =[
    "1. Defrost and dry spinach",
    "2. Place spinach in a large bowl and mix in sour cream,onion soup powder, mayo, green onion and water chesnuts",
    "3. Cover and refrigerate overnight",
    "4. Hollow out a large round loaf of bread ",
    "5. Place excess bread around the side of the bowl"

  ];
  //Recipee Source:https://www.simplyrecipes.com/recipes/quesadilla/
  List<String> QuesaIng= ["Large Flour Tortillas","Grated cheese","Oliver Oil or Butter"];
  List<String> QuesaInst= [
    "1. Heat tortillas on medium-high heat on a pan until air pockets form",
    "2. Add cheese and other ingredients on top",
    "3. Lower heat to low",
    "4. Fold tortilla over",
    "5. Remove from pan and cut into wedges"
  ];
  Widget build(BuildContext context)
  {
    return Scaffold (
      backgroundColor: Colors.deepOrange[400],
      appBar: AppBar(
        title: Text("Main Dishes"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: recipeCard("Spaghetti and Meat Sauce", "Spaghetti", SpaghettiIng, "6 servings",SpaghettiInst),
            ),
            Center(
              child: recipeCard("Twiced Baked Potato", "potato", PotatoIng, "8 potatos",PotatoInst),
            ),
            Center(
              child: recipeCard("Pizza", "pizza", PizzaIng, "1 Pizza",PizzaInst),
            ),
            Center(
              child: recipeCard("Spinach dip in bread bowl", "dip", DipIng, "1 Bowl",DipInst),
            ),
            Center(
              child: recipeCard("Quesadilla", "quesa", QuesaIng, "1 Serving",QuesaInst),
            ),
          ],
        )
      )


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