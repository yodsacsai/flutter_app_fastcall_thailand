import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_thailand/views/makecall_ui.dart';
import 'package:flutter_app_fastcall_thailand/views/models.dart';

class HealthUI extends StatefulWidget {
  const HealthUI({Key? key}) : super(key: key);

  @override
  _HealthUIState createState() => _HealthUIState();
}

class _HealthUIState extends State<HealthUI> {
  List<CallList> healthList = [
    CallList(
      name: 'กรมสุขภาพจิต',
      mobile: '1323',
    ),
    CallList(
      name: 'สายด่วนยาเสพติด',
      mobile: '1165',
    ),
    CallList(
      name: 'องค์การอาหารและยา',
      mobile: '1556',
    ),
    CallList(
      name: 'ศูนย์รับบริจาคอวัยวะ สภากาชาด',
      mobile: '1666',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          'สุขภาพ',
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
              itemCount: healthList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MakeCallUI(
                            name: healthList[index].name,
                            moblie: healthList[index].mobile,
                          );
                        },
                      ),
                    );
                  },
                  title: Text(
                    healthList[index].name,
                  ),
                  subtitle: Text(
                    healthList[index].mobile,
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
