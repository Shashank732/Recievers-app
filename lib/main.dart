import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var receiverText = 'The Receivers text is displayed here';

  void clearText() {}

  void showText() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Receiver App'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                receiverText,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: showText,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [

                            Text(
                              'Show',
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.arrow_forward,
                              ),
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: clearText,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Clear',
                              style: TextStyle(fontSize: 28,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon (Icons.cancel_outlined),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
