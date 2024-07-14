import 'package:adv_flutter_ch1/One%20Time%20Intro%20Screen%20in%20Flutter/provider/IntroProvide.dart';
import 'package:adv_flutter_ch1/One%20Time%20Intro%20Screen%20in%20Flutter/view/introScreen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Introscreen1 extends StatelessWidget {
  const Introscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    Introprovider introproviderTrue = Provider.of(context, listen: true);
    Introprovider introproviderFalse = Provider.of(context, listen: false);
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xffD9D3C7),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 55),
                          height: 220,
                          width: 220,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xffFDFCFA),Color(0xffF2F1ED),Color(0xffEBE8E1),Color(0xffE1DCD3),],
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
                            'Asset/images/1-removebg-preview.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Track your work\n and get the result',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Remember to keep track of your\n professional accomplishments.',
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      introproviderFalse.removeIntro();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Introscreen2(),));
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
                      child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 25),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
