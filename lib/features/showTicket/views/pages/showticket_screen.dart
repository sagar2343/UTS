import 'package:flutter/material.dart';
import 'package:utss/config/theme/app_theme.dart';
import 'package:utss/features/showTicket/views/pages/ticket_detail_screen.dart';

class ShowTicketScreen extends StatefulWidget {
  const ShowTicketScreen({super.key});

  @override
  State<ShowTicketScreen> createState() => _ShowTicketScreenState();
}

class _ShowTicketScreenState extends State<ShowTicketScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Appbar
            Stack(
              children: [
                Image.asset('assets/images/showTicketAppbar.jpeg'),
                Positioned(
                  left: w * 0.01,
                  top: h * 0.01,
                  child: SizedBox(
                    height: h * 0.06,
                    width: w * 0.15,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
            ),

            //Banner show ticket
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0,horizontal: 3.0),
              child: Image.asset('assets/images/showTicketBanner.jpeg'),
            ),

            // Ticket Container
            Stack(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const TicketDetailScreen()));
                  },
                  child: Image.asset('assets/images/showTicketContainer.jpeg'),
                ),
                Positioned(
                  left: w * 0.16,
                  top: h * 0.088,
                  child: Text('MALAD',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500)),
                ),
                Positioned(
                  left: w * 0.6,
                  top: h * 0.088,
                  child: Text('THANE',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500)),
                ),
                Positioned(
                  left: w * 0.275,
                  top: h * 0.2,
                  child: Text('21/12/2024 10:36',style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w500,color: myPrimaryColor)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
