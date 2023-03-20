import 'package:flutter/material.dart';
import 'package:seipday1/day23/company_info.dart';

class CompanyDetails extends StatefulWidget {
  CompanyInfo _companyInfo;
  CompanyDetails(this._companyInfo);
  //const CompanyDetails({Key? key}) : super(key: key);

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))


      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 5,
                width: 60,
                color: Colors.black,
              ),
              Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                          color: Colors.white,

                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                            child: Image.network("https://w7.pngwing.com/pngs/628/58/png-transparent-google-logo-google-search-google-now-google-text-trademark-service.png",fit: BoxFit.cover,)),
                      ),
                      SizedBox(width: 5,),
                      Text(widget._companyInfo.company),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Row(children: [
                      Icon(Icons.bookmark_outline_outlined),
                      SizedBox(width: 5,),
                      Icon(Icons.more_horiz_outlined),

                    ],),
                  )
                ],

              ),
              SizedBox(height: 5,),
              Text(widget._companyInfo.title,style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(widget._companyInfo.location)

                    ],
                  ),
                  Row(children: [
                    Icon(Icons.location_on_outlined),
                    Text(widget._companyInfo.fullTime),

                  ],)
                ],),
              SizedBox(height: 10,),

              Text("Requirments",style: TextStyle(fontSize: 25.0,color: Colors.white,fontWeight: FontWeight.bold),),

              ...widget._companyInfo.req.map((e) => Container(
                child:

                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        height: 10,
                        width:10,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50)),),

                      Container(
                          margin: EdgeInsets.symmetric(vertical:8.0),
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(e,style: TextStyle(fontSize: 14,color: Colors.black),),
                          ))
                    ]),
              ),


              ).toList(),
              Center(
                child: Container(width: 280,height: 40,decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,

                    borderRadius: BorderRadius.circular(50)),
                  child: Center(child: Text("Apply Now ",style: TextStyle(fontSize: 25.0),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
