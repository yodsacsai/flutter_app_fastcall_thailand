import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_thailand/views/makecall_ui.dart';
import 'package:flutter_app_fastcall_thailand/views/models.dart';

class UtilitiesUI extends StatefulWidget {
  const UtilitiesUI({ Key? key }) : super(key: key);

  @override
  _UtilitiesUIState createState() => _UtilitiesUIState();
}

class _UtilitiesUIState extends State<UtilitiesUI> {

  List<CallList> utilList = [
    CallList(
      name: 'การไฟฟ้าส่วนภูมิภาค',
      mobile: '1129',
    ),
    CallList(
      name: 'การไฟฟ้านครหลวง',
      mobile: '1130',
    ),
    CallList(
      name: 'การประปานครหลวง',
      mobile: '1125',
    ),
    CallList(
      name: '	การประปาส่วนภูมิภาค',
      mobile: '1662',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text(
          'สาธารณูปโภค',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.black,
                );
              },
              itemCount: utilList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MakeCallUI(
                            name: utilList[index].name,
                            moblie: utilList[index].mobile,
                          );
                        },
                      ),
                    );
                  },
                  title: Text(
                    utilList[index].name,
                  ),
                  subtitle: Text(
                    utilList[index].mobile,
                  ),
                  trailing: Icon(
                    Icons.call_sharp,
                    color: Colors.green,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}