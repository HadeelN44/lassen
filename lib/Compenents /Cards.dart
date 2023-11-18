import 'package:flutter/material.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({super.key, required this.Title, required this.Desc});
  final String Title; 
  final String Desc; 

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                          Title,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w400,
                              height: 1.1,
                              letterSpacing: -0.16,
                          ),
                     ),
                        ],
                      ),
                      SizedBox(height: 10,),
                     Text(
                        Desc,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w400,
                            height: 2,
                            
                        ),
                    )
                  ],
                  )
                );
  }
}