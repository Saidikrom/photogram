import 'package:flutter/material.dart';
import 'package:photogram/home/homePage.dart';
import 'register.dart';
import 'login.dart';
import 'package:photogram/profile/profile.dart';

class NickName extends StatefulWidget {
  const NickName({Key? key}) : super(key: key);

  @override
  State<NickName> createState() => _NickNameState();
}

class _NickNameState extends State<NickName> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                ),
              ],
            ),
            Text(
              "Ro'yxatdan O'tish",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                fontFamily: 'Comfortaa',
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                var nickname = _controller.text;
                print(nickname);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              height: 55,
              minWidth: 350,
              child: Text(
                "KEYINGISI",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: RichText(
                  text: TextSpan(
                    text: "Ro’yxat o’tish tugmasini bosish orqali siz ",
                    style: TextStyle(color: Colors.black),
                    children: const [
                      TextSpan(
                          text: ' photogram ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(
                        text: "ijtimoiy tarog’ining ",
                      ),
                      TextSpan(
                        text: 'Foydalanish shartlari ',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: 'va',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: ' Xavfsizlik qoidalari',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: "ga rozilik bildirgan bo’lasiz.",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
