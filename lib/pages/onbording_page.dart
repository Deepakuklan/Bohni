import 'package:bohni/model/onboard_data.dart';
import 'package:bohni/pages/login.dart';
import 'package:flutter/material.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 252, 254, 1.0),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onboardingContents.length,
              itemBuilder: (context, index) => SizedBox(
                height: screenSize.height,
                width: screenSize.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/image/Onboarding.png'),
                      const SizedBox(
                        height: 36,
                        width: 237,
                        child: Center(
                          child: Text('Welcome to bohni',
                              style: TextStyle(
                                fontFamily: 'Segoe',
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                                color: Color.fromRGBO(0, 0, 0, 1.0),
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 48,
                        width: 202,
                        child: Center(
                          child: Text(
                            'Performance Driven OOH \n Ad-Tech Platform',
                            style: TextStyle(
                              fontFamily: 'Segoe',
                              fontSize: 18,
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      // SizedBox(
                      //   width: 180,
                      //   height: 38,
                      //   child: ElevatedButton(
                      //     onPressed: () => Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => const Login())),
                      //     child: const Text(
                      //       'Bohni करो ',
                      //       style: TextStyle(
                      //         fontFamily: 'Segoe',
                      //         fontSize: 18,
                      //         color: Color.fromRGBO(0, 0, 0, 1.0),
                      //       ),
                      //     ),
                      //     style: ElevatedButton.styleFrom(
                      //       primary: const Color.fromRGBO(255, 216, 0, 1.0),
                      //       onPrimary: Colors.black,
                      //     ),
                      //   ),
                      // ),

                      //Button
                      Center(
                        child: SizedBox(
                          height: 38,
                          width: 180,
                          child: TextButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            ),
                            child: const Text(
                              'Bohni करो',
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor:
                                  const Color.fromRGBO(255, 216, 0, 1.0),
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
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
