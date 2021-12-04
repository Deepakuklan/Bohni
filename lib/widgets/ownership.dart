import 'package:flutter/material.dart';

class Ownership extends StatefulWidget {
  final VoidCallback onButtonPressed;

  const Ownership({Key? key, required this.onButtonPressed}) : super(key: key);

  @override
  _OwnershipState createState() => _OwnershipState();
}

class _OwnershipState extends State<Ownership> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                  child: DropdownButtonFormField(
                    icon: Image.asset(
                      "assets/icons/dropdown.png",
                      width: 12,
                      height: 6,
                    ),
                    hint: const Text(
                      "Owner",
                      style: TextStyle(
                        color: Color.fromRGBO(93, 93, 93, 0.5),
                        fontSize: 16,
                        fontFamily: 'Segoe',
                      ),
                    ),
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              // Name  DropdownButtonFormField
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
                    padding: const EdgeInsets.only(left: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(93, 93, 93, 0.5),
                          fontSize: 16,
                          fontFamily: 'Segoe',
                        ),
                        hintText: "Name",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // Email  DropdownButtonFormField
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
                    padding: const EdgeInsets.only(left: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(93, 93, 93, 0.5),
                          fontSize: 16,
                          fontFamily: 'Segoe',
                        ),
                        hintText: "Email Address",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ), //button

              Center(
                child: SizedBox(
                  height: 38,
                  width: 160,
                  child: TextButton(
                    onPressed: widget.onButtonPressed,
                    child: const Text(
                      'Continue',
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
