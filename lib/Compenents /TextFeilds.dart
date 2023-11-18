import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchButtuon extends StatelessWidget {
  const SearchButtuon({super.key, required this.keyword});
  final String keyword ; 



  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xEDFAFAFA),
        borderRadius: BorderRadius.circular(32)
      ),
      child: TextFormField(
        textAlign: TextAlign.end,
        textAlignVertical: TextAlignVertical.bottom,
        
        decoration: InputDecoration(
        
                  hintText: keyword,
                  hintStyle: TextStyle(
                  color: Color(0xFFA7AAA7),
                  fontSize: 20,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.w400,
                 
                  ),
                
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.solid,
                      color: Colors.white
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.solid,
                      color: Colors.white
                    ),
                  ),
                  suffixIcon: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/search_l.svg"), iconSize: 15,)
                  ),
      )

    );

   
  }
}