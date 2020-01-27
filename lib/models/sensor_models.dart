import 'dart:convert';

class Sensor {
  Sensor({
    this.ppm,
    this.ph,
    this.suhuAir,
    this.suhuUdara,
    this.kelembapan,
  });

  factory Sensor.fromJson(Map<String, dynamic> map) {
    return Sensor(
      ppm: double.parse(map['data_ppm'].toString()),
      ph: double.parse(map['data_ph'].toString()),
      suhuAir: double.parse(map['data_water_temp'].toString()),
      suhuUdara: double.parse(map['data_air_temp'].toString()),
      kelembapan: double.parse(map['data_humidity'].toString()),
    );
  }

  double ppm;
  double ph;
  double suhuAir;
  double suhuUdara;
  double kelembapan;

  Map<String, dynamic> toJson() {
    return {
      'data_ppm': ppm,
      'data_ph': ph,
      'data_water_temp': suhuAir,
      'data_air_temp': suhuAir,
      'data_humidity': kelembapan
    };
  }

  @override
  String toString() {
    return 'Sensor{data_ppm: $ppm, data_ph: $ph, data_water_temp: $suhuAir, data_air_temp: $suhuUdara, data_humidity: $kelembapan}';
  }
}

List<Sensor> sensorFromJson(String jsonData) {
  return json.decode(jsonData) as List<Sensor>;
}

String sensorToJson(Sensor data) {
  return json.encode(data);
}
