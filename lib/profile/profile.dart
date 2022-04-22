import 'package:flutter/material.dart';
import 'package:photogram/profile/profile.dart';

class Profile extends StatelessWidget {
  final String nickName;
  const Profile({Key? key, required this.nickName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 65.0),
                    child: Image(
                      image: AssetImage('assets/profile.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      nickName,
                      style: TextStyle(
                        fontSize: 36,
                        fontFamily: 'Comfortaa',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      '@$nickName',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Comfortaa',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 200.0),
                  child: Center(
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      height: 52,
                      minWidth: 350,
                      child: Text(
                        "XABAR",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
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
