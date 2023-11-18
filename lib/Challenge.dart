import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lessen/Compenents%20/CustomButtons.dart';
import 'package:lessen/Compenents%20/TopNavigator.dart';
import 'package:lessen/Compenents%20/TextFeilds.dart';

class Challenge extends StatelessWidget {
  const Challenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         TopNavigator(Selected: 1,),
          Container(
            height: 470,
            width: double.infinity,
            child: Stack(
              children: [
              Container(
                height: 470,
               width: double.infinity,
               color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Left.png", fit: BoxFit.fitHeight, color: Color(0xFFFFF),),
                     Image.asset("assets/Right.png", fit: BoxFit.fitHeight,),
                  ],
                )),
                Center(
                child:Text(
                'العلاقات الدلالية',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Color(0xFF034852),
                fontSize: 90,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w400,
              
                ),
                )
              ),
              
              ]),

          ),

          Container(
            height: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          
                Container(
                width: 1119,
                height: 495,
                     padding: const EdgeInsets.all(60),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: [
                              BoxShadow(
                                  color: Color(0x422FA597),
                                  blurRadius: 40,
                                  offset: Offset(0, -2),
                                  spreadRadius: 0,
                              ),
                              BoxShadow(
                                  color: Color(0x192FA597),
                                  blurRadius: 10,
                                  offset: Offset(0, -2),
                                  spreadRadius: 0,
                              )
                          ],
                      ),
                  child: Column(
                    children: [
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           
                           Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      
                       // SvgPicture.asset("assets/Trophy.svg"),
                       Image.asset("assets/Trophy.png", width: 49, height: 46,),
                        Text(
                        '٣٠',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF034852),
                            fontSize: 30,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w400,
                           
                        ),
                       ),
                        ],
                      ),
                       Text(
                        'سَــاحَ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF034852),
                            fontSize: 40,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w400,
                        
                        ),
                        ),
                        SizedBox(width: 5,),
                        ],
                      ),
                      SizedBox(height: 70,),
                      Container(
                        height: 50,
                        width: 800,
                        child: ListView.separated(
                          
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (BuildContext, index){
                           return CustomizedButton(
                            title: index.toString(), 
                            width: 150, 
                            ButtonColor: Colors.white, 
                            height: 50, 
                            style: TextStyle(
                            color: Color(0xFF034852),
                            fontSize: 40,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            ),
                             outlined: true,
                           );
                   
                          },
                           separatorBuilder: (context, index) => SizedBox(
                            width: 66,
                          ),
                          ),
                      )
            
                    ],
                  )
                ),
          
          
          
              ],
            ),
          )

        ],
      )
    );
  }
}