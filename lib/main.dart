import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BasicsPage(),
    );
  }
}

class BasicsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var platform = Theme.of(context).platform;
    print("size : $size");
    print("platform : $platform");
    return Scaffold(
      appBar: AppBar(
          title: Text("Mon app basic"),
          leading: Icon(Icons.favorite),
        actions: [
          Icon(Icons.handyman),
          Icon(Icons.border_color)
        ],
        centerTitle: true,
        elevation: 15,
        backgroundColor: Colors.red,
      ),

      body: Container(
        height: size.height,
        width: size.width,
        color: Color.fromRGBO(21, 25, 28, 0.2),
        margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 70),
        child: Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Test de la colonne"),
                  fromAsset(size),
                  spanDemo(),
                ],
              ),
            ),
            elevation: 7.5,
          ),
        ),

      ),

    );
  }

  Text simpleText(String text){
    return Text(
      text,
      style: TextStyle(
        color: Colors.blueAccent,
        fontSize: 35,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
      textAlign: TextAlign.center,
    );
  }

  Image fromAsset(Size size){
    return Image.asset(
      "/home/nk-wilfried/AndroidStudioProjects/les_widgets_basiques/images/img1.jpg",
      fit: BoxFit.cover,
      /*height: size.height-15,
      width: size.width-15,*/
    );
  }

  Text spanDemo()
  {
    return Text.rich(
      TextSpan(
          text: "Salut ",
          style: TextStyle(color: Colors.red),
          children: [
            TextSpan(
              text: "second style",
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
            TextSpan(
                text: " A l'infini...",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blueAccent
                ),
            ),
          ]
      ),
    );
  }

}