import 'package:flutter/material.dart';

Widget buildCallButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.call,
        ),
        onPressed: () {},
      ),
      const Text("Call"),
    ],
  );
}

Widget buildTextButton() {
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.message,
          )),
      const Text("Text"),
    ],
  );
}

Widget buildVideoCallButton() {
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.video_call,
          )),
      const Text("Video"),
    ],
  );
}

Widget buildEmailButton() {
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.email,
          )),
      const Text("Email"),
    ],
  );
}

Widget buildDirectionsButton() {
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.directions,
          )),
      const Text("Directions"),
    ],
  );
}

Widget buildPayButton() {
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.attach_money,
          )),
      const Text("Pay"),
    ],
  );
}

Widget mobilePhoneListTile() {
  return ListTile(
    leading: const Icon(Icons.call),
    title: const Text("330-803-3390"),
    subtitle: const Text("mobile"),
    trailing: IconButton(
        icon: const Icon(Icons.message),
        color: Colors.indigo.shade800,
        onPressed: () {}),
  );
}

Widget otherPhoneListTile() {
  return ListTile(
    leading: const Icon(Icons.call),
    title: const Text("440-440-3390"),
    subtitle: const Text("other"),
    trailing: IconButton(
        icon: const Icon(Icons.message),
        color: Colors.indigo.shade800,
        onPressed: () {}),
  );
}

Widget emailListTile() {
  return const ListTile(
    leading: Icon(Icons.email),
    title: Text("priyanka@priyanka.com"),
    subtitle: Text("work"),
  );
}

Widget addressListTile() {
  return ListTile(
    leading: const Icon(Icons.location_on),
    title: const Text("234 Sunset St, Burlingame"),
    subtitle: const Text("home"),
    trailing: IconButton(
      icon: const Icon(Icons.directions),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}

Widget divider() {
  return const Divider(
    color: Colors.grey,
  );
}
