import 'package:flutter/material.dart';
import 'register/register.dart';
import 'register/login.dart';

class EnterPage extends StatelessWidget {
  const EnterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 7,
              child: Center(
                child: Text(
                  'photogram',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Comfortaa',
                    fontSize: 48,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    child: ListTile(
                      leading: Image(
                        image: AssetImage('assets/Frame.png'),
                      ),
                      title: Text(
                        'Quantic Jamoasi',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        'Photogram beta 1.0',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Comfortaa',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ListTile(
                      leading: MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        height: 52,
                        minWidth: 167,
                        child: Text(
                          "KIRISH",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      trailing: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ),
                          );
                        },
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        height: 52,
                        minWidth: 167,
                        child: Text(
                          "RO'YXATDAN O'TISH",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
