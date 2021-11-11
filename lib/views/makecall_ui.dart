import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_app_fastcall_thailand/views/models.dart';

class MakeCallUI extends StatefulWidget {
  String name = '';
  String moblie = '';

   MakeCallUI({
    Key? key,
    required this.name,
    required this.moblie,
  }) : super(key: key);

  @override
  _MakeCallUIState createState() => _MakeCallUIState();
}

class _MakeCallUIState extends State<MakeCallUI> {
  
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              'ยืนยันที่จะโทร?',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,                  
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          _makePhoneCall('tel:' + widget.moblie);
                        });
                      },
                      icon: Icon(
                        Icons.call_sharp,
                      ),
                      iconSize: 50,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,                  
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close_sharp,
                      ),
                      iconSize: 50,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
