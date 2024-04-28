import 'package:flutter/material.dart';

class Newpage extends StatefulWidget {
  const Newpage({super.key});

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  //kanik
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Scaffold(
          backgroundColor: Colors.black87,
          appBar: AppBar(
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Sleep Meditation",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ],
                )),
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outlined),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 10, // aloooo haaa aah
              ),
              const SizedBox(
                width: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Best Practice Meditation',
                    style: TextStyle(color: Colors.white),
                  ),
                ], //enthanu mele venam gap aanho aaaaa
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                // ini curve srorytile  function alle aa imaginu border circular...
                //close cheyth on aakinokyo yaml le angane oru prashnam nd mmmmm haaa
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    strorytile("assets/him1.png"),
                    strorytile("assets/himalaya2.jpg"),
                    strorytile("assets/himalaya3.jpg"),
                    strorytile("assets/himalaya4.jpg"),
                    strorytile("assets/him6.jpg"),
                    strorytile("assets/him7.jpeg"),
                    strorytile("assets/him8.jpeg"),
                    strorytile("assets/him10.jpeg"),
                    strorytile("assets/himalaya4.jpg"),
                    strorytile("assets/him1.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 63, 68, 70)),
                        child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.headphones,
                                  color: Colors.white,
                                  size: 35,
                                ))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 63, 68, 70)),
                        child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.settings_input_svideo_rounded,
                                  color: Colors.white,
                                  size: 35,
                                ))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    height: 4,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              const Draggablesheet()
            ],
          ),
        ),
      ),
    );
  }

  Padding strorytile(String img) {
    //cheyyoo cheyalo
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 250,
        width: 250,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Image(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Draggablesheet extends StatelessWidget {
  const Draggablesheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          const SizedBox(
            height: 200,
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: null,
                  overflow: TextOverflow.visible,
                  "A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. This is because paragraphs show a reader where the subdivisions of an essay begin and end, and thus help the reader see the organization of the essay and grasp its main points.A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. This is because paragraphs show a reader where the subdivisions of an essay begin and end, and thus help the reader see the organization of the essay and grasp its main points."),
            )),
          ),
          Positioned(
              right: 20,
              left: 20,
              bottom: 7,
              child: Container(
                height: 55,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ))
        ],
      ),
    );
  }
}
