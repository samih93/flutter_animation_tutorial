import 'package:flutter/material.dart';
import 'package:flutter_tutorial_animation/explicit_animation/animated_builder_screen.dart';
import 'package:flutter_tutorial_animation/explicit_animation/fade_transition_screen.dart';
import 'package:flutter_tutorial_animation/explicit_animation/positioned_transition_screen.dart';
import 'package:flutter_tutorial_animation/explicit_animation/rotation_transition_screen.dart';
import 'package:flutter_tutorial_animation/explicit_animation/size_tranisition_Screen.dart';
import 'package:flutter_tutorial_animation/implicit_animation/animated_container_screen.dart';
import 'package:flutter_tutorial_animation/animation_and_tween_screen.dart';
import 'package:flutter_tutorial_animation/animation_controller_status_screen.dart';
import 'package:flutter_tutorial_animation/animation_curves_screen.dart';
import 'package:flutter_tutorial_animation/implicit_animation/animated_cross_Fade.dart';
import 'package:flutter_tutorial_animation/implicit_animation/animated_default_text_style.dart';
import 'package:flutter_tutorial_animation/implicit_animation/animated_padding_screen.dart';
import 'package:flutter_tutorial_animation/implicit_animation/animated_positionned_screen.dart';
import 'package:flutter_tutorial_animation/page_transitions/page_fade_transition.dart';
import 'package:flutter_tutorial_animation/page_transitions/page_rotation_transition.dart';
import 'package:flutter_tutorial_animation/page_transitions/page_scale_transition.dart';
import 'package:flutter_tutorial_animation/page_transitions/page_size_transition.dart';
import 'package:flutter_tutorial_animation/page_transitions/page_slide_transition.dart';
import 'package:flutter_tutorial_animation/page_transitions/page_two.dart';

import 'implicit_animation/animated_align_widget_screen.dart';
import 'implicit_animation/animated_list_screen.dart';
import 'implicit_animation/animated_opacity_demo.dart';
import 'implicit_animation/animated_physical_model_screen.dart';
import 'implicit_animation/animated_positioned_directional_screen.dart';
import 'implicit_animation/animated_switcher_Screen.dart';

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
      home: const MyHomePAge(),
    );
  }
}

class MyHomePAge extends StatelessWidget {
  const MyHomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Animation Course"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          animationControllerStatusWidget(context),
          const SizedBox(
            height: 5,
          ),
          animationAndTweenWidget(context),
          const SizedBox(
            height: 5,
          ),
          animationCurvesWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedalignDemoWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedContainerDemoWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedDefaultTextStyleWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedOpacityWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedPaddingWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedPhysicalWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedPositionedWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedPositionedDirectionalWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedCrossFadeWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedSwitcherWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedListWidget(context),
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              "Explicit Animation",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          positionedTransitionWidget(context),
          const SizedBox(
            height: 5,
          ),
          sizeTransitionWidget(context),
          const SizedBox(
            height: 5,
          ),
          rotationTransitionWidget(context),
          const SizedBox(
            height: 5,
          ),
          animatedBuilderWidget(context),
          const SizedBox(
            height: 5,
          ),
          fadeTransiotionWidget(context),
          const SizedBox(
            height: 5,
          ),
          const Center(
            child: Text(
              "Page Transitions",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          pageFadeTransitionWidget(context),
          const SizedBox(
            height: 5,
          ),
          pageScaleTransitionWidget(context),
          const SizedBox(
            height: 5,
          ),
          pageRotationTransitionWidget(context),
          const SizedBox(
            height: 5,
          ),
          pageSlideTransitionWidget(context),
          const SizedBox(
            height: 5,
          ),
          pageSizeTransitionWidget(context),
          const SizedBox(
            height: 20,
          ),
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
            builder: (context) => const AnimationControllerStatusScreen(),
          ));
    },
    child: const Text("Animation Controller status"));

Widget animationAndTweenWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimationAndTweenScreen(),
          ));
    },
    child: const Text("Animation And Tween"));

Widget animationCurvesWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimationCurvesScreen(),
          ));
    },
    child: const Text("Animation Curves"));

Widget animatedalignDemoWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedAlignDemoScreen(),
          ));
    },
    child: const Text("Animation Align Demo"));

Widget animatedContainerDemoWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedContainerScreen(),
          ));
    },
    child: const Text("Animation Container "));

Widget animatedDefaultTextStyleWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedDefaultTextStyleScreen(),
          ));
    },
    child: const Text("Animation DefaultTextStyle "));

Widget animatedOpacityWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedOpacityScreen(),
          ));
    },
    child: const Text("Animation Opacity "));

Widget animatedPaddingWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedPaddingScreen(),
          ));
    },
    child: const Text("Animation Padding screen "));

Widget animatedPhysicalWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedPhysicalModelScreen(),
          ));
    },
    child: const Text("Animated physical screen "));

Widget animatedPositionedWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedPositionedScreen(),
          ));
    },
    child: const Text("Animated Positioned screen "));

Widget animatedPositionedDirectionalWidget(BuildContext context) =>
    ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const AnimatedPositionedDirectionalScreen(),
              ));
        },
        child: const Text("Animated Positioned Directional "));

Widget animatedCrossFadeWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedCrossFadeScreen(),
          ));
    },
    child: const Text("Animated Cross Fade "));

Widget animatedSwitcherWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedSwitcherScreen(),
          ));
    },
    child: const Text("Animated Switcher"));

Widget animatedListWidget(BuildContext context) => ElevatedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedListScreen(),
          ));
    },
    child: const Text("Animated List "));

Widget positionedTransitionWidget(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PositionedTransitionScreen(),
          ));
    },
    child: const Text(
      "Positioned transition ",
      style: TextStyle(color: Colors.white),
    ));

Widget sizeTransitionWidget(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SizeTransitionScreen(),
          ));
    },
    child: const Text(
      "Size transition ",
      style: TextStyle(color: Colors.white),
    ));

Widget rotationTransitionWidget(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const RotationTransitionScreen(),
          ));
    },
    child: const Text(
      "Rotation transition ",
      style: TextStyle(color: Colors.white),
    ));
Widget animatedBuilderWidget(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AnimatedBuilderScreen(),
          ));
    },
    child: const Text(
      "Animated Builder ",
      style: TextStyle(color: Colors.white),
    ));
Widget fadeTransiotionWidget(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FadeTransitionScreen(),
          ));
    },
    child: const Text(
      "Fade Transition ",
      style: TextStyle(color: Colors.white),
    ));

Widget pageFadeTransitionWidget(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
    onPressed: () {
      Navigator.push(
          context,
          PageFadeTransition(
            page: const PageTwo(),
          ));
    },
    child: const Text(
      "Page Fade Transition ",
      style: TextStyle(color: Colors.white),
    ));
Widget pageScaleTransitionWidget(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
    onPressed: () {
      Navigator.push(
          context,
          PageScaleTransition(
            page: const PageTwo(),
          ));
    },
    child: const Text(
      "Page Scale Transition ",
      style: TextStyle(color: Colors.white),
    ));
Widget pageRotationTransitionWidget(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
    onPressed: () {
      Navigator.push(
          context,
          PageRotationTransition(
            page: const PageTwo(),
          ));
    },
    child: const Text(
      "Page Rotation Transition ",
      style: TextStyle(color: Colors.white),
    ));
Widget pageSlideTransitionWidget(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
    onPressed: () {
      Navigator.push(
          context,
          PageSlideTransition(
            page: const PageTwo(),
          ));
    },
    child: const Text(
      "Page Slide Transition ",
      style: TextStyle(color: Colors.white),
    ));
Widget pageSizeTransitionWidget(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
    onPressed: () {
      Navigator.push(
          context,
          PageSizeTransition(
            page: const PageTwo(),
          ));
    },
    child: const Text(
      "Page Size Transition ",
      style: TextStyle(color: Colors.white),
    ));
