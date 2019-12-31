import 'dart:convert';

class Sensor {
  int ppm;
  int ph;
  int suhuAir;
  int suhuUdara;
  int kelembapan;

  Sensor({
    this.ppm,
    this.ph,
    this.suhuAir,
    this.suhuUdara,
    this.kelembapan,
  });

  factory Sensor.fromJson(Map<String, dynamic> map) {
    return Sensor(
        ppm: map["data_ppm"],
        ph: map["data_ph"],
        suhuAir: map["data_water_temp"],
        suhuUdara: map["data_air_temp"],
        kelembapan: map["data_humidity"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "data_ppm": ppm,
      "data_ph": ph,
      "data_water_temp": suhuAir,
      "data_air_temp": suhuAir,
      "data_humidity": kelembapan
    };
  }

  @override
  String toString() {
    return 'Sensor{data_ppm: $ppm, data_ph: $ph, data_water_temp: $suhuAir, data_air_temp: $suhuUdara, data_humidity: $kelembapan}';
  }
}

List<Sensor> sensorFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Sensor>.from(data.map((item) => Sensor.fromJson(item)));
}

String sensorToJson(Sensor data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}
