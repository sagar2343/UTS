import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../config/theme/app_theme.dart';
import '../../../showTicket/views/pages/showticket_screen.dart';
import '../../controller/home_controller.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  late final HomeController _controller;
  late TabController _tabController;

  @override
  void initState() {
    _controller = HomeController(context: context, reloadData: reloadData);
    _tabController = TabController(length: 5, vsync: this);
    _startBlinkingText();
    // TODO: implement initState
    super.initState();
  }

  void _startBlinkingText() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      setState(() {
        _controller.opacity = _controller.opacity == 1.0 ? 0.5 : 1.0;
      });
    });
  }

  void reloadData(){
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Appbar Section
            Stack(
              children: [
                // AppBar image
                Image.asset('assets/images/appbar.jpeg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                // Tappable area positioned over the image
                Positioned(
                  right: w * 0.02,
                  top: h * 0.00,
                  child: GestureDetector(
                    onTap: () {
                      _controller.showPopupMenu();
                    },
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.1,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),

            //Heading Text
            // Padding(
            //   padding: const EdgeInsets.only(top: 8.0,bottom: 2.0),
            //   child: Center(
            //     child: AnimatedOpacity(
            //       opacity: _controller.opacity,
            //       duration: const Duration(milliseconds: 800),
            //       child: Text('INDIAN RAILWAYS OFFERS 3% BONUS ON\nRECHARGE OF R-WALLET.',style:Theme.of(context).textTheme.titleMedium!.copyWith(color: const Color(0xFF504080),fontWeight: FontWeight.w500),textAlign: TextAlign.center),
            //     ),
            //   ),
            // ),
            // Divider(color: Colors.grey[200], thickness: 1),

            // TabBar Section
            SizedBox(height: h * 0.005),
            TabBar(
              controller: _tabController,
              indicatorColor: myPrimaryColor,
              indicatorSize: TabBarIndicatorSize.tab,

              tabs: [
                _buildTab('assets/images/icon1.jpeg', 'Journey\nTicket'),
                _buildTab('assets/images/icon2.jpeg', 'OR\nBookng'),
                _buildTab('assets/images/icon3.jpeg', 'Quick\nBookng'),
                _buildTab('assets/images/icon4.jpeg', 'Patform\nTicket'),
                _buildTab('assets/images/icon5.jpeg', 'Season\nTicket'),
              ],
            ),

            //Box sections
            Stack(
              children: [
                Image.asset('assets/images/buttons.jpeg'),
                Positioned(
                  right: w * 0.02,
                  top: h * 0.012,
                  child: Container(
                    // color: Colors.red.withOpacity(0.5),
                    height: h * 0.06,
                    width: w * 0.3,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowTicketScreen()));
                      },
                    ),
                  ),
                ),Positioned(
                  right: w * 0.35,
                  top: h * 0.012,
                  child: Container(
                    // color: Colors.blue.withOpacity(0.5),
                    height: h * 0.06,
                    width: w * 0.3,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowTicketScreen()));
                      },
                    ),
                  ),
                ),Positioned(
                  right: w * 0.68,
                  top: h * 0.012,
                  child: Container(
                    // color: Colors.green.withOpacity(0.5),
                    height: h * 0.06,
                    width: w * 0.3,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowTicketScreen()));
                      },
                    ),
                  ),
                ),
                Positioned(
                  right: w * 0.02,
                  top: h * 0.086,
                  child: Container(
                    // color: Colors.purple.withOpacity(0.5),
                    height: h * 0.06,
                    width: w * 0.3,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowTicketScreen()));
                      },
                    ),
                  ),
                ),Positioned(
                  right: w * 0.35,
                  top: h * 0.086,
                  child: Container(
                    // color: Colors.yellow.withOpacity(0.5),
                    height: h * 0.06,
                    width: w * 0.3,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowTicketScreen()));
                      },
                    ),
                  ),
                ),Positioned(
                  right: w * 0.68,
                  top: h * 0.086,
                  child: Container(
                    // color: Colors.pink.withOpacity(0.5),
                    height: h * 0.06,
                    width: w * 0.3,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ShowTicketScreen()));
                      },
                    ),
                  ),
                ),
              ],
            ),

            // TabBarView Section
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Image.asset('assets/images/tabs/tab1.jpeg'),
                  Image.asset('assets/images/tabs/tab2.jpeg'),
                  Image.asset('assets/images/tabs/tab3.jpeg'),
                  Image.asset('assets/images/tabs/tab4.jpeg'),
                  Image.asset('assets/images/tabs/tab5.jpeg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String imagePath, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 1),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ],
    );
  }

}
