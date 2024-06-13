import 'package:flutter/material.dart';
import 'package:portfolio_5410356/responsive_widget.dart';

//import 'package:portfolio_5410356/main.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
 Widget build(BuildContext context) {
    return ResponsiveWidget(
      smallScreen: buildSmallScreen(context),
      mediumScreen: buildMediumScreen(context),
      largeScreen: buildLargeScreen(context),
    );
  }

  Widget buildSmallScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: const <Widget>[],
        ),
      ),
      body: buildBody(context),
    );
  }

  Widget buildMediumScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      body: buildBody(context),
    );
  }

  Widget buildLargeScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: AnimatedPadding(
        duration: const Duration(seconds: 1),
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            NavHeader(navButtons: navButtons()),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            ProfileInfo(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            const SocialInfo(),
          ],
        ),
      ),
    );
  }
}

List<Widget> navButtons() {
  return [
    NavButton(
      text: "Home",
      onPressed: () {},
    ),
    NavButton(
      text: "Projects",
      onPressed: () {},
    ),
    NavButton(
      text: "Contact",
      onPressed: () {},
    ),
  ];
}

class NavHeader extends StatelessWidget {
  final List<Widget> navButtons;

  const NavHeader({super.key, required this.navButtons});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      smallScreen: buildSmallScreen(context),
      mediumScreen: buildMediumScreen(context),
      largeScreen: buildLargeScreen(context),
    );
  }

  Widget buildSmallScreen(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        MKDot(),
      ],
    );
  }

  Widget buildMediumScreen(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const MKDot(),
        Row(
          children: navButtons,
        ),
      ],
    );
  }

  Widget buildLargeScreen(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const MKDot(),
        Row(
          children: navButtons,
        ),
      ],
    );
  }
}

class MKDot extends StatelessWidget {
  const MKDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text(
          "MK MTECHVIRAL",
          // ignore: deprecated_member_use
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const NavButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.orange,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: color, side: BorderSide(
          color: color,
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  ProfileInfo({super.key});

  Widget profileImage(BuildContext context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: const BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.deepOrange,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("Snowman duck cool.JPG"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final Widget profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        "Hi there! My name is",
        // ignore: deprecated_member_use
        textScaleFactor: 2,
        style: TextStyle(color: Colors.orange),
      ),
      const Text(
        "Monica\nKenfack",
        // ignore: deprecated_member_use
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      const Text(
        "A Professional Memer.\n"
        "I am also a mediocre Student at the THM Giessen\n",
        softWrap: true,
        // ignore: deprecated_member_use
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white70),
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(), backgroundColor: Colors.red,
              padding: const EdgeInsets.all(10),
            ),
            child: const Text("Resume"),
            onPressed: () {
              html.window.open(
                  "https://profile.indeed.com/resume", "");
            },
          ),
          const SizedBox(width: 20),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red, shape: const StadiumBorder(),
              side: const BorderSide(color: Colors.red),
              padding: const EdgeInsets.all(10),
            ),
            child: const Text("Say Hi!"),
            onPressed: () {
              html.window.open("https://profile.indeed.com/?hl=de_DE&co=DE&from=gnav-jobseeker-profile--profile-one-frontend", "MK");
            },
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData,
        ],
      ),
      mediumScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  const SocialInfo({super.key});

  List<Widget> socialMediaWidgets() {
    return [
      NavButton(
        text: "Github",
        onPressed: () {
          html.window.open("https://github.com/MaomaoSan24", "Git");
        },
        color: Colors.blue,
      ),
      NavButton(
        text: "Twitter",
        onPressed: () {
          html.window.open("", "Twitter");
        },
        color: Colors.blue,
      ),
      NavButton(
        text: "Facebook",
        onPressed: () {
          html.window.open("", "Fb");
        },
        color: Colors.blue,
      ),
    ];
  }

  Widget copyRightText() => const Text(
        "Monica Kenfack ©️2024",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ...socialMediaWidgets(),
          copyRightText(),
        ],
      ),
      mediumScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
          copyRightText(),
        ],
      ),
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
          copyRightText(),
        ],
      ),
    );
  }
}