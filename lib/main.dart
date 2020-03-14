import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
void main()=> runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget{
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
          body: Container(
            child: Container(
//                height:,
//                width: double.infinity,
              child: ClipPath(
                clipper: MyClip(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("LOGIN", style: TextStyle(
                        fontSize: 45.0,
                        letterSpacing: 3.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}

class MyClip extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(size.width/4, size.height - 50, size.width/2, size.height - 15);
    path.quadraticBezierTo((size.width * 0.75), size.height + 10, size.width, size.height - 150);

    path.lineTo(size.width, size.height - 50);

    path.lineTo(size.width, 0.0);

    path.moveTo(120, size.height - 10);


    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;


}