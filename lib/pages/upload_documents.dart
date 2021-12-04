import 'package:flutter/material.dart';

class UploadDocuments extends StatefulWidget {
  final VoidCallback onButtonPressed;

  const UploadDocuments({Key? key, required this.onButtonPressed})
      : super(key: key);

  @override
  _UploadDocumentsState createState() => _UploadDocumentsState();
}

class _UploadDocumentsState extends State<UploadDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 270,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), //color of shadow
                        spreadRadius: 0, //spread radius
                        blurRadius: 6, // blur radius
                        offset:
                            const Offset(0, 0), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  height: 14,
                                  width: 14,
                                  child: Image.asset(
                                      'assets/icons/fetch-upload-cloud.png')),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Adhaar Card",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 30, 91, 1.0),
                                      fontSize: 12,
                                      fontFamily: 'Segoe',
                                    ),
                                  ),
                                  Text(
                                    "Upload Adhaar Card Images",
                                    style: TextStyle(
                                      color: Color.fromRGBO(93, 93, 93, 0.5),
                                      fontSize: 10,
                                      fontFamily: 'Segoe',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                            width: 20,
                            child: Image.asset('assets/icons/SVG.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 270,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), //color of shadow
                        spreadRadius: 0, //spread radius
                        blurRadius: 6, // blur radius
                        offset:
                            const Offset(0, 0), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 14,
                            width: 14,
                            child: Image.asset(
                                'assets/icons/fetch-upload-cloud.png')),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "PAN Card",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 30, 91, 1.0),
                                fontSize: 12,
                                fontFamily: 'Segoe',
                              ),
                            ),
                            Text(
                              "Upload PAN Card Images",
                              style: TextStyle(
                                color: Color.fromRGBO(93, 93, 93, 0.5),
                                fontSize: 10,
                                fontFamily: 'Segoe',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 270,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), //color of shadow
                        spreadRadius: 0, //spread radius
                        blurRadius: 6, // blur radius
                        offset:
                            const Offset(0, 0), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 14,
                            width: 14,
                            child: Image.asset(
                                'assets/icons/fetch-upload-cloud.png')),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Vehicle Images",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 30, 91, 1.0),
                                fontSize: 12,
                                fontFamily: 'Segoe',
                              ),
                            ),
                            Text(
                              "Upload Vehicle Images From Each Angle",
                              style: TextStyle(
                                color: Color.fromRGBO(93, 93, 93, 0.5),
                                fontSize: 10,
                                fontFamily: 'Segoe',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //button
              Center(
                child: SizedBox(
                  height: 38,
                  width: 160,
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          // return object of type Dialog
                          return AlertDialog(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32.0))),
                            title: const Text(
                              "Your application is under review. \n \n Our team will get in touch with you. ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(8, 37, 96, 1.0)),
                            ),
                            actions: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 25),
                                child: Center(
                                  child: Center(
                                    child: SizedBox(
                                      height: 38,
                                      width: 131,
                                      child: TextButton(
                                        onPressed: () => widget.onButtonPressed,
                                        child: const Text(
                                          'Continue',
                                        ),
                                        style: TextButton.styleFrom(
                                          primary: Colors.black,
                                          backgroundColor: const Color.fromRGBO(
                                              255, 216, 0, 1.0),
                                          textStyle: const TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Segoe',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // usually buttons at the bottom of the dialog
                            ],
                          );
                        },
                      );
                      // Increment activeStep, when the next button is tapped. However, check for upper bound.
                    },
                    child: const Text(
                      'Get Started',
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: const Color.fromRGBO(255, 216, 0, 1.0),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Segoe',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
