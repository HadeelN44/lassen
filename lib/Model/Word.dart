import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class Word {
    int id;
    Lemma lemma;
    List<Lemma> stems;
    List<WordForm> wordForms;
    List<Sense> senses;
    String morphologicalPatterns;
    String pos;
    String verbOrigin;
    String nounOrigin;
    String originality;
    bool hasTanween;

    Word({
        required this.id,
        required this.lemma,
        required this.stems,
        required this.wordForms,
        required this.senses,
        required this.morphologicalPatterns,
        required this.pos,
        required this.verbOrigin,
        required this.nounOrigin,
        required this.originality,
        required this.hasTanween,
    });


  factory Word.fromJson(Map<String, dynamic> json){
  return Word(
    id: json['id'],
   lemma: json["lemma"],
    stems:  json["stems"] as List<Lemma>,
    wordForms:  json["wordForms"] as  List<WordForm>,
    senses:  json["senses"]as  List<Sense> ,
    morphologicalPatterns:  json["morphologicalPatterns"],
    pos: json["pos"],
    verbOrigin: json["verbOrigin"],
    nounOrigin:  json["nounOrigin"],
    originality:json["originality"],
    hasTanween: json["hasTanween"],
    );
  }

}

class Lemma {
    List<FormRepresentation> formRepresentations;
    String type;

    Lemma({
        required this.formRepresentations,
        required this.type,
    });

}

class FormRepresentation {
    String form;
    String phonetic;
    String dialect;
    String audio;
    String? language;

    FormRepresentation({
        required this.form,
        required this.phonetic,
        required this.dialect,
        required this.audio,
        this.language,
    });

}

class Sense {
    String id;
    Definition definition;
    List<FormRepresentation> translations;
    List<FormRepresentation> contexts;
    List<String> domainIds;
    List<String> domains;
    List<Example> examples;
    List<Relation> relations;
    String image;

    Sense({
        required this.id,
        required this.definition,
        required this.translations,
        required this.contexts,
        required this.domainIds,
        required this.domains,
        required this.examples,
        required this.relations,
        required this.image,
    });

}

class Definition {
    String statement;

    Definition({
        required this.statement,
    });

}

class Example {
    String form;
    String phonetic;
    String dialect;
    String audio;
    String exampleType;
    String source;

    Example({
        required this.form,
        required this.phonetic,
        required this.dialect,
        required this.audio,
        required this.exampleType,
        required this.source,
    });

}

class Relation {
    String type;
    String related;

    Relation({
        required this.type,
        required this.related,
    });

}

class WordForm {
    List<FormRepresentation> formRepresentations;
    String aspect;
    String def;
    String gender;
    bool isNasab;
    String numberWordForm;
    String person;
    bool isSmall;
    String voice;

    WordForm({
        required this.formRepresentations,
        required this.aspect,
        required this.def,
        required this.gender,
        required this.isNasab,
        required this.numberWordForm,
        required this.person,
        required this.isSmall,
        required this.voice,
    });

}






// class Word {
//     String id;
//     Lemma lemma;
//     List<Stem> stems;
//     List<WordForm> wordForms;
//     List<Sense> senses;
//     String morphologicalPatterns;
//     String pos;
//     dynamic verbOrigin;
//     dynamic nounOrigin;
//     String originality;
//     bool? hasTanween;
//     dynamic sn;
//     String nonDiacriticsLemma;
//     Extras extras;

//     Word({
//         required this.id,
//         required this.lemma,
//         required this.stems,
//         required this.wordForms,
//         required this.senses,
//         required this.morphologicalPatterns,
//         required this.pos,
//         required this.verbOrigin,
//         required this.nounOrigin,
//         required this.originality,
//         required this.hasTanween,
//         required this.sn,
//         required this.nonDiacriticsLemma,
//         required this.extras,
//     });



//     static Future<List<Word>?> getWords() async {
//     try {
//       List<Word> list = [];
//       var url = Uri.parse('https://siwar.ksaa.gov.sa/api/alriyadh/random/words?count=4');
//       var response = await http.get(url, headers: 
//       {"apikey": "82c959cb-45cd-4195-bda3-9b842856bcc8"});
//       if (response.statusCode == 200) {
//         final decodedJson =  Word.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
        
        
//       list = (decodedJson as List).map((item) => new Word.fromJson(item)).toList(); 
//        print(list);
//       return list;
//         // final List<Word> list = [];

//         // for(var i = 0 ; i < list.length ; i++){
//         //   final entry = data['id'][i];
//         //   list.add(Word.fromJson(entry))
//         // }
//       }
//      return list;
//     } catch (e) {
//       log(e.toString());
//     }
//     return null;
//   }


//   factory Word.fromJson(Map<String, dynamic> json){
//   return Word(
//    id: json["id"],
//    lemma: json["lemma"],
//     stems:  json["stems"] as List<Stem>,
//     wordForms:  json["wordForms"] as  List<WordForm>,
//     senses:  json["senses"]as  List<Sense> ,
//     morphologicalPatterns:  json["morphologicalPatterns"],
//     pos: json["pos"],
//     verbOrigin: json["verbOrigin"],
//     nounOrigin:  json["nounOrigin"],
//     originality:json["originality"],
//     hasTanween: json["hasTanween"],
//     sn: json["sn"],
//     nonDiacriticsLemma: json["nonDiacriticsLemma"],
//     extras: json["extras"],
//     );
//   }

//  // static Future<Word> fromJson(Map<String, dynamic> jsonDecode) {}

// }

// class Extras {
//     int letterId;
//     String riyadhId;
//     List<String> senseIds;
//     List<SenseDetail> senseDetails;

//     Extras({
//         required this.letterId,
//         required this.riyadhId,
//         required this.senseIds,
//         required this.senseDetails,
//     });

// }

// class SenseDetail {
//     String senseId;
//     dynamic transitivity;
//     String semanticField;
//     String? semanticDefinition;
//     String usageLevel;
//     String theme;
//     dynamic mimmiInfinitive;
//     dynamic subjectiveName;
//     dynamic comparativeAdjective;
//     dynamic murraName;
//     dynamic shapeName;
//     List<String> infinitive;
//     List<String> objectiveName;
//     List<String> resemblingAdjective;
//     List<String> intenseAdjective;
//     List<String> brokenPlural;

//     SenseDetail({
//         required this.senseId,
//         required this.transitivity,
//         required this.semanticField,
//         required this.semanticDefinition,
//         required this.usageLevel,
//         required this.theme,
//         required this.mimmiInfinitive,
//         required this.subjectiveName,
//         required this.comparativeAdjective,
//         required this.murraName,
//         required this.shapeName,
//         required this.infinitive,
//         required this.objectiveName,
//         required this.resemblingAdjective,
//         required this.intenseAdjective,
//         required this.brokenPlural,
//     });

// }

// class Lemma {
//     List<FormRepresentation> formRepresentations;
//     String type;
//     TypeLookup typeLookup;

//     Lemma({
//         required this.formRepresentations,
//         required this.type,
//         required this.typeLookup,
//     });

// }

// class FormRepresentation {
//     String? form;

//     FormRepresentation({
//         required this.form,
//     });

// }

// class TypeLookup {
//     String id;
//     String label;
//     String code;
//     String category;
//     int v;
//     DateTime updatedAt;
//     String updatedByUserId;
//     int order;
//     CategoryLabel categoryLabel;
//     String typeLookupId;

//     TypeLookup({
//         required this.id,
//         required this.label,
//         required this.code,
//         required this.category,
//         required this.v,
//         required this.updatedAt,
//         required this.updatedByUserId,
//         required this.order,
//         required this.categoryLabel,
//         required this.typeLookupId,
//     });

// }

// class CategoryLabel {
//     String code;
//     String label;

//     CategoryLabel({
//         required this.code,
//         required this.label,
//     });

// }

// class Sense {
//     String id;
//     List<dynamic> contexts;
//     Definition definition;
//     List<Translation> translations;
//     List<Example> examples;
//     List<Relation> relations;
//     List<dynamic> domains;

//     Sense({
//         required this.id,
//         required this.contexts,
//         required this.definition,
//         required this.translations,
//         required this.examples,
//         required this.relations,
//         required this.domains,
//     });

// }

// class Definition {
//     List<FormRepresentation> textRepresentations;
//     Statement statement;

//     Definition({
//         required this.textRepresentations,
//         required this.statement,
//     });

// }

// class Statement {
//     FormRepresentation textRepresentations;

//     Statement({
//         required this.textRepresentations,
//     });

// }

// class Example {
//     String form;
//     String source;
//     dynamic exampleType;

//     Example({
//         required this.form,
//         required this.source,
//         required this.exampleType,
//     });

// }

// class Relation {
//     String id;
//     String related;
//     String type;

//     Relation({
//         required this.id,
//         required this.related,
//         required this.type,
//     });

// }

// class Translation {
//     String form;
//     dynamic language;

//     Translation({
//         required this.form,
//         required this.language,
//     });

// }

// class Stem {
//     List<FormRepresentation> formRepresentations;
//     String type;

//     Stem({
//         required this.formRepresentations,
//         required this.type,
//     });

// }

// class WordForm {
//     List<FormRepresentation> formRepresentations;
//     dynamic gender;
//     dynamic numberWordForm;

//     WordForm({
//         required this.formRepresentations,
//         required this.gender,
//         required this.numberWordForm,
//     });

// }
