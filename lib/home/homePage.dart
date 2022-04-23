import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:photogram/profile/profile.dart';
import 'package:photogram/messenger/messages.dart';
import 'package:photogram/search/search.dart';
import 'images.dart';
import 'package:photogram/imagesOpen/opImg.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  String keyword = 'images';

  List<Widget> pages = <Widget>[
    HomePage(),
    // SearchScreen(),
    Container(
      color: Colors.white,
      child: Center(
        child: Text('empty'),
      ),
    ),
    Container(
      color: Colors.white,
      child: Center(
        child: Text('empty'),
      ),
    ),
    Message(),
    Profile(
      nickName: 'user',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(39.0),
              child: Text(
                'photogram',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Comfortaa',
                  fontSize: 36,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: GNav(
          tabBackgroundGradient: LinearGradient(colors: [
            Colors.orange,
            Colors.red,
            Color.fromARGB(255, 236, 144, 252)
          ]),
          selectedIndex: index,
          onTabChange: (index) => setState(() => this.index = index),
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: "    ",
            ),
            GButton(
              icon: Icons.search,
              text: "    ",
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
                });
              },
            ),
            GButton(
              icon: Icons.add,
              text: "    ",
            ),
            GButton(
              icon: Icons.messenger_outline,
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Message()));
                });
              },
              text: "    ",
            ),
            GButton(
              icon: Icons.account_circle_outlined,
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile(nickName: '')));
                });
              },
              text: "    ",
            ),
          ],
        ),
      ),
    );
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
}
