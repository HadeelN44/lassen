import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lessen/Compenents%20/CustomButtons.dart';
import 'package:lessen/Compenents%20/Custom_popUp.dart';
import 'package:lessen/Compenents%20/TopNavigator.dart';
import 'package:lessen/Compenents%20/TextFeilds.dart';
import 'package:lessen/Model/Word.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class Challenge extends StatefulWidget {
  const Challenge({super.key});

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
    // page variables
  bool isLoading = false;
  List<Word> words= [

  ];
  Map<String, dynamic> test = {
   "اِشْمَخَرَّ" : "علا، وارتفع",
    "أَلْهَبَ" : "أَلْهَبَ الأمرُ مشاعره: أثاره، وحمَّسه",
    "كَسَحَ" : "كَسَحَ فلانٌ العدوَّ: اجتاحه وهزمه",
    "اِنْهِمَار" : "تساقط الماء ونحوه بقوة وبغزارة"

  };
    String? keyTest ;
   String word = "اِشْمَخَرَّ";
   String wordMeaning = "علا، وارتفع";

  // override initState to run the _fetchData() function on state change
  @override
  void initState() {
    print("before");
    _fetchData();
     print(words);
    super.initState();

     keyTest = test.keys.elementAt(0);
  }

  // async function to call the API and show/hide loading screens
  Future _fetchData() async {
    // show Loading Screen
    setState(() => isLoading = true);
    // get Posts
    words = await getWords() as List<Word>;
    // hide Loading Screen
    setState(() => isLoading = false);
    
    // create Post
    // print(await createPost());
  }

  // Future<List<Word>?> getWords() async {
  //   try {
  //     List<Word> list = [];
  //     var url = Uri.parse('https://siwar.ksaa.gov.sa/api/alriyadh/random/words?count=4');
  //     var response = await http.get(url, headers: 
  //     {"apikey": "82c959cb-45cd-4195-bda3-9b842856bcc8"});
  //     if (response.statusCode == 200) {
  //       final decodedJson =  Word.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
        
        
  //     list = (decodedJson as List).map((item) => new Word.fromJson(item)).toList(); 
  //      print(list);
  //     return list;
  //       // final List<Word> list = [];

  //       // for(var i = 0 ; i < list.length ; i++){
  //       //   final entry = data['id'][i];
  //       //   list.add(Word.fromJson(entry))
  //       // }
  //     }
  //    return list;
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }
   Future<List<Word>?> getWords() async {
    try {
    
      var url = Uri.parse('https://siwar.ksaa.gov.sa/api/alriyadh/search?query=%D8%B3%D8%A7%D8%AD');
      var response = await http.get(url, headers: {"apikey": "82c959cb-45cd-4195-bda3-9b842856bcc8"});
      if (response.statusCode == 200) {
        final decodedJson =  Word.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
        print(decodedJson);
        List<Word> list = (decodedJson as List).map((item) => new Word.fromJson(item)).toList(); 
       print(list);
      return list;
        // final List<Word> list = [];

        // for(var i = 0 ; i < list.length ; i++){
        //   final entry = data['id'][i];
        //   list.add(Word.fromJson(entry))
        // }
      }
     
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

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
                    Image.asset("assets/Left-lightGreen.png", fit: BoxFit.fitHeight, color: Color(0xFFFFF),),
                     Image.asset("assets/Right-lightGreen.png.png", fit: BoxFit.fitHeight,),
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
                height: 900,
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
                       wordMeaning,
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
                        height: 60,
                        width: 800,
                        child:   ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: test.length,
                          itemBuilder: (BuildContext, index){
                            String key = test.keys.elementAt(index);
                           return CustomizedButton(
                            title: "$key", 
                            width: 150, 
                            ButtonColor: Colors.white, 
                            height: 50, 
                            style: TextStyle(
                            color: Color(0xFF034852),
                            fontSize: 30,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            ),
                             outlined: true,
                             onPressed: () async {
                          
                                await showDialog<void>(
                                context: context,
                                builder: ( context) {
                                  return CustomPopUp(
                                    title:  key == word ? "،اختيار صحيح \n و هي تعنى " + test[key]: "اختيار خاطئ، حاول مره اخرى", 
                                    isCorrect: key == word ? true : false,);
                                });
                                // showDialog(context){
                                //   return CustomPopUp();
                                // };
                                print("suceess");
                              
                             },
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
          ),
          SizedBox(height: 100,)

        ],
      )
    );
  }
}