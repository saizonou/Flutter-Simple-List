import 'package:flutter/material.dart';
import 'package:simple_user_list/data/Data.dart';

class UserList extends StatefulWidget {
  @override
  UserListState createState() => UserListState();
}

class UserListState extends State<UserList> {
  var userList = getUsers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple user list"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
        ),
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: getUsers().length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "images/${userList[index].avatar}",
                        width: 70,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userList[index].name,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      Text(userList[index].title),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
