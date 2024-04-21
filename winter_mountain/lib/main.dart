import 'package:flutter/material.dart';
import 'package:winter_mountain/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isliked = false;
  bool isclick1 = false;
  bool isclick2 = false;
  bool isclick3 = false;

  int selectitem = 0;
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "winter mountain",
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Text(
                                  "Hi, David",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.waving_hand,
                                  color: Colors.amber,
                                )
                              ]),
                              Text(
                                "Exolore the world",
                                style: TextStyle(color: Colors.black45),
                              )
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/istockphoto-1463491559-1024x1024 (1).jpg"),
                            radius: 27,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    strokeAlign: BorderSide.strokeAlignInside),
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            "Popular Places",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "View all",
                              style: TextStyle(color: Colors.black45),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isclick1 = !isclick1;
                              isclick2 = false;
                              isclick3 = false;
                            });
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: isclick1 == true
                                  ? Colors.black
                                  : Colors.white),
                          child: const Text("Most viewed"),
                        ),
                        ElevatedButton(
                          
                          onPressed: () {
                            setState(() {
                              isclick2 = !isclick2;
                              isclick1 = false;
                              isclick3 = false;
                            });
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: isclick2 == true
                                  ? Colors.black
                                  : Colors.white),
                          child: const Text("Near by",),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isclick3 = !isclick3;
                                isclick1 = false;
                                isclick2 = false;
                              });
                            },
                            style: TextButton.styleFrom(
                                backgroundColor:
                                    isclick3 ? Colors.black : Colors.white),
                            child: const Text("Latest")),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 300,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const NewPage()));
                                },
                                child: Container(
                                  height: 250,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/manali-750x430.jpg"),
                                      )),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CircleAvatar(
                                                child: InkWell(
                                                    onTap: () {
                                                      setState(() {

                                                        isliked = !isliked;
                                                      });
                                                    },
                                                    child: Icon(
                                                      Icons.favorite,
                                                      color: isliked
                                                          ? Colors.red
                                                          : Colors.black26,
                                                    )))
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Card(
                                          color: Colors.white30,
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Mountain",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Location",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.white54),
                                                    ),
                                                    Spacer(),
                                                    Icon(
                                                      Icons
                                                          .favorite_outline_sharp,
                                                      size: 15,
                                                      color: Colors.white54,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 10,
                                ),
                            itemCount: 10),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedindex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  label: "home", icon: Icon(Icons.home_filled)),
              BottomNavigationBarItem(
                  label: "time", icon: Icon(Icons.access_time)),
              BottomNavigationBarItem(
                  label: "like", icon: Icon(Icons.favorite_outline)),
              BottomNavigationBarItem(
                  label: "user", icon: Icon(Icons.person_2_sharp))
            ],
            currentIndex: selectedindex,
            selectedItemColor: Colors.purple,
          ),
        ),
      ),
    );
  }
}
