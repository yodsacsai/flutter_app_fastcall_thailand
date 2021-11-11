import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_thailand/views/emer_ui.dart';
import 'package:flutter_app_fastcall_thailand/views/etc_ui.dart';
import 'package:flutter_app_fastcall_thailand/views/health_ui.dart';
import 'package:flutter_app_fastcall_thailand/views/utilities_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'สายด่วน ประเทศไทย',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HealthUI(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.local_hospital_sharp,
                    size: 40,
                  ),
                  label: Text(
                    'สุขภาพ',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmerUI(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.policy_sharp,
                    size: 40,
                  ),
                  label: Text(
                    'เหตุด่วน',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UtilitiesUI(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.offline_bolt,
                    size: 40,
                  ),
                  label: Text(
                    'สาธารณูปโภค',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EtcUI(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.keyboard_control,
                    size: 40,
                  ),
                  label: Text(
                    'อื่นๆ',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
