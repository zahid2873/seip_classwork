import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CompanyInfo {
  String logoUrl;
  String company;
  String title;
  String location;
  String fullTime;
  List<String> req;

  CompanyInfo(this.logoUrl, this.company, this.title, this.location,
      this.fullTime, this.req);

  static List<CompanyInfo> companyData(){
    return [

      CompanyInfo('images/google_logo.png', "Google LLC ", "Product Design",
          "417 Marian Plaza,Texax,United State", "Fulltime",

          [
            'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
          ]


      ),
      CompanyInfo('images/google_logo.png', "Google LLC ", "Product Design",
          "417 Marian Plaza,Texax,United State", "Fulltime",

          [
            'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
                'Creative with an Eye for shape and color',
            'Understand Different Material and Production\nMethod'
          ]


      ),

    ];
  }
}
