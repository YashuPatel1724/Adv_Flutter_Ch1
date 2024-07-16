import 'package:adv_flutter_ch1/Contact%20Us%20Page%20With%20Interaction/provider/urlProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UrlLauncher extends StatelessWidget {
  const UrlLauncher({super.key});

  @override
  Widget build(BuildContext context) {
    Urlprovider urlprovider = Provider.of<Urlprovider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          CupertinoIcons.chevron_back,
          color: Colors.blue,
        ),
        title: Text(
          'Contact Us',
          style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.w900,
              letterSpacing: 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              'If you have any queries, get in touch with us. We will be happy to help you!',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                urlprovider.urlLauncher();
              },
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.aod,
                        color: Colors.blue,
                        size: 35,
                      ),
                      SizedBox(width: 35),
                      Text(
                        '9638547575000',
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                urlprovider.mailLauncher();
              },
              child: Container(
                margin: EdgeInsets.only(top: 18),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail_outline,
                        color: Colors.blue,
                        size: 35,
                      ),
                      SizedBox(width: 35),
                      Text(
                        'abc@gmail.com',
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Social Media',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.blue.shade200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 10),
                    child: InkWell(
                      onTap: () {
                        urlprovider.linkLauncher();
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Image.asset(
                                'Asset/images/images-removebg-preview.png'),
                          ),
                          SizedBox(width: 33,),
                          Text(
                            'Haikuzen',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(color: Colors.blue.shade200,indent: 20,endIndent: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 10),
                    child: InkWell(
                      onTap: () {
                        urlprovider.instLauncher();
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Image.asset(
                                'Asset/images/WhatsApp Image 2024-07-16 at 3.55.53 PM.jpeg',fit: BoxFit.cover,),
                          ),
                          SizedBox(width: 33,),
                          Text(
                            'haikuzen_designs',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(color: Colors.blue.shade200,indent: 20,endIndent: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, top: 10),
                    child: InkWell(
                      onTap: () {
                        urlprovider.teleLauncher();
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Image.asset(
                                'Asset/images/images-removebg-preview (1).png'),
                          ),
                          SizedBox(width: 33,),
                          Text(
                            'Haikuzen',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
