import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

import 'components/main-content/main_content.dart';
import 'components/mediaplayer/mediaplayer.dart';
import 'components/sidebar/sidebar.dart';
import 'components/sign-in-sidebar/sign_in_siderbar.dart';
import 'config/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Spotify",
        iconTheme: IconThemeData(color: iconColor),
        textTheme: TextTheme(
            bodyText1: TextStyle(
                color: Colors.grey.shade300,
                fontWeight: FontWeight.w700,
                fontSize: 13.5,
                letterSpacing: -0.2),
            bodyText2: TextStyle(
                fontSize: 13.5,
                color: Colors.grey.shade300,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.2)),
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Size size;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PixelPerfect(
        assetPath: "assets/Images/SS.PNG",
        initOpacity: .1,
        scale: 1.25,
        child: Scaffold(
            body: Stack(
          children: [
            Row(
              children: [
                Sidebar(size: size),
                SingleChildScrollView(child: MainContent(size: size)),
                SignInSidebar(size: size)
              ],
            ),
            MediaPlayerWidget(size: size)
          ],
        )),
      ),
    );
  }
}
