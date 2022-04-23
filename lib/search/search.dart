import 'package:flutter/material.dart';
import 'package:photogram/profile/profile.dart';
import 'package:photogram/home/homePage.dart';
import 'package:photogram/imagesOpen/opImg.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _NickNameState();
}

class _NickNameState extends State<Search> {
  TextEditingController _controller = TextEditingController();
  int index = 0;
  String keyword = 'images';
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
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "Izlash",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Comfortaa',
                  color: Colors.black,
                ),
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
            Padding(
              padding: const EdgeInsets.only(right: 225, bottom: 10),
              child: Text(
                'BARCHA NATIJALAR',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Comfortaa',
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side:
                      BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 2),
                ),
                height: 55,
                minWidth: 350,
                child: Text(
                  "KO'PROQ KO'RSATISH",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
