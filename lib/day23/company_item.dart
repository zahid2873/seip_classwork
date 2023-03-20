import 'package:flutter/material.dart';
import 'package:seipday1/day23/company_info.dart';
import 'package:seipday1/day23/company_list.dart';

class CompanyItem extends StatefulWidget {
  CompanyInfo _companyInfo;
  CompanyItem(this._companyInfo);
   //CompanyItem({Key? key,}) : super(key: key);

  @override
  State<CompanyItem> createState() => _CompanyItemState();
}

class _CompanyItemState extends State<CompanyItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundImage: NetworkImage("https://w7.pngwing.com/pngs/628/58/png-transparent-google-logo-google-search-google-now-google-text-trademark-service.png")
                    ),
                    SizedBox(width: 5),
                    Text("${widget._companyInfo.company}"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Icon(Icons.bookmark_outline),
                  ],
                ),
              ),

            ],
          ),
          Text('${widget._companyInfo.title}'),
          SizedBox(height: 5,),
          Row(
            children: [
              Icon(Icons.location_on_outlined),
              Text("${widget._companyInfo.location}"),
            ],
          )

        ],
      ),
    );
  }
}
