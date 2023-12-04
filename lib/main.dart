import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_flut/components.dart';
import 'package:new_flut/theme.dart';

void main() {
  runApp(const ContactProfilePage());
}

class ContactProfilePage extends StatefulWidget {
  const ContactProfilePage({super.key});

  @override
  ContactProfilePageState createState() => ContactProfilePageState();
}

class ContactProfilePageState extends State<ContactProfilePage> {
  var currentTheme = APP_THEME.DARK;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: currentTheme == APP_THEME.DARK
            ? MyAppThemes.appThemeDark()
            : MyAppThemes.appThemeLight(),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Contact App"),
              leading: const Icon(
                Icons.arrow_back,
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Contact is starred");
                    }
                  },
                  icon: const Icon(Icons.star_border),
                )
              ],
            ),
            body: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 250,
                      child: Image.network(
                        "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 10),
                      height: 60,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Moses Khan",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    divider(),
                    Container(
                      margin: const EdgeInsets.only(top: 8, bottom: 8),
                      //Applying iconTheme locally
                      // child: Theme(
                      //   data: ThemeData(
                      //     //Applying iconTheme locally
                      //     iconTheme: const IconThemeData(
                      //       //NOTE: Try Colors.orange or a diffrent color
                      //       color: Colors.pink,
                      //     ),
                      //   ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildCallButton(),
                          buildTextButton(),
                          buildVideoCallButton(),
                          buildEmailButton(),
                          buildDirectionsButton(),
                          buildPayButton()
                        ],
                      ),
                    ),
                    // ),
                    divider(),
                    Column(children: [
                      mobilePhoneListTile(),
                      otherPhoneListTile()
                    ]),
                    divider(),
                    emailListTile(),
                    addressListTile()
                  ],
                )
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: IconButton(
                  icon: const Icon(Icons.threesixty),
                  onPressed: () {
                    setState(() {
                      currentTheme == APP_THEME.DARK
                          ? currentTheme = APP_THEME.LIGHT
                          : currentTheme = APP_THEME.DARK;
                    });
                  }),
            )
        ),
      debugShowCheckedModeBanner: false,
    );
  }
}
