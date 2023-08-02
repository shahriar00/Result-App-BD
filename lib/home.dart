import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resultapp/detailslist.dart';
import 'package:resultapp/drawernavigation.dart';
import 'package:provider/provider.dart';
import 'package:resultapp/provider/resultprovider.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final List<String> image = <String>[
    'https://t3.ftcdn.net/jpg/05/26/64/02/360_F_526640237_yyA0ZJS0x2vVTCUb5gLtzg7tpTNO0LqK.jpg',
    'https://t4.ftcdn.net/jpg/05/18/90/81/360_F_518908174_acRmSJ5f4cs42CixBlIp6n0xMvR3ZwOG.jpg',
    'https://t4.ftcdn.net/jpg/05/28/95/95/360_F_528959512_XoKFG2Pzaf8BJYbHgCjlVgdyoxikmK6p.jpg',
    'https://t3.ftcdn.net/jpg/04/57/50/70/360_F_457507015_LHSyIYyZ36ogwYSAejyabOg1oCzMmHIN.jpg',
    'https://1.bp.blogspot.com/-7FVUdXTJVdM/YG3a181vlwI/AAAAAAAAMCo/52kMLh-uFSAE9xMJbSBWamnMEf9L4JPBACLcBGAsYHQ/s639/bangladesh-madrasah-education-board-.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> names = <String>['HSC', 'SSC', 'JSC', 'PSC', 'Alim'];
    final results = Provider.of<resultprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BD Quick ResultView",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      drawer: drawernavigation(),
      body: Container(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => details(
                                  id: results.resultdata[index].id,
                                )));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    elevation: 8,
                    shadowColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(image[index]),
                          ),
                          Text(
                            names[index],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
