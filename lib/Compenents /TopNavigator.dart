import 'package:flutter/material.dart';
import 'package:lessen/Challenge.dart';
import 'package:lessen/HomeScreen.dart';

class TopNavigator extends StatelessWidget {
  const TopNavigator({super.key, required this.Selected});
  final int Selected;

  @override
  Widget build(BuildContext context) {

    return  Container(
          height: 90,
          decoration: ShapeDecoration(
          color: Color(0xFF034852),
          shape: RoundedRectangleBorder(
          //side: BorderSide(width: 1, color: Color(0xFFC4C4C4)),
         // borderRadius: BorderRadius.only(topRight: Radius.circular(35), topLeft: Radius.circular(35), ),
          ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 
                Text(
                'تواصـــل معـنا',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Selected == 3 ? Color(0xFF007A82) :  Colors.white,
                    fontSize: 30,
                    fontFamily: 'Almarai',
                   fontWeight: Selected == 3 ? FontWeight.w700 : FontWeight.w400,
                  
                ),
               ), 
                SizedBox(width: 75,),
                 SizedBox(
                  height: 40,
                   child: VerticalDivider(
                   color: Color(0xFFE1E1E5),
                   thickness: 2,
                 ),
                 ),
                SizedBox(width: 75,),
               GestureDetector(
                 onTap: Selected != 2 ?  () {
                    
                  }: null,
                 child: Text(
                  'قــائـمة المتصدرين',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color:  Selected == 2 ? Color(0xFF007A82) :  Colors.white,
                      fontSize: 30,
                      fontFamily: 'Almarai',
                    fontWeight:Selected == 2 ? FontWeight.w700 : FontWeight.w400,
                   
                  ),
                 ),
               ), 
               SizedBox(width: 75,),
               SizedBox(
                  height: 40,
                   child: VerticalDivider(
                   color: Color(0xFFE1E1E5),
                   thickness: 2,
                 ),
                 ),
                  SizedBox(width: 75,),
               GestureDetector(
                  onTap: Selected != 1 ?  () {
                    //naivgate to the challenge screen
                    Navigator.push(context, MaterialPageRoute(builder:(BuildContext)=> Challenge()));
                  }: null,
                 child: Text(
                  'التـــحديــات',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color:  Selected == 1 ? Color(0xFF007A82) :  Colors.white,
                      fontSize: 30,
                      fontFamily: 'Almarai',
                      fontWeight: Selected == 1 ? FontWeight.w700 : FontWeight.w400,
                             
                  ),
                 ),
               ),
               SizedBox(width: 75,),
                 SizedBox(
                  height: 40,
                   child: VerticalDivider(
                   color: Color(0xFFE1E1E5),
                   thickness: 2,
                 ),
                 ),
                 SizedBox(width: 75,),
                GestureDetector(
                  onTap: Selected != 0 ?  () {
                   //naivgate to the home screen
                    Navigator.push(context, MaterialPageRoute(builder:(BuildContext)=> HomeScreen())); 
                  }: null,
                  child: Text(
                    'عن لــسِن',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color:  Selected == 0 ? Color(0xFF007A82) :  Colors.white,
                        fontSize: 30,
                        fontFamily: 'Almarai',
                        fontWeight: Selected == 0  ? FontWeight.w700 : FontWeight.w400,
                  
                    ),
                   ),
                ),
                ],
              ),

              Image.asset("assets/lassenLogo.png", height: 80, width: 130,), 

            ],
          ),
          );
  }
}