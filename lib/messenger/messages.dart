import 'package:flutter/material.dart';
import 'package:photogram/messenger/inMessages3.dart';
import 'package:photogram/messenger/inMessages4.dart';
import 'inMessages.dart';
import 'inMessages2.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

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
                    //                   <--- left side
                    color: Color.fromARGB(255, 150, 150, 150),
                    width: 0.5,
                  ),
                ),
              ),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Text(
                    'Suxbat',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => InM()));
              },
              child: Container(
                  child: ListTile(
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/c1.png'),
                ),
                title: Text('James'),
                subtitle: Text('Thank you! That was very helpful!'),
              )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => InM2()));
              },
              child: Container(
                  child: ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 0.5,
                  ),
                ),
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/c2.png'),
                ),
                title: Text('Will Kenny'),
                subtitle: Text('I know... I’m trying to get the funds.'),
              )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => InM3()));
              },
              child: Container(
                  child: ListTile(
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/c3.png'),
                ),
                title: Text('Beth Williams'),
                subtitle: Text(
                    'I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm...'),
              )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => InM4()));
              },
              child: Container(
                  child: ListTile(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 0.5,
                  ),
                ),
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/c4.png'),
                ),
                title: Text('Rev Shawn'),
                subtitle: Text(
                    'Wanted to ask if you’re available for a portrait shoot next week.'),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
