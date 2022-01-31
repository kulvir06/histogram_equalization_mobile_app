import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final passedGrayLevel,
      passedFreq,
      passedSum,
      passedPdf,
      passedCdf,
      passedMulCdf,
      passedHel;

  ResultPage({
    required this.passedGrayLevel,
    required this.passedFreq,
    required this.passedSum,
    required this.passedPdf,
    required this.passedCdf,
    required this.passedMulCdf,
    required this.passedHel,
  });

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double fs = 20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Results',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Results'),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text(
            'Gray Levels Entered By User : \n${widget.passedGrayLevel}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fs,
            ),
          ),
          Text(
            '\nFrequency of corresponding Gray Levels Entered By User :\n${widget.passedFreq}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fs,
            ),
          ),
          Text(
            '\nSum of Frequency Levels: ${widget.passedSum}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fs,
            ),
          ),
          Text(
            '\nProbability Distribution : \n${widget.passedPdf}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fs,
            ),
          ),
          Text(
            '\nCumulative Distribution :\n${widget.passedCdf}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fs,
            ),
          ),
          Text(
            '\nCumulative Distribution Multiplied with Highest Gray Level :\n${widget.passedMulCdf}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fs,
            ),
          ),
          Text(
            '\nHistogram Equaliztion Levels:\n${widget.passedHel}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fs,
            ),
          ),
        ]),
        // Text('Gray Levels :  ${widget.passedGrayLevel} , \n Frequency of Gray levels : ${widget.passedFreq}'),
        // Column(

        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Card(
        //       color: Color.fromARGB(1, 2, 3, 4),
        //       child: InkWell(
        //         splashColor: Colors.blue.withAlpha(30),
        //         onTap: () {

        //         },
        //         child: const SizedBox(
        //           width: 500,
        //           height: 100,
        //           child: Text('${widget.passedGrayLevel} is the passed value'),
        //         ),
        //       ),
        //     ),
        //     Card(
        //       color: Color.fromARGB(1, 2, 3, 4),
        //       child: InkWell(
        //         splashColor: Colors.blue.withAlpha(30),
        //         onTap: () {},
        //         child: const SizedBox(
        //           width: 500,
        //           height: 100,
        //           child: Text('abcdefghijklmnopqrstuvwxyz'),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
