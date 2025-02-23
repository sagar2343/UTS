import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class TicketDetailController{
  final BuildContext context;
  final VoidCallback reloadData;

  TicketDetailController({
    required this.context,
    required this.reloadData,
  });


  void onQrTapped() async{
    EasyLoading.show(status: 'Loading...');
    Future.delayed(const Duration(seconds: 2),(){
      EasyLoading.dismiss();
      EasyLoading.showInfo('Something went Wrong!');
      Navigator.pop(context);
    });
  }


}