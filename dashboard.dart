import 'package:flutter/material.dart';
import 'package:labtaskall/SQLTask/SQLmain.dart';
import 'package:labtaskall/chatapp/chatapp.dart';
import 'package:labtaskall/form/formapp.dart';
import 'package:labtaskall/futureandstream/fands.dart';
import 'package:labtaskall/gestures/hdrag.dart';
import 'package:labtaskall/gestures/onscale.dart';
import 'package:labtaskall/gestures/swipezoom.dart';
import 'package:labtaskall/gestures/tapgesture.dart';
// import 'package:labtaskall/navigation/homepage.dart';
import 'package:labtaskall/navigation/navigate.dart';
import 'package:labtaskall/widgets/card.dart';
import 'package:labtaskall/widgets/drawers.dart';
import 'package:labtaskall/widgets/dropbtn.dart';
import 'package:labtaskall/widgets/iconbtn.dart';
import 'package:labtaskall/widgets/imageinapp.dart';
import 'package:labtaskall/widgets/radiobtn.dart';
import 'package:labtaskall/widgets/sst.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Card makeDashboardItem(String title, IconData icon, screen) {
    return Card(
        elevation: 1.0,
        margin: const EdgeInsets.all(8.0),
        child: Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => screen,
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                const SizedBox(height: 50.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                const SizedBox(height: 20.0),
                Center(
                  child: Text(title,
                      style:
                          const TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Lab All Tasks Dashboard!"),
        elevation: .1,
        backgroundColor: Color.fromARGB(255, 76, 181, 247),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem("SQL", Icons.format_align_center, const MyHome()),
            makeDashboardItem(
                "Form", Icons.format_align_center, const FormApp()),
            makeDashboardItem(
                "Icon Button", Icons.emoji_emotions, const IconBtn()),
            makeDashboardItem("Future & Stream", Icons.stream, const FandS()),
            makeDashboardItem("Card", Icons.card_travel, const Cards()),
            makeDashboardItem("On Scale", Icons.scale, const OnScaleApp()),
            makeDashboardItem("Chat App", Icons.chat, const ChatApp()),
            makeDashboardItem(
                "Drop Down Button", Icons.arrow_drop_down, const DropBtn()),
            makeDashboardItem(
                "Radio Button", Icons.radio_button_on, const RadioBtn()),
            makeDashboardItem("Image", Icons.image, const ImageInApp()),
            makeDashboardItem(
                "Drawer and App Bar", Icons.apps, const Drawers()),
            makeDashboardItem(
                "Slider Switch and Textfield", Icons.widgets, const Sst()),
            makeDashboardItem(
                "Swipe Images and Zoom IN & Out", Icons.swipe, SwipeImages()),
            makeDashboardItem("Swipe Text", Icons.swipe, const HDRag()),
            makeDashboardItem(
                "Tap Gestures", Icons.tap_and_play, const TapGes()),
            makeDashboardItem("Navigation", Icons.route, const Navigate()),
          ],
        ),
      ),
    );
  }
}
