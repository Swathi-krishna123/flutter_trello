import 'package:flutter/material.dart';
import 'package:sleep_meditaton/ontap_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> items = ["Insomnia", "Depression", "baby sleep", "others"];
  List<IconData> icons = [Icons.home, Icons.explore, Icons.search, Icons.feed];
  int selectedindex = 0;
  int setindex=0;

  @override
  Widget build(context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey.shade700,
          onTap: (int index) {
            setState(() {
              setindex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                tooltip: "timer",
                label: "",
                icon: Icon(
                  Icons.av_timer_rounded,
                )),
            BottomNavigationBarItem(
                tooltip: "barchart",
                label: "",
                icon: Icon(
                  Icons.bar_chart,
                )),
            BottomNavigationBarItem(
                tooltip: "profile",
                label: "",
                icon: Icon(
                  Icons.person,
                ))
          ],
          currentIndex: setindex,
          selectedItemColor: Colors.blue),
      backgroundColor: Colors.black,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Discover",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 4,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)),
                  )
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 25,
            ),
            // buildcontainer("Insomnia",isselected: true),
            // const SizedBox(width: 10),
            // buildcontainer("Depression"),
            // const SizedBox(width: 10),
            // buildcontainer("Baby Sleep"),
            // const SizedBox(width: 10),
            // buildcontainer("others", )

            SizedBox(
                height: 70,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedindex = index;
                              });
                            },
                            child: Container(
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(0, -1))
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: selectedindex == index
                                    ? Colors.blue
                                    : Colors.white24,
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                )),
                SizedBox(height: 60,child:Center(child:Icon(icons[selectedindex],color: Colors.white,)) ,),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Recommented",
                  style:
                      TextStyle(color: Colors.blueGrey.shade400, fontSize: 17),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(color: Colors.blue.shade300),
                  ),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  buidnewcontainer(
                      "Sleep Meditation",
                      "7 Days Audio Series",
                      Icons.headphones,
                      Icons.room_rounded,
                      Colors.blue.shade100, () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Newpage()));
                  }),
                  buidnewcontainer(
                      "Morning meditation",
                      "7 Days Dance Series",
                      Icons.video_call,
                      Icons.play_arrow,
                      Colors.pink.shade100, () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Newpage()));
                  }),
                  buidnewcontainer(
                      "Food Control",
                      "proper dietion",
                      Icons.food_bank,
                      Icons.density_small,
                      Colors.green.shade100, () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Newpage()));
                  }),
                  buidnewcontainer("Relax Time", "wating videos", Icons.tv,
                      Icons.read_more, Colors.red.shade100, () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Newpage()));
                  })
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Recent",
                  style:
                      TextStyle(color: Colors.blueGrey.shade400, fontSize: 17),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            const Padding(
              padding: EdgeInsets.all(24),
              child: Gridb(),
            ),
          ],
        ),
      ),
    );
  }
}

class Gridb extends StatefulWidget {
  const Gridb({super.key});

  @override
  State<Gridb> createState() => _GridbState();
}

class _GridbState extends State<Gridb> {
  final List<Map> gridup = [
    {
      "Title": "Calming Sound",
      "icon": Icons.headphones,
      "color": Colors.pink.shade200
    },
    {
      "Title": "Insomnia",
      "icon": Icons.play_circle_fill,
      "color": Colors.green.shade100
    },
    {
      "Title": "Sleeping music",
      "icon": Icons.dashboard_customize_rounded,
      "color": Colors.red.shade100
    },
    {"Title": "Dancing", "icon": Icons.cabin, "color": Colors.yellow.shade100},
    {
      "Title": "Insomnia",
      "icon": Icons.play_circle_fill,
      "color": Colors.blue.shade100
    },
    {
      "Title": "Calming Sound",
      "icon": Icons.headphones,
      "color": Colors.pink.shade100
    },
    {
      "Title": "Insomnia",
      "icon": Icons.play_circle_fill,
      "color": Colors.green.shade100
    },
    {
      "Title": "Sleeping music",
      "icon": Icons.dashboard_customize_rounded,
      "color": Colors.red.shade100
    },
    {"Title": "Dancing", "icon": Icons.cabin, "color": Colors.yellow.shade100},
    {
      "Title": "Insomnia",
      "icon": Icons.play_circle_fill,
      "color": Colors.blue.shade100
    },
  ];
  @override
  Widget build(context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
      itemCount: gridup.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(color: gridup[index]["color"]),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  gridup[index]["Title"],
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Icon(
                  gridup[index]["icon"],
                  color: Colors.white,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

buidnewcontainer(String text1, String text2, IconData icon1, IconData icon2,
    Color color, VoidCallback onTap) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 200,
        width: 300,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: const TextStyle(
                    letterSpacing: 1,
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                text2,
                style: const TextStyle(color: Colors.white60, fontSize: 18),
              ),
              const Spacer(),
              Row(
                children: [
                  Icon(
                    icon1,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    icon2,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}

// Container buildcontainer(String text,{bool isselected=false}) {

//   return Container(
//     decoration: BoxDecoration(boxShadow: [BoxShadow(spreadRadius: 1,blurRadius:5 ,offset: Offset(0, -1))],
//         borderRadius: BorderRadius.circular(10),color: isselected?Colors.blue:Colors.white24,), 
//     child: TextButton(
//       onPressed:(){},
//       child: Text(
//         text,
//         style: const TextStyle(color: Colors.white),
//       ),
//     ),
//   );
// }

