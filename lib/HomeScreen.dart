import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lessen/Challenge.dart';
import 'package:lessen/Challenges.dart';
import 'package:lessen/Compenents%20/Cards.dart';
import 'package:lessen/Compenents%20/TopNavigator.dart';
import 'package:lessen/Compenents%20/TextFeilds.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         TopNavigator(Selected: 0),
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
          
                HomeScreenCard(
                  Title: 'رؤيتنا',
                  Desc: 'أن يكون طموح كل مهتم وراغب لتمكين معرفته اللُّغوية وزيادة حصيلته وتنمية إمكانياته باستخدام وسائل الترفيه الحديثة، ويسعى أن يكون مؤثرًا إيجابيًا مساهمًا في رفع الإمكانيات وزيادة المعرفة ومخرج وطني مشرّف',
                  ),
                SizedBox(width: 24,),
                HomeScreenCard(Title:  'رسالتنا', Desc:'مد يد العون للشباب للتنمية والتمكين اللغوي من خلال تزويدهم بالمعرفة الأساسية والأدوات والطرق الموصلة لذلك، وبناء أسس وركيزة ترفيهية مساندة لرفع حصيلتهم اللغوية بوسائل مستدامة وتنموية',),

              ],
            ),
          )
        ],
      )
    );
  }
}