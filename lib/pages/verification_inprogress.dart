import 'package:flutter/material.dart';

class VerificationInprogress extends StatefulWidget {
  const VerificationInprogress({Key? key}) : super(key: key);

  @override
  _VerificationInprogressState createState() => _VerificationInprogressState();
}

class _VerificationInprogressState extends State<VerificationInprogress> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: (screensize.width * 0.19),
          left: (screensize.width * 0.16),
        ),
        height: screensize.height * 0.48,
        width: screensize.width * 0.69,
      ),
    );
  }
}
