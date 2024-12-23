import 'package:flutter/material.dart';

class HomeController {

  BuildContext context;
  VoidCallback reloadData;

  HomeController({required this.context, required this.reloadData});

  double opacity = 1.0;


  void showPopupMenu() {
    showMenu(
      color: Colors.white,
      context: context,
      position: RelativeRect.fromLTRB(MediaQuery.of(context).size.width * 0.01, 0, 0, 0),
      items: [
        const PopupMenuItem(
          value: '',
          child: Text('UserID: 9987603256',style: TextStyle(fontSize: 16)),
        ),
        const PopupMenuItem(
          value: 'Logout',
          child: Text('Logout',style: TextStyle(fontSize: 16)),
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value != null) {
        // Handle selected option
        if (value == '') {

        } else if (value == 'Logout') {
          print('Logout selected or clicked');
        }
      }
    });
  }

}