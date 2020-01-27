import 'package:flutter/material.dart';
import 'package:smarthyco/models/box_models.dart';
import 'package:smarthyco/models/sensor_models.dart';
import 'package:smarthyco/ui/box_screen.dart';
import 'package:smarthyco/utils/api_sercive.dart';

class SemuaBox extends StatefulWidget {
  @override
  _SemuaBoxState createState() => _SemuaBoxState();
}

class _SemuaBoxState extends State<SemuaBox> {
  ApiService apiService;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder<List<Sensor>>(
        future: apiService.getSensor(),
        builder: (BuildContext context, AsyncSnapshot<List<Sensor>> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                  'Something wrong with message: ${snapshot.error.toString()}'),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            final List<Sensor> sensor = snapshot.data;
            return _buildListView(sensor);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget _buildListView(List<Sensor> sensor) {
    return Container(
      height: double.infinity,
      //color: Colors.blue,
      child: ListView.builder(
        itemCount: sensor.length,
        itemBuilder: (BuildContext context, int index) {
          final Boxs box = boxs[index];
          final Sensor sensors = sensor[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<double>(
                builder: (_) => BoxScreen(
                  boxs: box,
                ),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 160,
              //color: Colors.red,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 200,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(70, 10, 10, 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              box.namaBox,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'PPM          ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '${sensors.ppm}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      //fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'pH                   ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '${sensors.ph}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Suhu Air      ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '$sensors.suhuAir}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: const Offset(0, 2),
                          blurRadius: 6,
                        )
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Image(
                            height: 150,
                            width: 200,
                            image: AssetImage(
                                'assets/images/tanaman-hidroponik.jpg'),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
