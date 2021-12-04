import 'package:bohni/pages/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'verification_inprogress.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 252, 254, 1.0),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Center(
                  child: Image.asset("assets/image/bohni_logo.png"),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
//Phone number field with country code dropdown
              Container(
                height: 47,
                width: 270,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset('assets/icons/india-flag-01.png')),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "+91",
                        style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 1.0),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "|",
                        style: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 16,
                          color: Color.fromRGBO(234, 234, 234, 1.0),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          maxLength: 10,
                          decoration: const InputDecoration(
                            hintText: "Phone Number",
                            border: InputBorder.none,
                            counterText: '',
                            hintStyle: TextStyle(
                              fontFamily: 'Segoe',
                              fontSize: 16,
                              color: Color.fromRGBO(93, 93, 93, 1.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: const Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
              ),

              const SizedBox(
                height: 35,
              ),

              //button

              Center(
                child: SizedBox(
                  height: 38,
                  width: 160,
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Verification(),
                      ),
                    ),
                    child: const Text(
                      'Send OTP',
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
                height: 30,
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 111.75,
                        margin: const EdgeInsets.only(left: 30.0, right: 20.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 53,
                        )),
                  ),
                  const Text(
                    "OR",
                    style: TextStyle(
                      fontFamily: 'Segoe',
                      fontSize: 16,
                      color: Color.fromRGBO(93, 93, 93, 1.0),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        width: 111.75,
                        margin: const EdgeInsets.only(left: 20.0, right: 30.0),
                        child: const Divider(
                          color: Colors.grey,
                          height: 53,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              // google button

              Container(
                height: 47,
                width: 229,
                // padding: const EdgeInsets.fromLTRB(15.5, 6, 15.5, 6),
                child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/NoPath.png',
                              height: 35,
                              width: 35,
                            ),
                            const Text(
                              'Sign In With GOOGLE',
                              style: TextStyle(
                                  fontFamily: 'Segoe',
                                  color: Color.fromRGBO(0, 30, 91, 1.0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPressed: () {
                      {}
                    }),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: const Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              //text

              SizedBox(
                width: 250,
                height: 30,
                child: Column(
                  children: const [
                    Text(
                      "By continuing you agree to our ",
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          color: Color.fromRGBO(93, 93, 93, 1.0),
                          fontSize: 11),
                    ),
                    Text(
                      "Terms Of Services, Privacy Policy & Content Policy.",
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          color: Color.fromRGBO(0, 30, 91, 1.0),
                          fontSize: 11),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// //Phone number field with country code dropdown
//   getPhoneFeild() {
//     Size screenSize = MediaQuery.of(context).size;
//     return Form(
//       key: formKey,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           InternationalPhoneNumberInput(
//             spaceBetweenSelectorAndTextField: 0,
//             onInputChanged: (PhoneNumber number) {
//               print(number.phoneNumber);
//             },
//             onInputValidated: (bool value) {
//               print(value);
//             },
//             selectorConfig: const SelectorConfig(
//               selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
//             ),
//             ignoreBlank: false,
//             autoValidateMode: AutovalidateMode.disabled,
//             selectorTextStyle: const TextStyle(color: Colors.black),
//             initialValue: number,
//             textFieldController: controller,
//             formatInput: false,
//             keyboardType: const TextInputType.numberWithOptions(
//                 signed: true, decimal: true),
//             inputBorder: const OutlineInputBorder(),
//             onSaved: (PhoneNumber number) {
//               print('On Saved: $number');
//             },
//             inputDecoration: const InputDecoration(
//               hintText: 'Phone Number',

//               border: InputBorder.none,
//               hintStyle: TextStyle(
//                 color: Color.fromRGBO(93, 93, 93, 1.0),
//               ),
//               // labelText: "Phone Number",
//               enabledBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.transparent),
//                 //  when the TextFormField in unfocused
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void getPhoneNumber(String phoneNumber) async {
//     PhoneNumber number =
//         await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

//     setState(() {
//       this.number = number;
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
}
