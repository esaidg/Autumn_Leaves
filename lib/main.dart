import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';
import 'package:lab5/Desserts.dart';
import 'package:lab5/MainDish.dart';
import 'package:lab5/Sides.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 3, 
     child: Scaffold( 
       appBar: AppBar(
         title: Text('Recipe Viewer'),
         actions: <Widget> [
           Tooltip(
             message: 'Like page',
             child: IconButton(
             icon: Icon(Icons.favorite),
             color: Colors.orangeAccent, 
             onPressed: () {
             print('Likes page ! ! !');
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => LikesPage() ));
              } 
            ),
           ),
           ],
         automaticallyImplyLeading: false,
         backgroundColor: Colors.orange[50],
         bottom: TabBar(
           indicatorColor: Colors.orange[300],
           tabs: [
             Tab(text: 'Main'),
             Tab(text: 'Sides'),
             Tab(text: 'Dessert'),
           ],//tabs
         ),
       ),
       body: TabBarView(
         children: [
           Center(child: MainDish()),




           Center(child: Sides()),




           Center(child: Desserts()), 





         ],
       )
     ),
     );
  }
}

class LikesPage extends StatefulWidget {
  static List<Widget> likedRecipes = [];

  LikesPage({Key key}) : super(key: key);

  @override
  _LikesPageState createState() => _LikesPageState();

}

class _LikesPageState extends State<LikesPage> {
  Widget build(BuildContext context) {
    if(LikesPage.likedRecipes.isNotEmpty){print('NOT EMPTY');}
    else{print('EMPTY');}
    return Scaffold(
      backgroundColor: Colors.deepOrange[400],
      appBar: AppBar(
        title: Text("Liked recipes"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: LikesPage.likedRecipes.length,
              itemBuilder: (BuildContext context, int index) {
                     print(LikesPage.likedRecipes[index]);
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  setState(() {
                    showSnackbar(context, LikesPage.likedRecipes.removeAt(index));
                    LikesPage.likedRecipes.removeAt(index);
                  });
                },
                child: LikesPage.likedRecipes[index],
              );
              }
            ),
          ),
          Container(
            child: Text('swipe to remove recipe.',
             style: TextStyle(color: Colors.brown[50])),
          ),
          SizedBox(height: 10),
        ],//column children
      ),
    );
  }
  void showSnackbar(BuildContext context, Widget name) {
    LikeCard card = name;

    Flushbar(
      flushbarStyle: FlushbarStyle.FLOATING,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(16),
      borderRadius: 8,
      backgroundGradient: LinearGradient(
          colors: [Colors.yellow[200], Colors.yellow[600]], stops: [.4, 1]),
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
        "You removed ${card.name} from your favorites!",
        style: TextStyle(
          color: Colors.deepOrangeAccent[900],
          fontSize: 18,
        ),
      ),
      icon: Icon(
        Icons.favorite_border,
        color: Colors.orange[900],
      ),
      duration: Duration(seconds: 5),
    )..show(context);
  }
}


class LikeCard extends StatefulWidget {
  final String name;
  final String img;
  final List<String> ingredients;
  final String portionSize;
  final List<String> instructions;

  LikeCard(
      {Key key, this.name,
      this.img,
      this.ingredients,
      this.portionSize,
      this.instructions}) : super(key: key); 
  _LikeCardState createState() => _LikeCardState(); 
}

class _LikeCardState extends State<LikeCard> { 

  @override 
  Widget build(BuildContext context) {
    return Container( 
      height: 200,
      width: 200,
      child: Card(
        color: Colors.orange[200],
        child: Column(
          children: [
            Text(widget.name, style: TextStyle(color: Colors.brown, fontSize: 30)),
            Row(
            children: [
              FittedBox(
                alignment: Alignment.centerLeft,
                child: Tooltip(
                  message: '${widget.name}',
                  child: Image.asset('assets/${widget.img}.jpg', height: 150, width: 150),
                ),
                fit: BoxFit.scaleDown,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Makes: ${widget.portionSize}",
                  style: TextStyle(color: Colors.orange[900], fontSize: 20),
                )),
            SizedBox(height: 75),
              ],
              ),
            ],
            ),
          ],
        )
      )
    );
  }
}
