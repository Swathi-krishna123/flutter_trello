import 'package:flutter/material.dart';

class Swathi extends StatelessWidget {
  const Swathi({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 0.0),
                        ),
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            // Implement search functionality here
                          },
                        ),
                      ),
                      style:
                          const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  Flexible(
                    //??????
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Flexible(
                          child: IconButton(
                            icon: const Icon(
                              Icons.favorite_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Flexible(
                          child: IconButton(
                            icon: const Icon(
                              Icons.event_note_sharp,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Flexible(
                          child: IconButton(
                            icon: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              height: 100,
              width: 169,
              decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("e_comerce/assets/copy.jpg"),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 169,
              color: Colors.red,
            ),
          ]),
          const SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              height: 100,
              width: 169,
              decoration:  const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("assets/copy.jpg"),
                  fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              height: 100,
              width: 169,
              color: Colors.red,
            ),
          ]),
        ],
      ),
    );
  }
}
