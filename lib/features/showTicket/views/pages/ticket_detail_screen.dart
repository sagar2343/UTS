import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:newuts/features/showTicket/controller/ticket_detail_controller.dart';

import '../../../../config/theme/app_theme.dart';

class TicketDetailScreen extends StatefulWidget {
  const TicketDetailScreen({super.key});

  @override
  State<TicketDetailScreen> createState() => _TicketDetailScreenState();
}

class _TicketDetailScreenState extends State<TicketDetailScreen> {
  late final TicketDetailController _controller;

  @override
  void initState() {
    _controller = TicketDetailController(context: context, reloadData: reloadData);
    super.initState();
  }

  void reloadData(){
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Header with text and logo
           Stack(
             children: [
               Positioned(
                 top: h * 0.025,
                 left: 0,
                 right: 0,
                 child: SizedBox(
                   height: h * 0.05,
                   child: Marquee(
                     text: 'IR Unreserved Ticketing',
                     style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                       color: Colors.blue[900], // Darker blue color
                     ),
                     scrollAxis: Axis.horizontal,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     blankSpace: w, // Space between repetitions
                     velocity: 150.0, // Increased speed
                     accelerationDuration: const Duration(milliseconds: 300),
                     accelerationCurve: Curves.linear,
                     decelerationDuration: const Duration(milliseconds: 300),
                     decelerationCurve: Curves.easeOut,
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Card(
                       elevation: 3,
                         shape: const CircleBorder(),
                         child: ClipOval(child: Image.asset(height: h * 0.04,'assets/images/ticket/crisLogo.jpeg',fit: BoxFit.fitHeight))),
                     Card(
                       elevation: 3,
                         shape: const CircleBorder(),
                         child: ClipOval(child: Image.asset(height: h * 0.04,'assets/images/ticket/redLogo.png',fit: BoxFit.contain))),
                   ],
                 ),
               ),
             ],
           ),
            //Ticket section
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 14),
                  width: double.infinity,
                  // height: h * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color with transparency
                        offset: const Offset(0, 2), // Horizontal and vertical offset
                        blurRadius: 6, // How much the shadow is blurred
                        spreadRadius: 1, // How much the shadow spreads
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('HAPPY JOURNEY', style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold)),
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 38),
                                  margin: const EdgeInsets.symmetric(vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.purple[700],
                                  ),
                                  child: Text('MONTHLY', style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.white)),
                                ),
                              ],
                            ),
                            const Divider(color: Colors.black,height: 8),
                            Stack(
                              children: [
                                Center(child: Text('ADULT SEASON',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600))),
                                Align(alignment: Alignment.centerRight,child: Text('18/02/2025',style: Theme.of(context).textTheme.titleSmall!.copyWith(letterSpacing: 0.8,fontWeight: FontWeight.w600)))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('₹215.00/-',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                Text('9987603256',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('UTS No: X036DY0093',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                Text('MONTHLY',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800])),
                              ],
                            ),
                            Row(
                              children: [
                                Text('ID Card Number:',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                Text('850249881061',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800])),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Pass: ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                Text('Mr. SAGAR',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800])),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('Age: ',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                    Text('20 years',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800])),
                                  ],
                                ),
                                Text('Between',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800])),
                              ],
                            ),
                            const Divider(color: Colors.black,height: 8),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: w * 0.035,
                                  backgroundColor: Colors.purple[900],
                                  child: Text('S',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.white)),
                                ),
                                const SizedBox(width: 3),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('मालाड',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                    Text('MALAD',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                    Text('मालाड',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: w * 0.035,
                                  backgroundColor: Colors.purple[900],
                                  child: Text('D',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.white)),
                                ),
                                const SizedBox(width: 3),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('ठाणे',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                    Text('THANE',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                    Text('ठाणे',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text('CLASS: ',style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('द्वितिया',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800])),
                                        Text('SECOND',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800])),
                                        Text('द्वि श्रे',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800]))
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('TRAIN TYPE: ',style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('साधारण',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800])),
                                        Text('ORDINARY',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800])),
                                        Text('साधारण',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold,color: Colors.red[800]))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Divider(color: Colors.black,height: 8),
                            Row(
                              children: [
                                Container(
                                  width: w * 0.08,
                                  height: w * 0.06,
                                  decoration: BoxDecoration(
                                    color: Colors.purple[900],
                                    borderRadius: BorderRadius.circular(70), // Makes the container oval
                                  ),
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Text('via', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white)),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Text('1 RT>>MM-DDR-DR-CLA',style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                              ],
                            ),
                            const Divider(color: Colors.black,height: 8),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text('SAC:',style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                                    Text('996411',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                SizedBox(width: w * 0.04),
                                Row(
                                  children: [
                                    Text('IR:',style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                                    Text('27AAAGM0289C2ZI',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                            const Divider(color: Colors.black,height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Validity: ',style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                                Text('FROM ',style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                                Text('18/02/2025',style: Theme.of(context).textTheme.bodyMedium!.copyWith(letterSpacing: 0.9,fontWeight: FontWeight.bold,color: Colors.red[800])),
                                Text(' To ',style: Theme.of(context).textTheme.bodyMedium!.copyWith()),
                                Text('17/03/2025',style: Theme.of(context).textTheme.bodyMedium!.copyWith(letterSpacing: 0.9,fontWeight: FontWeight.bold,color: Colors.red[800])),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('R19174',style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                                Text('Distance: 44 km',style: Theme.of(context).textTheme.titleSmall!.copyWith()),
                              ],
                            ),
                            Text('Booking Time: 18/02/2025 10:36',style: Theme.of(context).textTheme.bodyMedium!.copyWith(letterSpacing: 0.9,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text('It is recommended not to perform factory reset or\nchange your handset whenever you are having valid',
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.blue[700]),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('ticket in the mobile. ',
                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.blue[700])),
                                Text('Click for Changing Handset with',
                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: myPrimaryColor,decorationColor: myPrimaryColor,decoration: TextDecoration.underline)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: w * 0.05),
                                Text('Valid Ticket',
                                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: myPrimaryColor,decorationColor: myPrimaryColor,decoration: TextDecoration.underline)),
                              ],
                            ),
                            GestureDetector(
                              onTap: (){
                                _controller.onQrTapped();
                              },
                                child: Image.asset('assets/images/ticket/belowticket.jpeg')),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Center for Railway Information Systems (CRIS)',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey[700],)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
