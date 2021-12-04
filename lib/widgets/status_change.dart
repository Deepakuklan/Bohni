import 'package:bohni/pages/upload_documents.dart';
import 'package:bohni/pages/vehicle_details.dart';
import 'package:flutter/material.dart';

import 'ownership.dart';

class StepProgressBar extends StatefulWidget {
  const StepProgressBar({Key? key}) : super(key: key);

  @override
  _StepProgressBarState createState() => _StepProgressBarState();
}

class _StepProgressBarState extends State<StepProgressBar> {
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  List<String> intList = ["Ownership", "Vehicle Details", "Upload Documents"];

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    // var mediaQD = MediaQuery.of(context);
    _safeAreaSize = ScreenSize;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: (ScreenSize.height * 0.05),
                left: (ScreenSize.width * 0.08),
                right: (ScreenSize.width * 0.06),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          pageController.animateToPage(_curPage - 2,
                              duration: const Duration(microseconds: 300),
                              curve: Curves.linear);
                        },
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Color.fromRGBO(69, 90, 136, 1.0)),
                      ),
                      // ignore: unnecessary_null_comparison
                      _curPage == 1
                          ? Container()
                          : TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Skip",
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 30, 91, 0.75),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: 'Segoe',
                                ),
                              ),
                            )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      intList[_curPage - 1],
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 30, 91, 1.0),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'Segoe',
                      ),
                    ),
                  ),
                  getStepProgress(),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (i) {
                  setState(
                    () {
                      _curPage = i + 1;
                    },
                  );
                },
                children: <Widget>[
                  Ownership(
                    onButtonPressed: () {
                      pageController.animateToPage(1,
                          duration: const Duration(microseconds: 300),
                          curve: Curves.linear);
                    },
                  ),
                  VehicleDetails(onButtonPressed: () {
                    pageController.animateToPage(2,
                        duration: const Duration(microseconds: 300),
                        curve: Curves.linear);
                  }),
                  UploadDocuments(
                    onButtonPressed: () => pageController.animateToPage(1,
                        duration: const Duration(microseconds: 300),
                        curve: Curves.linear),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//status bar

final _stepsText = ["Ownership", "Vehicle Details", "Upload Documents"];
const _stepCircleRadius = 10.0;
const _stepProgressViewHeight = 100.0;
const Color _activeColor = Color.fromRGBO(255, 216, 0, 1.0);
const Color _inactiveColor = Color.fromRGBO(212, 212, 213, 1.0);
const TextStyle _headerStyle =
    TextStyle(fontSize: 10.0, color: Color.fromRGBO(231, 198, 8, 1.0));
const _stepStyle = TextStyle(
  fontSize: 11.0,
  color: Color.fromRGBO(93, 93, 93, 0.5),
  fontFamily: 'Segoe',
);
late Size _safeAreaSize;
int _curPage = 1;
StepProgressView getStepProgress() {
  return StepProgressView(
    _stepsText,
    _curPage,
    _stepProgressViewHeight,
    _safeAreaSize.width,
    _stepCircleRadius,
    _activeColor,
    _inactiveColor,
    _headerStyle,
    _stepStyle,
    decoration: const BoxDecoration(color: Colors.white),
    padding: const EdgeInsets.only(
      top: 20.0,
      left: 24.0,
      right: 24.0,
    ),
  );
}

class StepProgressView extends StatelessWidget {
  const StepProgressView(
    List<String> stepsText,
    int curStep,
    double height,
    double width,
    double dotRadius,
    Color activeColor,
    Color inactiveColor,
    TextStyle headerStyle,
    TextStyle stepsStyle, {
    required this.decoration,
    required this.padding,
    this.lineHeight = 2.0,
  })  : _stepsText = stepsText,
        _curStep = curStep,
        _height = height,
        _width = width,
        _dotRadius = dotRadius,
        _activeColor = activeColor,
        _inactiveColor = inactiveColor,
        // _headerStyle = headerStyle,
        _stepStyle = stepsStyle,
        assert(curStep > 0 == true && curStep <= stepsText.length),
        assert(width > 0),
        assert(height >= 2 * dotRadius),
        assert(width >= dotRadius * 2 * stepsText.length);

  //height of the container
  final double _height;
  //width of the container
  final double _width;
  //container decoration
  final BoxDecoration decoration;
  //list of texts to be shown for each step
  final List<String> _stepsText;
  //cur step identifier
  final int _curStep;
  //active color
  final Color _activeColor;
  //in-active color
  final Color _inactiveColor;
  //dot radius
  final double _dotRadius;
  //container padding
  final EdgeInsets padding;
  //line height
  final double lineHeight;
  //header textstyle
  // final TextStyle _headerStyle;
  //steps text
  final TextStyle _stepStyle;

  List<Widget> _buildDots() {
    var wids = <Widget>[];
    _stepsText.asMap().forEach((i, text) {
      var circleColor;
      [
        if (i == 0 || _curStep > i + 0)
          {circleColor = const Color.fromRGBO(255, 216, 0, 1.0)}
        else if (i == 1 || _curStep > i + 0)
          {circleColor = const Color.fromRGBO(255, 216, 0, 1.0)}
        else if (i == 2 || _curStep > i + 0)
          {circleColor = const Color.fromRGBO(93, 93, 93, 0.0)}
      ];

      var incircleColor;
      [
        if (i == 0 || _curStep > i + 0)
          {incircleColor = const Color.fromRGBO(255, 216, 0, 1.0)}
        else if (i == 1 || _curStep > i + 0)
          {incircleColor = Colors.white}
        else if (i == 2 || _curStep > i + 0)
          {incircleColor = const Color.fromRGBO(93, 93, 93, 0.3)}
      ];

      var lineColor = const Color.fromRGBO(255, 216, 0, 1.0);
      var iconColor;

      [
        if (i == 0 || _curStep > i + 0)
          {iconColor = const Color.fromRGBO(0, 30, 90, 0.3)}
        else if (i == 1 || _curStep > i + 0)
          {iconColor = Colors.white}
        else if (i == 2 || _curStep > i + 0)
          {iconColor = const Color.fromRGBO(93, 93, 93, 0.0)}
      ];

      wids.add(
        Container(
          width: 20.0,
          height: 20.0,
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: incircleColor,
            borderRadius: const BorderRadius.all(Radius.circular(22.0)),
            border: Border.all(
              color: circleColor,
              width: 3.0,
            ),
          ),
          child: Icon(
            Icons.check,
            color: iconColor,
            size: 12.0,
          ),
        ),
      );

      //add a line separator
      //0-------0--------0
      if (i != _stepsText.length - 1) {
        wids.add(
          Expanded(
            child: Container(
              height: lineHeight,
              color: lineColor,
            ),
          ),
        );
      }
    });

    return wids;
  }

  List<Widget> _buildText() {
    var wids = <Widget>[];
    _stepsText.asMap().forEach((i, text) {
      wids.add(Text(text, style: _stepStyle));
    });

    return wids;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: 80,
      width: 400,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: _buildDots(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _buildText(),
          )
        ],
      ),
    );
  }
}
