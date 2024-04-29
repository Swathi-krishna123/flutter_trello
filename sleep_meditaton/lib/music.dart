

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Music(),
    );
  }
}

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [
              0.1,
              0.5,
              0.7,
              0.9
            ],
                colors: [
              Color.fromARGB(82, 51, 13, 27),
              Color.fromARGB(82, 145, 35, 77),
              Color.fromARGB(82, 189, 32, 92),
              Color.fromARGB(82, 228, 36, 110),
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 30,
                      )),
                  const SizedBox(
                    width: 60,
                  ),
                  const Text(
                    "Playing Now",
                    style: TextStyle(color: Colors.white, letterSpacing: 1),
                  )
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                    fit: BoxFit.cover,
                    height: 250,
                    width: 250,
                    bundle: PlatformAssetBundle(),
                    "assets/red-and-black-aesthetic.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Summer",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    const Text(
                      "20:45",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Stack(children: [
                      Container(
                        height: 5,
                        width: 245,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        height: 5,
                        width: 155,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ]),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("20:45", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shuffle,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.fast_rewind_sharp,
                        size: 40,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.pause_circle_outline_sharp,
                        size: 40,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.fast_forward_sharp,
                        size: 40,
                        color: Colors.white,
                      )),
                       IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.repeat_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
