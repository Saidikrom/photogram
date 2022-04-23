import 'package:flutter/material.dart';
import 'package:photogram/messenger/messages.dart';
import 'inMessages.dart';

class InM2 extends StatelessWidget {
  const InM2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(255, 150, 150, 150),
                    width: 0.5,
                  ),
                ),
              ),
              child: ListTile(
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Message()));
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    )),
                title: Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text(
                    'James',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/c2.png',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        width: 300,
                        height: 89,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 240, 239, 239),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        width: 300,
                        height: 89,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 240, 239, 239),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'A fast 50mm like f1.8 would help with the bokeh. I’ve been using primes as they tend to get a bit sharper images.',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/Ellipse.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/c2.png',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        width: 300,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 240, 239, 239),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Thank you! That was very helpful!',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
