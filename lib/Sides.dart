import 'package:flutter/material.dart';
import 'package:lab5/RecipeCard.dart';

class Sides extends StatefulWidget {
  Sides({Key key})  : super(key: key);

   @override
  _SidesState createState() => _SidesState();
}

class _SidesState extends State<Sides> { 
  List<String> chutneyIng = ['1 cup Apple cider vinegar', '12oz Cranberries', 'Dried figs', 'Cinnamon', '1 cup Brown sugar'];
  List<String> chutneyInst = [
  '1. Mix cider vingear and sugar till boil', 
  '2. Add in cinnamon, cranberries, and figs', 
  '3. Boil then simmer, stirring often'
  ];

  List<String> pumpkinIng = ['2 sugar pumpkins', '1 Tbsp Olive oil', '2 cups vegetable broth', '1 cup cocounut milk'];
  List<String> pumpkinInst = [
    '1. Brush the flesh of pumpkin with oil, then bake for 45 min.',
    '2. Add olive oil, cook till transulcent,',
    '3. Throw in remaining ingredients, bring soup to a simmer'
  ];

  List<String> pecanIng = ['1 cup pecans', '3 sweet potatoes', '6 cups butternet squash', '2 Tbsp avocado'];
  List<String> pecanInst = [
    '1. Sprinkle potatoes and squash with avocado',
    '2. Roast squash and potatoes for 15 and 20 min respectively',
    '3. Peel and smash potatoes and mix ingredients in bowl'
    '4. Add toasted pecans and bake for 10 min'

  ];

  List<String> brusselIng = ['1/2 cup pecans', '1 1/2 pounds Brussels sprouts', '1 Tbsp olive oil', '2 Tbsp apple cider vinegar'];
  List<String> brusselInst = [
    '1. Add sauce ingredients and whisk in a bowl',
    '2. Sauté brussels sprouts for 3 min, stirring occasionally',
    '3. Throw in sauce and pecans, cooking until brussels sprouts are tender'

  ];

  List<String> biscuitIng = ['2 1/2 cup flour', '2 Tbsp baking powder', '1 stick butter', '1 cup buttermilk'];
  List<String> biscuitInst = [
    '1. Grate butter over the flour and mix together',
    '2. Pour buttermilk into the middle of the dough',
    '3. Fold dough and cut out the biscuits',
    '4. Brush the biscuits with the butter, bake until golden brown'

  ];

   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[400],
      appBar: AppBar(
        title: Text("Side dishes"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: recipeCard('Cranberry Chutney', 'cranberry_chutney', chutneyIng, '1 bowl', chutneyInst),
            ),
            Center(
              child: recipeCard('Pumpkin Soup', 'pumpkin_soup', pumpkinIng, '3 servings', pumpkinInst),
            ),
            Center(
              child: recipeCard('Pecan Casserole', 'pecan_casserole', pecanIng, '6 servings', pecanInst),
            ),
            Center(
              child: recipeCard('Pecan Brussels Sprouts', 'brussel_sprout', brusselIng, '4 servings', brusselInst),
            ),
            Center(
              child: recipeCard('Biscuits', 'biscuit', biscuitIng, '8 servings', biscuitInst),
            ),
          ],
        )
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