import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

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
          userListTile("title", "subtitle", context),
          userListTile("title", "subtitle", context),
          userListTile("title", "subtitle", context),
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
