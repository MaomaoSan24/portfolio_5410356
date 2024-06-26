import 'package:flutter/material.dart';
import 'package:portfolio_5410356/responsive_widget.dart';
//import 'package:flutter_form_builder/flutter_form_builder.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: buildBody(context),
    );
  }

  Widget buildLargeScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
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
      onPressed: () {
         html.window.open("", "Pk");
      },
    ),
    NavButton(
      text: "Projects",
      onPressed: () {
 html.window.open("https://indigo-dixie-48.tiiny.site/", "MK");

      },
    ),
    NavButton(
      text: "Contact",
      onPressed: () {
        html.window.open("mailto:monica.kenfack@gmail.com", "MK");
      },
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
          "MKT",
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
            color: Color.fromARGB(255, 225, 147, 3),
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
    this.color = const Color.fromRGBO(255, 152, 0, 1),
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
          color:  Color.fromRGBO(255, 152, 0, 1),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("IMG9256.jpg"),
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
        style: TextStyle(color: Color.fromRGBO(255, 152, 0, 1)),
      ),
      const Text(
        "Monica\nKenfack",
        // ignore: deprecated_member_use
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      const Text(
        "A Professional Memer.\n"
        "Student at the THM Giessen\n",
        softWrap: true,
        // ignore: deprecated_member_use
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.black),
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(), backgroundColor: const Color.fromRGBO(255, 152, 0, 1),
              padding: const EdgeInsets.all(10),
            ),
            child: const Text("Resume"),
            onPressed: () {
              html.window.open(
                  "https://indigo-dixie-48.tiiny.site/", "");
            },
          ),
          const SizedBox(width: 20),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black, shape: const StadiumBorder(), //changed color from white to black
              side: const BorderSide(color: Color.fromRGBO(255, 152, 0, 1)),
              padding: const EdgeInsets.all(10),
            ),
            child: const Text("Say Hi!"),
            onPressed: () {
              html.window.open("mailto:monica.kenfack@gmail.com", "MK");
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
        color: Colors.black,
      ),
      NavButton(
        text: "Twitter",
        onPressed: () {
          html.window.open("", "Twitter");
        },
        color: Colors.black,
      ),
      NavButton(
        text: "Facebook",
        onPressed: () {
          html.window.open("", "Fb");
        },
        color: Colors.black,
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

/*class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Contact'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ContactFormWidget(),
              // Add any additional contact information or content here
            ],
          ),
        ),
      ),
    );
  }
}

class ContactFormWidget extends StatelessWidget {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  ContactFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            name: 'name',
            decoration: const InputDecoration(labelText: 'Name'),
            validator: FormBuilderValidators.required(context),
          ),
          FormBuilderTextField(
            name: 'email',
            decoration: const InputDecoration(labelText: 'Email'),
            validator: FormBuilderValidators.email(context),
          ),
          FormBuilderTextField(
            name: 'message',
            decoration: const InputDecoration(labelText: 'Message'),
            validator: FormBuilderValidators.required(context),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.saveAndValidate()) {
                // Handle form submission
                var formData = _formKey.currentState!.value;
                // ignore: avoid_print
                print(formData);
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class FormBuilderValidators {
  static required(BuildContext context) {}
  
  static email(BuildContext context) {}
}*/
