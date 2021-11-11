import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_thailand/views/makecall_ui.dart';
import 'package:flutter_app_fastcall_thailand/views/models.dart';

class EtcUI extends StatefulWidget {
  const EtcUI({ Key? key }) : super(key: key);

  @override
  _EtcUIState createState() => _EtcUIState();
}

class _EtcUIState extends State<EtcUI> {

  List<CallList> etcList = [
    CallList(
      name: 'สถานีวิทยุ จส.100',
      mobile: '1137',
    ),
    CallList(
      name: 'สถานีวิทยุร่วมด้วยช่วยกัน',
      mobile: '1677',
    ),
    CallList(
      name: 'ศูนย์พิทักษ์เด็ก เยาวชนและสตรี',
      mobile: '1192',
    ),
    CallList(
      name: 'TAXI-RADIO',
      mobile: '1681',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'อื่นๆ',
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
              itemCount: etcList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MakeCallUI(
                            name: etcList[index].name,
                            moblie: etcList[index].mobile,
                          );
                        },
                      ),
                    );
                  },
                  title: Text(
                    etcList[index].name,
                  ),
                  subtitle: Text(
                    etcList[index].mobile,
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