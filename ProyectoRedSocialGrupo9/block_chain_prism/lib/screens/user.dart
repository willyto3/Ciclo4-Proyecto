import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          userTitle("USER INFORMATION"),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          userListTile("Email", "subtitle", context),
          userListTile("Phone Number", "subtitle", context),
          userListTile("Country", "subtitle", context),
          userTitle("USER SETTINGS"),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          ListTileSwitch(
            value: _value,
            leading: const Icon(Icons.mode_night_outlined),
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            visualDensity: VisualDensity.comfortable,
            switchType: SwitchType.cupertino,
            switchActiveColor: Colors.purple,
            title: const Text('Dark Theme'),
          ),
        ],
      ),
    );
  }
}

Widget userListTile(String title, String subTitle, BuildContext context) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      //splashColor: Theme.of(context).splashColor
      child: ListTile(
        onTap: () {},
        title: Text(title),
        subtitle: Text(subTitle),
        leading: const Icon(Icons.email),
      ),
    ),
  );
}

Widget userTitle(String title) {
  return Text(
    title,
    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
  );
}
