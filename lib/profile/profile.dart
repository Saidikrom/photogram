import 'package:flutter/material.dart';
import 'package:photogram/profile/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:photogram/search/search.dart';
import 'package:photogram/imagesOpen/opImg.dart';

class Profile extends StatefulWidget {
  final String nickName;
  const Profile({Key? key, required this.nickName}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int index = 0;
  String keyword = 'images';
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
                      'User',
                      style: TextStyle(
                        fontSize: 36,
                        fontFamily: 'Comfortaa',
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        '@User',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Comfortaa',
                        ),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
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
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: 8,
                      itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return OpnImg(index: index, keyword: keyword);
                            }));
                          },
                          child: buildGrid(index)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container buildGrid(int index) {
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/${index + 1}.png'),
            fit: BoxFit.cover)),
  );
}
