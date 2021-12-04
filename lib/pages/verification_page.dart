import 'package:bohni/widgets/status_change.dart';
import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //back button
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios,
                      color: Color.fromRGBO(69, 90, 136, 1.0)),
                ),

                const SizedBox(
                  height: 50,
                ),
                //text

                const Text(
                  "Enter Verification Code",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 30, 91, 1.0),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontFamily: 'Segoe',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //text

                const Center(
                  child: Text(
                    "We have sent a verification code to",
                    style: TextStyle(
                      color: Color.fromRGBO(93, 93, 93, 1.0),
                      fontSize: 14,
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "+91 - 1234567890",
                    style: TextStyle(
                      color: Color.fromRGBO(93, 93, 93, 1.0),
                      fontSize: 14,
                      fontFamily: 'Segoe',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                //verification code box
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      6,
                      (index) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.2), //color of shadow
                                      spreadRadius: 5, //spread radius
                                      blurRadius: 7, // blur radius
                                      offset: const Offset(
                                          0, 2), // changes position of shadow
                                      //first paramerter of offset is left-right
                                      //second parameter is top to down
                                    ),
                                    //you can set more BoxShadow() here
                                  ],
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    counterText: '',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 45,
                ),
                //Button
                Center(
                  child: SizedBox(
                    height: 38,
                    width: 160,
                    child: TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StepProgressBar(),
                        ),
                      ),
                      child: const Text(
                        'Confirm',
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

                const SizedBox(
                  height: 80,
                ),

                const Center(
                    child: Text(
                  "0:27",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Segoe',
                  ),
                )),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: Text(
                  "Didn't receive the code?",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Segoe',
                      color: Color.fromRGBO(93, 93, 93, 1.0)),
                )),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: () {},
                    child: const Center(
                      child: Text(
                        "Resend now",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            fontFamily: 'Segoe',
                            color: Color.fromRGBO(93, 93, 93, 1.0)),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
