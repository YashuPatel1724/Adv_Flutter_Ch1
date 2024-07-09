import 'package:flutter/material.dart';

import '../utils/stepperList.dart';
TextEditingController txtfname =TextEditingController();
TextEditingController txtlame =TextEditingController();
TextEditingController txtadd =TextEditingController();
TextEditingController txtphone =TextEditingController();

class HorizontalStepper extends StatefulWidget {
  const HorizontalStepper({super.key});

  @override
  State<HorizontalStepper> createState() => _HorizontalStepperState();
}

class _HorizontalStepperState extends State<HorizontalStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Horizontal Stepper',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(primary: Colors.blue)
        ),
        child: Stepper(
          type: StepperType.horizontal,
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
