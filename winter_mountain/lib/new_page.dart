import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 300,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/manali-750x430.jpg"),
                      fit: BoxFit.cover),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 30, right: 30),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.arrow_back_ios_sharp)),
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          child: Icon(Icons.bookmark_border_outlined),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 20,
                      color: Colors.white30,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mountain",
                                style: TextStyle(color: Colors.white)),
                            Row(
                              children: [
                                Text(
                                  "Location",
                                  style: TextStyle(color: Colors.white54),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.favorite_outline_sharp,
                                  size: 15,
                                  color: Colors.white54,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 20, right: 150),
              child: Row(
                children: [
                  Text(
                    "Over view",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    "Details",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.timelapse_rounded,
                        size: 40,
                      ),
                      Text("8 hours")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.cloud_circle,
                        size: 40,
                      ),
                      Text("10 c")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 40,
                      ),
                      Text("4.5")
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                height: 100,
                child: const SingleChildScrollView(
                    child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                      textAlign: TextAlign.justify,
                      maxLines: null,
                      overflow: TextOverflow.visible,
                      "A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. This is because paragraphs show a reader where the subdivisions of an essay begin and end, and thus help the reader see the organization of the essay and grasp its main points.A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. This is because paragraphs show a reader where the subdivisions of an essay begin and end, and thus help the reader see the organization of the essay and grasp its main points."),
                )),
              ),
            ),
            Positioned(
                child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.indigo.shade800,
                      foregroundColor: Colors.white,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Book Now   ",
                        ),
                        Icon(Icons.send)
                      ],
                    ),
                  ),
                )
              ],
            ))
          ],
        )),
      ),
    ));
  }
}
