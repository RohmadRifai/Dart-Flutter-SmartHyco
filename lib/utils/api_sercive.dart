import 'package:http/http.dart' as http;
import 'package:smarthyco/models/sensor_models.dart';

class ApiService {
  final String baseUrl = "https://smart-hyco.herokuapp.com";
  //List datadariJSON;
  //Client client = Client();

  Future<List<Sensor>> getSensor() async {
    //final response = await client.get("$baseUrl/sensor");
    final http.Response response = await http.get(
      Uri.encodeFull('$baseUrl/sensor'),
      headers: <String, String>{'Accept': 'application/json'},
    );
    return sensorFromJson(response.body);
    // if (response.statusCode == 200) {
    //   return sensorFromJson(response.body);
    // } else {
    //   return null;
    // }
  }

  // Future<bool> createSensor(Sensor data) async {
  //   final response = await client.post(
  //     "$baseUrl/sensor",
  //     headers: {"content-type": "application/json"},
  //     body: sensorToJson(data),
  //   );
  //   if (response.statusCode == 201) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  // Future<bool> updateSensor(Sensor data) async {
  //   final response = await client.put(
  //     "$baseUrl/sensor/${data.ppm}",
  //     headers: {"content-type": "application/json"},
  //     body: sensorToJson(data),
  //   );
  //   if (response.statusCode == 200) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  // Future<bool> deleteSensor(int id) async {
  //   final response = await client.delete(
  //     "$baseUrl/sensor/$id",
  //     headers: {"content-type": "application/json"},
  //   );
  //   if (response.statusCode == 200) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
