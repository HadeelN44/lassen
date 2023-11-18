import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lessen/Compenents%20/TextFeilds.dart';

class Challenges extends StatelessWidget {
  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
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
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w400,
                  
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
               Text(
                'قــائـمة المتصدرين',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w400,
                 
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
               Text(
                'التـــحديــات',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color:  Color(0xFF007A82),
                    fontSize: 30,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w700,
              
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
                Text(
                  'عن لــسِن',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Almarai',
                      fontWeight: FontWeight.w400,
                
                  ),
                 ),
                ],
              ),

              Image.asset("assets/lassenLogo.png", height: 80, width: 130,), 

            ],
          ),
          ),
          Container(
            height: 470,
            width: double.infinity,
            child: Stack(
              children: [
              Container(
                height: 470,
               width: double.infinity,
               color: Color(0xFF034852).withOpacity(0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Left.png", fit: BoxFit.fitHeight,),
                     Image.asset("assets/Right.png", fit: BoxFit.fitHeight,),
                  ],
                )),
                Center(
                child:Text(
                '،مــــرحبًا بك\n ! لنتعلم ونمرح معًا',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w400,
                    height: 0,
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
                  width: 578,
                  height: 256,
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                          'رؤيتنا',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w400,
                              height: 1.04,
                              letterSpacing: -0.16,
                          ),
                     ),
                        ],
                      ),
                      SizedBox(height: 10,),
                     Text(
                      'Reward your customers and incentivize engagement with our innovative digital credit tokens. Our tokens can be customized to match your branding, and are a flexible and scalable way to drive customer loyalty and encourage repeat business.',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 1.11,
                      ),
                     )
                    ],
                  )
                ),
                SizedBox(width: 24,),
                              Container(
                  width: 578,
                  height: 256,
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                           'رسالتنا',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w400,
                              height: 1.04,
                              letterSpacing: -0.16,
                          ),
                     ),
                        ],
                      ),
                      SizedBox(height: 10,),
                     Text(
                      'Reward your customers and incentivize engagement with our innovative digital credit tokens. Our tokens can be customized to match your branding, and are a flexible and scalable way to drive customer loyalty and encourage repeat business.',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 1.11,
                      ),
                     )
                    ],
                  )
                ),
          
          
          
              ],
            ),
          )

    





          
//           Container(
//     width: 578,
//     height: 256,
//     padding: const EdgeInsets.all(60),
//     decoration: ShapeDecoration(
//         gradient: LinearGradient(
//             begin: Alignment(-0.00, -1.00),
//             end: Alignment(0, 1),
//             colors: [Colors.white.withOpacity(0.05000000074505806), Colors.white.withOpacity(0)],
//         ),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//         ),
//         shadows: [
//             BoxShadow(
//                 color: Color(0x422FA597),
//                 blurRadius: 40,
//                 offset: Offset(0, -2),
//                 spreadRadius: 0,
//             ),
//             BoxShadow(
//                 color: Color(0x192FA597),
//                 blurRadius: 10,
//                 offset: Offset(0, -2),
//                 spreadRadius: 0,
//             )
//         ],
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 width: double.infinity,
//                 height: 136,
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         SizedBox(
//                             width: double.infinity,
//                             child: Text(
//                                 'رؤيتنا',
//                                 textAlign: TextAlign.right,
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 32,
//                                     fontFamily: 'Almarai',
//                                     fontWeight: FontWeight.w400,
//                                     height: 1.04,
//                                     letterSpacing: -0.16,
//                                 ),
//                             ),
//                         ),
//                         const SizedBox(height: 10),
//                         SizedBox(
//                             width: double.infinity,
//                             child: Text(
//                                 'Reward your customers and incentivize engagement with our innovative digital credit tokens. Our tokens can be customized to match your branding, and are a flexible and scalable way to drive customer loyalty and encourage repeat business.',
//                                 textAlign: TextAlign.right,
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 14,
//                                     fontFamily: 'Montserrat',
//                                     fontWeight: FontWeight.w400,
//                                     height: 1.11,
//                                 ),
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//         ],
//     ),
// ),
          //    Container(
          //   height: 470,
          //   width: double.infinity,
          //   child: Stack(
          //     children: [
          //     Container(
          //       height: 470,
          //      width: double.infinity,
          //        color: Color(0xFFA7AAA7).withOpacity(0.7),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Image.asset("assets/Left.png", fit: BoxFit.fitHeight,),
          //            Image.asset("assets/Right.png", fit: BoxFit.fitHeight,),
          //         ],
          //       )),
          //       Column(
          //         children: [
          //           Center(
          //           child: Text(
          //            'الــــتـحديـــات',
          //             textAlign: TextAlign.right,
          //             style: TextStyle(
          //                 color: Color(0xFF006289),
          //                 fontSize: 60,
          //                 fontFamily: 'Almarai',
          //                 fontWeight: FontWeight.w400,
                     
          //             ),
          //     ),
          //     ),
          //      SearchButtuon(keyword:"... البحث عن تحديات"),
          //         ],
          //       ),
              
          //     ]),

          // ),
          // Container(
          //   height: 470,
          //   width: double.infinity,
          //   child: Image.asset("assets/lessenBG2.png", fit: BoxFit.fitWidth,),
          // )

        ],
      )
    );
  }
}