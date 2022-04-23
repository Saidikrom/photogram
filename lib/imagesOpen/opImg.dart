import 'package:flutter/material.dart';

class OpnImg extends StatelessWidget {
  int index;
  String keyword;
  OpnImg({Key? key, required this.index, required this.keyword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/$keyword/${index + 1}.png',
              ),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 30,
              top: 40,
            ),
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        height: 50,
                        width: 50,
                        image: AssetImage(
                          'assets/images/${index + 1}.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Anglo Pantazish',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto Bold'),
                        ),
                        Text(
                          '@angelopantazis',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Roboto Regular'),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.clear,
                        size: 40,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
