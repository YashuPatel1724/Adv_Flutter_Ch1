import 'package:adv_flutter_ch1/Photo%20Gallery%20with%20Biomateric%20authication/view/screen/hideScreen.dart';
import 'package:adv_flutter_ch1/utils/globalImages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/gallery.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    FringerProvider fringerProvider = Provider.of(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gallery',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              initialValue: popMenu,
              onSelected: (value) async {
                if (value == 0) {
                  await fringerProvider.authication();
                  if (fringerProvider.didAuthenticate) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Hidescreen(),
                        ));
                  }
                }
              },
              itemBuilder: (context) => popMenu,
            ),
          )
        ],
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,crossAxisSpacing: 8,mainAxisExtent: 175),
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 110,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(HomeImages[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text('${Imagename[index]}', style: const TextStyle(fontWeight: FontWeight
                .bold,fontSize: 16),),
            Text('${ImageQty[index]}', style: const TextStyle(fontWeight: FontWeight
                .w200, fontSize: 13,height: 0.9),),
          ],
        ),
      ),
    );
  }
}

List<PopupMenuItem> popMenu = [
  PopupMenuItem(
    value: 0,
    child: Text('Hide Images'),
  ),
  PopupMenuItem(
    value: 1,
    child: Text('Settings'),
  ),
];
