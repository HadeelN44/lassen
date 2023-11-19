// import 'dart:convert';
// import 'dart:developer';
// import 'package:http/http.dart' as http;
// import 'package:lessen/Model/Word.dart';

// // class api {
// //   Future<Word> fetchAlbum() async {
// //   final response = await http
// //       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

// //   if (response.statusCode == 200) {
// //     // If the server did return a 200 OK response,
// //     // then parse the JSON.
// //     return Word.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
// //   } else {
// //     // If the server did not return a 200 OK response,
// //     // then throw an exception.
// //     throw Exception('Failed to load album');
// //   }
// // }

// // }


//   List words;



// class ApiService {


//   @override
//   void initState() {
//     _fetchData();

//   }

  
//   Future _fetchData() async {

//     words = await getWords();
//   }
 
//   Future<List?> getWords() async {
//     try {
//       var url = Uri.parse("https://siwar.ksaa.gov.sa/api/alriyadh/random/words?count=2", "82c959cb-45cd-4195-bda3-9b842856bcc8" as int);
//       var response = await http.get(url);
//       if (response.statusCode == 200) {
//         final decodedJson =  Word.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
        
//         List list = (decodedJson as List).map((item) => new Word.fromJson(item)).toList(); 
//        print(list);
//        return list;
//         // final List<Word> list = [];

//         // for(var i = 0 ; i < list.length ; i++){
//         //   final entry = data['id'][i];
//         //   list.add(Word.fromJson(entry))
//         // }
//       }
      
//     } catch (e) {
//       log(e.toString());
//     }
//   }
// }