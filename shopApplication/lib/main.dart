import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.legend_toggle_outlined),
          actions: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.all(10),
              child: const Icon(Icons.search),
            )
          ],
        ),
        body: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("Shop ", style: TextStyle(fontSize: 20, letterSpacing: 1)),
                Text(
                  "Anthropologie",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buidelevatedbutton("Home Decor", isSelected: true),
                buidelevatedbutton("Bath & Body"),
                buidelevatedbutton("Beauty")
              ],
            ),
            SizedBox(height: 20,),
            Expanded(child: Container(decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.only(topLeft: Radius.circular(70))),))
          ],
        ),
      ),
    );
  }

  ElevatedButton buidelevatedbutton(String text, {bool isSelected = false}) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
            backgroundColor: isSelected
                ? MaterialStatePropertyAll(Colors.pink[100])
                : MaterialStatePropertyAll(Colors.grey)));
  }
}
