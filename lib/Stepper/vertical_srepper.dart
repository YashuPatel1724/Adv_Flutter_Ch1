import 'package:flutter/material.dart';

import '../utils/stepperList.dart';
TextEditingController txtfname =TextEditingController();
TextEditingController txtlame =TextEditingController();
TextEditingController txtadd =TextEditingController();
TextEditingController txtphone =TextEditingController();

class verticalStepper extends StatefulWidget {
  const verticalStepper({super.key});

  @override
  State<verticalStepper> createState() => _verticalStepperState();
}

class _verticalStepperState extends State<verticalStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Vertical Stepper',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(primary: Colors.blue)
        ),
        child: Stepper(
          type: StepperType.vertical,
          currentStep: index,
          // onStepTapped: (value) {
          //   setState(() {
          //     value = index;
          //   });
          // },
          onStepContinue: () {
            setState(() {
              index  = index + 1 ;
              fname = txtfname.text;
              lname = txtlame.text;
              add = txtadd.text;
              phone = txtphone.text;
            });
          },
          onStepCancel: () {
            setState(() {
              index -=1 ;
            });
          },
          steps: builStep(),
        ),
      ),
    );
  }
}
