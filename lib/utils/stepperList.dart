import 'package:adv_flutter_ch1/Stepper/horizontal_stepper.dart';
import 'package:flutter/material.dart';

List<Step> builStep() {
  return [
    Step(
      isActive: index >=0,
      title: Text(
        'Personal',
        style: TextStyle(),
      ),
      content: Column(
        children: [
          TextField(
            controller: txtfname,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              label: Text('First Name'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: txtlame,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              label: Text('Last Name'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: txtadd,
            maxLines: 5,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.home),
              label: Text('Address'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    ),

    Step(
      state: StepState.editing,
      isActive: index >= 1,
      title: Text(
        'Contact',
        style: TextStyle(),
      ),
      content: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),
              label: Text('Email'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: txtphone,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              label: Text('Mobile No.'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    ),
    Step(
      state: StepState.complete,
      isActive: index == 2,
      title: Text(
        'Confirm',
        style: TextStyle(),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('First Name : ${fname}',style: TextStyle(fontSize: 25),),
          Text('Last Name  : ${lname}',style: TextStyle(fontSize: 25),),
          Text('Address    : ${add}',style: TextStyle(fontSize: 25),),
          Text('Phone No.  : ${phone}',style: TextStyle(fontSize: 25),)
        ],
      )
    ),
  ];
}

int index= 0 ;
String? fname;
String? lname;
String? add;
String? phone;
