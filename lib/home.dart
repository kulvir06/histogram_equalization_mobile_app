import 'package:flutter/material.dart';
import './utility.dart';
import 'result.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histogram Equaliztion'),
      ),
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String grayLevelString = '';
  String freqString = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Enter Gray Levels space separated..eg:0 1 2 3'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onChanged: (String value) async {
              grayLevelString = value;
            },
            // onFieldSubmitted: (value) {
            //   setState(() {
            //     a1 = value;
            //   });
            // },
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Enter Frequencies space separated..eg:0 1 2 3'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onChanged: (String value) async {
              freqString = value;
            },
            // onFieldSubmitted: (value) {
            //   setState(() {
            //     a2 = value;
            //   });
            // },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64.0),
            child: ElevatedButton(
              onPressed: () {
                //process data
                var grayLevelArray = numExtractor(grayLevelString);
                var freqArray = numExtractor(freqString);
                var sum = sumOfArray(freqArray);
                var pdf = probabilityDistribution(freqArray, sum);
                var cdf = cumulativeDistribution(pdf);
                var mulCDF =
                    multiplyCDF(cdf, grayLevelArray[grayLevelArray.length - 1]);
                var hel = histogramEqualizationLevel(mulCDF);
                print(pdf);
                print(mulCDF);
                print(hel);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ResultPage(
                      passedGrayLevel: grayLevelArray,
                      passedFreq: freqArray,
                      passedSum: sum,
                      passedPdf: pdf,
                      passedCdf: cdf,
                      passedMulCdf: mulCDF,
                      passedHel: hel,
                    ),
                  ),
                );
              },
              child: const Text('Submit'),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 64.0),
          //   child: (ElevatedButton(
          //     onPressed: () async {
          //       if (await canLaunch(
          //           'https://fathomless-crag-64256.herokuapp.com/')) {
          //         await launch('https://fathomless-crag-64256.herokuapp.com/');
          //       } else {
          //         throw 'Could Not launch';
          //       }
          //     },
          //     child: Text('Visit Website'),
          //   )),
          // )
        ],
      ),
    );
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Form Validation",
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final GlobalKey<FormState> _formKey = GlobalKey();
//   String email = "";
//   String password = "";

//   void _submit() {
//     print(email+password);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Form Validation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Enter Email'),
//               keyboardType: TextInputType.emailAddress,
//               onFieldSubmitted: (value) {
//                 setState(() {
//                   email = value;
//                 });
//               },
//               validator: (value) {
//                 if (value!.isEmpty || !value.contains('@')) {
//                   return 'Invalid email!';
//                 }
//               },
//             ),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'password'),
//               keyboardType: TextInputType.visiblePassword,
//               obscureText: true,
//               validator: (value) {
//                 if (value!.isEmpty && value.length < 7) {
//                   return 'Invalid password!';
//                 }
//               },
//               onFieldSubmitted: (value) {
//                 setState(() {
//                   password = value;
//                 });
//               },
//             ),
//             RaisedButton(
//               onPressed: _submit,
//               child: Text('submit'),
//             ),
//           ],
//         ),
//       ),

//     );
//   }
// }
