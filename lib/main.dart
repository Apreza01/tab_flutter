import 'package:flutter/material.dart';

import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;
import './hal_headset.dart' as headset;
import './hal_smartphone.dart' as hp;

void main() {
  runApp(MaterialApp(
    title: "Tab Bar",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(106, 7, 255, 181),
        title: Text("Daftar Elektronik"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.computer), text: "Komputer"),
            Tab(icon: Icon(Icons.headset), text: "Headset"),
            Tab(icon: Icon(Icons.radio), text: "Radio"),
            Tab(icon: Icon(Icons.smartphone), text: "Smartphone"),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          komputer.Komputer(),
          headset.Headset(),
          radio.Radio(),
          hp.smartphone(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Color.fromARGB(76, 33, 149, 243),
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.computer)),
            Tab(icon: Icon(Icons.headset)),
            Tab(icon: Icon(Icons.radio)),
            Tab(icon: Icon(Icons.smartphone)),
          ],
        ),
      ),
    );
  }
}
