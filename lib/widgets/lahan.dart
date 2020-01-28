import 'package:flutter/material.dart';
import 'package:smarthyco/models/lahan_models.dart';
import 'package:smarthyco/ui/lahan_screen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ListLahan extends StatefulWidget {
  @override
  _ListLahanState createState() => _ListLahanState();
}

class _ListLahanState extends State<ListLahan> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Kebun Saya',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Laporan berkala kebun saya',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (_) => KolamScreen(),
                    )),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 190,
              //color: Colors.blue,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  final Lahan lahan = lahans[index];
                  return Container(
                    //margin: EdgeInsets.only(bottom: 10),
                    //color: Colors.red,
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Text(
                                    lahan.lahanjenisTanaman,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Text(
                                    lahan.masaTanam,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                LinearPercentIndicator(
                                  width: 200,
                                  lineHeight: 8,
                                  percent: lahan.persentase,
                                  progressColor: Colors.green,
                                  //backgroundColor: Colors.white,
                                  padding: const EdgeInsets.only(left: 5),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 1),
                              child: OutlineButton(
                                onPressed: () => print('Tekan Detail'),
                                borderSide: BorderSide(
                                    color: Theme.of(context).accentColor,
                                    width: 2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Detail',
                                  style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
