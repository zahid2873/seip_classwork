import 'package:flutter/material.dart';
import 'package:seipday1/day23/company_details.dart';
import 'package:seipday1/day23/company_info.dart';
import 'package:seipday1/day23/company_item.dart';

class CompanyList extends StatefulWidget {
  const CompanyList({Key? key}) : super(key: key);

  @override
  State<CompanyList> createState() => _CompanyListState();
}

class _CompanyListState extends State<CompanyList> {

  final cInfo = CompanyInfo.companyData();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 110,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=>GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                    isScrollControlled: true,

                    context: context, builder: (context)=>CompanyDetails(cInfo[index]));
              },
                child: CompanyItem(cInfo[index])),
            separatorBuilder: (context, index)=>SizedBox(width: 10,), itemCount: cInfo.length),
      ),
    );
  }
}
