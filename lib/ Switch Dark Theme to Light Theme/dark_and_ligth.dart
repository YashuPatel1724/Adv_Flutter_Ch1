import 'package:flutter/material.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme Data'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Yo Man!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
                textAlign: TextAlign.center,
                "It's a simple example of\ndark theme",
                style: TextStyle(fontSize: 23,color: Color(0xff868689)),
              ),
              SizedBox(height: 110,),
              InkWell(
                onTap: () {
                  setState(() {
                    light = ThemeData.light();
                  });
                },
                child: Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xffFFD60A),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  alignment: Alignment.center,
                  child: Text('Light Icon',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  setState(() {
                    light = ThemeData.dark();
                  });
                },
                child: Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color(0xffFD3B31),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  alignment: Alignment.center,
                  child: Text('Dark Icon',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
 var light = ThemeData.light();
