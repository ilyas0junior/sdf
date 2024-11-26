// Exercice 1
// Le but de cet exercice est de créer le menu d’un restaurant en utilisant Card Widget.
// L’interface graphique de l’application doit être similaire à l’écran ci-dessous.
// Pour découper les images sous un format rectangulaire, utilisez la classe ClipOval.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp2());
}
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              
              //N'oubliez pas d'ajouter les images et les déclarer dans le fichier pubspec.yaml
              MyCard(img: "images/veg.png", name: "Vegetarian Pizza"),
              MyCard(img: "images/chees.png", name: "Cheese Pizza"),
              MyCard(img: "images/fries.png", name: "Box of fries")
            ],
          ),
        ),
      ),
    );
  }
}
class MyCard extends StatelessWidget {
  final String img;
  final String name;
  const MyCard({super.key, required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.orange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15)
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange,
            backgroundImage: AssetImage(img),
            radius: 70,
          ), SizedBox(width: 20,),
          Text(name,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "cursive",fontWeight: FontWeight.bold),)
        ],
      ),
    ),);
  }
}


// Exercice 2
// Créez une application Counter qui permet d’incrémenter un compteur et le décrémenter
// lorsque l’utilisateur clique sur un bouton flottant.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp3());
}

class MyApp3 extends StatefulWidget {
  const MyApp3({super.key});

  @override
  State<MyApp3> createState() => _MyApp3State();
}

class _MyApp3State extends State<MyApp3> {

  var compteur=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(onPressed: (){
                setState(() {
                  compteur++;
                });
              },child: Icon(Icons.add),),
              Text("$compteur",style: TextStyle(fontSize: 15),),
              FloatingActionButton(onPressed: (){
                setState(() {
                  compteur--;
                });
              },child: Icon(Icons.remove),),
            ],
          ),
        ),
      ),
    );
  }
}

// Exercice 3
// Créez une application Flutter composée d’un Floating bouton et d’une image. Lorsque vous
// cliquez sur le bouton Flottant, l’image affichée change. Un deuxième clic sur le bouton affiche
// une troisième image. Un nouveau clic affiche l’image initiale et ainsi de suite.
main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Pour utiliser ces images, créer un dossier images et coller trois Images dont les noms sont présents dans le tableau. Ajouter une section 
  //assets dans le fichier pubspec.yaml
  var mesImages=["frites.jpg","PIZZA.jpg","pizza2.jpg"];
  var i=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(),
          body :Center(
            child: Image(
              image: AssetImage("images/${mesImages[i%3]}"),
              width: 150,
              height: 150,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(    Icons.arrow_right),
            onPressed: (){
              setState(() {
                i++;
              });

            },
          ),
        ),
      );

  }
}

// Elevated button 
CenterExemple: Créez le bouton suivant: (
child: SizedBox
(
width: 300
,
height: 80
,
child: ElevatedButton
(
child:Row
(
mainAxisAlignment: MainAxisAlignment.spaceEvenly
,
children: [
Text
("Click to begin
", style: TextStyle
(fontSize: 25),),
Icon
(Icons.add_shopping_cart,size: 30,)
],
),
onPressed:(){} ,
style: ElevatedButton.styleFrom
(
padding: EdgeInsets
.all
(20),
primary: Colors.yellow
,
onPrimary: Colors.black
,
elevation: 15
,
shadowColor: Colors.yellow
,
shape: StadiumBorder(),
side: BorderSide
(color: Colors.black,width: 2.0),
),
),
),
)

//text button 
IconButton(
icon: Icon(Icons.volume_up,color:
Colors.blue,),
tooltip: 'Increase volume by 10',
onPressed: () {},
)

//text field
TextField(
decoration: InputDecoration(
hintText: "User Name",
icon: Icon(Icons.person)
),
),

//textformfield 
TextFormField(
decoration: InputDecoration(
labelText: "User Name",
prefixIcon: Icon(Icons.person)
border: OutlineInputBorder()
)
)

//checkbox and radioButton widgets
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      'Single Selection (Radio)',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 10),
    GroupButton<String>(
      buttons: ['Option 1', 'Option 2', 'Option 3'],
      isRadio: true, // Sélection unique
      onSelected: (value, index, isSelected) {
        print('Selected: $value');
      },
    ),
    SizedBox(height: 20),
    Text(
      'Multiple Selection (Checkbox)',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 10),
    GroupButton<String>(
      buttons: ['Choice A', 'Choice B', 'Choice C'],
      isRadio: false, // Sélection multiple
      onSelected: (value, index, isSelected) {
        print('Selected: $value');
      },
    ),
  ],
);

//Switch Widget 
var value=false;
child: Row( children: [
Switch(value: value, onChanged: (bool val){
setState(() {
value=val;
});
},
activeColor: Colors.blue,), Text("$value")
],
),

//Slider Widget
var rating=0.0;
………
child: Slider( value: rating, divisions:100, label: "$rating", min: 0,
max:100,
onChanged: (newVal){ setState(() {
rating=newVal;
});
},
),


