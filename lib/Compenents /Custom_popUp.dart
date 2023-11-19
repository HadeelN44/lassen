import 'package:flutter/material.dart';
class CustomPopUp extends StatefulWidget {
  const CustomPopUp({super.key, required this.title, required this.isCorrect});
  final String title;
  final bool isCorrect;
  

  @override
  State<CustomPopUp> createState() => _CustomPopUpState();
}

class _CustomPopUpState extends State<CustomPopUp> {
  
  @override
  Widget build(BuildContext context) {
     return Theme(
       data: ThemeData(dialogBackgroundColor: Colors.white),
       child: AlertDialog(
        
         shape: RoundedRectangleBorder(
          
         borderRadius: BorderRadius.all(Radius.circular(12.0))),
     
         content: Builder(
        builder: (context) {                          
          var height = MediaQuery.of(context).size.height * 0.2;
          var width = MediaQuery.of(context).size.width * 0.3;
          return Container(
            height: 200 ,
            width: width ,
            
            child: Column(
              children: [
                 SizedBox(height: 4,),
            widget.isCorrect ? Icon(Icons.check, color: Color(0xFF034852),): Icon(Icons.close, color: Colors.red),
            SizedBox(height: 28,),
            Text(
            widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF007A82),
                fontSize: 20,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.w400,
          
            ),
           ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                // children: [
                // PrimaryButton(title: 'دخول', onPressed: () {
                //   // Navigation to Sign In Screen ===>>>
                //   Navigator.push(context,  MaterialPageRoute(builder: (BuildContext context) => SigninScreen()));
                //   }, width: 120,),
                // SizedBox(width: 7,),
                  
                // SecondaryButton(title: 'الغاء', onPressed: () {
                //   Navigator.pop(context);
                // }, width: 120,),
                // ],
              ),
            )
              ],
            ),
          );
        }),
       
       ),
     );
  }
}
