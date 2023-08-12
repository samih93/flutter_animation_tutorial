import 'package:flutter/material.dart';
import 'package:flutter_tutorial_animation/implicit_animation/animated_container_screen.dart';
import 'package:flutter_tutorial_animation/animation_and_tween_screen.dart';
import 'package:flutter_tutorial_animation/animation_controller_status_screen.dart';
import 'package:flutter_tutorial_animation/animation_curves_screen.dart';

import 'implicit_animation/animated_align_widget_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePAge(),
    );
  }
}

class MyHomePAge extends StatelessWidget {
  const MyHomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Animation Course"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          animationControllerStatusWidget(context),
          SizedBox(
            height: 5,
          ),
          animationAndTweenWidget(context),
          SizedBox(
            height: 5,
          ),
          animationCurvesWidget(context),
          SizedBox(
            height: 5,
          ),
          animatedalignDemoWidget(context),
          SizedBox(
            height: 5,
          ),
          animatedContainerDemoWidget(context),
        ]),
      ),
    );
  }
}

Widget animationControllerStatusWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimationControllerStatusScreen(),
          ));
    },
    child: Text("Animation Controller status"));

Widget animationAndTweenWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimationAndTweenScreen(),
          ));
    },
    child: Text("Animation And Tween"));

Widget animationCurvesWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimationCurvesScreen(),
          ));
    },
    child: Text("Animation Curves"));

Widget animatedalignDemoWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimatedAlignDemoScreen(),
          ));
    },
    child: Text("Animation Align Demo"));

Widget animatedContainerDemoWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimatedContainerScreen(),
          ));
    },
    child: Text("Animation Container "));
