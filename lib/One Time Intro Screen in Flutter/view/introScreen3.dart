import 'package:adv_flutter_ch1/One%20Time%20Intro%20Screen%20in%20Flutter/provider/IntroProvide.dart';
import 'package:adv_flutter_ch1/One%20Time%20Intro%20Screen%20in%20Flutter/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Introscreen3 extends StatelessWidget {
  const Introscreen3({super.key});

  @override
  Widget build(BuildContext context) {
    Introprovider introproviderTrue = Provider.of(context,listen: true); 
    Introprovider introproviderFalse = Provider.of(context,listen: false); 
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xffDBF6E5),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 55,left: 20),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xffFDFCFA),Color(0xffF3FCF7),Color(0xffECF9F0),Color(0xffDBF6E5),],
                              ),
                              shape: BoxShape.circle),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 350,
                          width: 350,
                          alignment: Alignment.center,
                          child: Image.asset(
                            'Asset/images/5-removebg-preview.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Get notified when\nwork happens',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Take control of notifications,\ncollaborate live or on your own time',
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homepage(),));
                      introproviderFalse.removeIntro();
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      alignment: Alignment.center,
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color(0xff000000),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text('Start',style: TextStyle(color: Colors.white,fontSize: 25),),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
