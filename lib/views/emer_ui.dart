import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_thailand/views/makecall_ui.dart';
import 'package:flutter_app_fastcall_thailand/views/models.dart';

class EmerUI extends StatefulWidget {
  const EmerUI({ Key? key }) : super(key: key);

  @override
  _EmerUIState createState() => _EmerUIState();
}

class _EmerUIState extends State<EmerUI> {

  List<CallList> emerList = [
    CallList(
      name: 'แจ้งเหตุด่วน-เหตุร้ายทุกชนิด',
      mobile: '191',
    ),
    CallList(
      name: 'แจ้งอัคคีภัย สัตว์เข้าบ้าน',
      mobile: '199',
    ),
    CallList(
      name: 'กรมป้องกันและบรรเทาสาธารณภัย',
      mobile: '1784',
    ),
    CallList(
      name: 'สายด่วนตำรวจท่องเที่ยว',
      mobile: '1155',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'เหตุด่วน - ฉุกเฉิน',
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
              itemCount: emerList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MakeCallUI(
                            name: emerList[index].name,
                            moblie: emerList[index].mobile,
                          );
                        },
                      ),
                    );
                  },
                  title: Text(
                    emerList[index].name,
                  ),
                  subtitle: Text(
                    emerList[index].mobile,
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